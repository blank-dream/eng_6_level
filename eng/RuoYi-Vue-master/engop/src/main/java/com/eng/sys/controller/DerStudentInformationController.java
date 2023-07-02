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
import com.eng.sys.domain.DerStudentInformation;
import com.eng.sys.service.IDerStudentInformationService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 学生信息Controller
 * 
 * @author l
 * @date 2023-06-07
 */
@RestController
@RequestMapping("/sys/information")
public class DerStudentInformationController extends BaseController
{
    @Autowired
    private IDerStudentInformationService derStudentInformationService;

    /**
     * 查询学生信息列表
     */
    @PreAuthorize("@ss.hasPermi('sys:information:list')")
    @GetMapping("/list")
    public TableDataInfo list(DerStudentInformation derStudentInformation)
    {
        startPage();
        List<DerStudentInformation> list = derStudentInformationService.selectDerStudentInformationList(derStudentInformation);
        return getDataTable(list);
    }

    /**
     * 导出学生信息列表
     */
    @PreAuthorize("@ss.hasPermi('sys:information:export')")
    @Log(title = "学生信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DerStudentInformation derStudentInformation)
    {
        List<DerStudentInformation> list = derStudentInformationService.selectDerStudentInformationList(derStudentInformation);
        ExcelUtil<DerStudentInformation> util = new ExcelUtil<DerStudentInformation>(DerStudentInformation.class);
        util.exportExcel(response, list, "学生信息数据");
    }

    /**
     * 获取学生信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('sys:information:query')")
    @GetMapping(value = "/{studentId}")
    public AjaxResult getInfo(@PathVariable("studentId") Long studentId)
    {
        return success(derStudentInformationService.selectDerStudentInformationByStudentId(studentId));
    }

    /**
     * 新增学生信息
     */
    @PreAuthorize("@ss.hasPermi('sys:information:add')")
    @Log(title = "学生信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DerStudentInformation derStudentInformation)
    {
        return toAjax(derStudentInformationService.insertDerStudentInformation(derStudentInformation));
    }

    /**
     * 修改学生信息
     */
    @PreAuthorize("@ss.hasPermi('sys:information:edit')")
    @Log(title = "学生信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DerStudentInformation derStudentInformation)
    {
        return toAjax(derStudentInformationService.updateDerStudentInformation(derStudentInformation));
    }

    /**
     * 删除学生信息
     */
    @PreAuthorize("@ss.hasPermi('sys:information:remove')")
    @Log(title = "学生信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{studentIds}")
    public AjaxResult remove(@PathVariable Long[] studentIds)
    {
        return toAjax(derStudentInformationService.deleteDerStudentInformationByStudentIds(studentIds));
    }
}
