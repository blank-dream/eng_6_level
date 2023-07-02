package com.eng.sys.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.eng.sys.domain.DerRegistration;
import com.eng.sys.service.IDerRegistrationService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 报名管理Controller
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
@RestController
@RequestMapping("/sys/registration")
public class DerRegistrationController extends BaseController
{
    @Autowired
    private IDerRegistrationService derRegistrationService;

    /**
     * 查询报名管理列表
     */
    @PreAuthorize("@ss.hasPermi('sys:registration:list')")
    @GetMapping("/list")
    public TableDataInfo list(DerRegistration derRegistration)
    {
        startPage();
        List<DerRegistration> list = derRegistrationService.selectDerRegistrationList(derRegistration);
        return getDataTable(list);
    }

    /**
     * 导出报名管理列表
     */
    @PreAuthorize("@ss.hasPermi('sys:registration:export')")
    @Log(title = "报名管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DerRegistration derRegistration)
    {
        List<DerRegistration> list = derRegistrationService.selectDerRegistrationList(derRegistration);
        ExcelUtil<DerRegistration> util = new ExcelUtil<DerRegistration>(DerRegistration.class);
        util.exportExcel(response, list, "报名管理数据");
    }

    /**
     * 获取报名管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('sys:registration:query')")
    @GetMapping(value = "/{registrationId}")
    public AjaxResult getInfo(@PathVariable("registrationId") Long registrationId)
    {
        return success(derRegistrationService.selectDerRegistrationByRegistrationId(registrationId));
    }

    /**
     * 新增报名管理
     */
    @PreAuthorize("@ss.hasPermi('sys:registration:add')")
    @Log(title = "报名管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DerRegistration derRegistration)
    {
        derRegistration.setDeptId(getDeptId());
        derRegistration.setUserId(getUserId());
        return toAjax(derRegistrationService.insertDerRegistration(derRegistration));
    }

    /**
     * 修改报名管理
     */
    @PreAuthorize("@ss.hasPermi('sys:registration:edit')")
    @Log(title = "报名管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DerRegistration derRegistration)
    {
        return toAjax(derRegistrationService.updateDerRegistration(derRegistration));
    }

    /**
     * 删除报名管理
     */
    @PreAuthorize("@ss.hasPermi('sys:registration:remove')")
    @Log(title = "报名管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{registrationIds}")
    public AjaxResult remove(@PathVariable Long[] registrationIds)
    {
        return toAjax(derRegistrationService.deleteDerRegistrationByRegistrationIds(registrationIds));
    }
}
