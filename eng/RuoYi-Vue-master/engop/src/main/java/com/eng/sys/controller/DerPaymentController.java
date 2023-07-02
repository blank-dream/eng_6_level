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
import com.eng.sys.domain.DerPayment;
import com.eng.sys.service.IDerPaymentService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 缴费管理Controller
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
@RestController
@RequestMapping("/sys/payment")
public class DerPaymentController extends BaseController
{
    @Autowired
    private IDerPaymentService derPaymentService;

    /**
     * 查询缴费管理列表
     */
    @PreAuthorize("@ss.hasPermi('sys:payment:list')")
    @GetMapping("/list")
    public TableDataInfo list(DerPayment derPayment)
    {
        startPage();
        List<DerPayment> list = derPaymentService.selectDerPaymentList(derPayment);
        return getDataTable(list);
    }

    /**
     * 导出缴费管理列表
     */
    @PreAuthorize("@ss.hasPermi('sys:payment:export')")
    @Log(title = "缴费管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DerPayment derPayment)
    {
        List<DerPayment> list = derPaymentService.selectDerPaymentList(derPayment);
        ExcelUtil<DerPayment> util = new ExcelUtil<DerPayment>(DerPayment.class);
        util.exportExcel(response, list, "缴费管理数据");
    }

    /**
     * 获取缴费管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('sys:payment:query')")
    @GetMapping(value = "/{paymentId}")
    public AjaxResult getInfo(@PathVariable("paymentId") Long paymentId)
    {
        return success(derPaymentService.selectDerPaymentByPaymentId(paymentId));
    }

    /**
     * 新增缴费管理
     */
    @PreAuthorize("@ss.hasPermi('sys:payment:add')")
    @Log(title = "缴费管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DerPayment derPayment)
    {
        derPayment.setDeptId(getDeptId());
        derPayment.setUserId(getUserId());
        return toAjax(derPaymentService.insertDerPayment(derPayment));
    }

    /**
     * 修改缴费管理
     */
    @PreAuthorize("@ss.hasPermi('sys:payment:edit')")
    @Log(title = "缴费管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DerPayment derPayment)
    {
        return toAjax(derPaymentService.updateDerPayment(derPayment));
    }

    /**
     * 删除缴费管理
     */
    @PreAuthorize("@ss.hasPermi('sys:payment:remove')")
    @Log(title = "缴费管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{paymentIds}")
    public AjaxResult remove(@PathVariable Long[] paymentIds)
    {
        return toAjax(derPaymentService.deleteDerPaymentByPaymentIds(paymentIds));
    }
}
