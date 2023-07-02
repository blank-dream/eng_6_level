package com.eng.sys.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.eng.sys.domain.DerOnlineQuiz;
import com.eng.sys.service.IDerOnlineQuizService;
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
import com.eng.sys.domain.DerOnlineQuizDemo;
import com.eng.sys.service.IDerOnlineQuizDemoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 线上答题Controller
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
@RestController
@RequestMapping("/sys/demo")
public class DerOnlineQuizDemoController extends BaseController
{
    @Autowired
    private IDerOnlineQuizDemoService derOnlineQuizDemoService;
    @Autowired
    private IDerOnlineQuizService derOnlineQuizService;

    /**
     * 查询线上答题列表
     */
    @PreAuthorize("@ss.hasPermi('sys:demo:list')")
    @GetMapping("/list")
    public TableDataInfo list(DerOnlineQuizDemo derOnlineQuizDemo)
    {
        startPage();
        List<DerOnlineQuizDemo> list = derOnlineQuizDemoService.selectDerOnlineQuizDemoList(derOnlineQuizDemo);
        return getDataTable(list);
    }

    /**
     * 导出线上答题列表
     */
    @PreAuthorize("@ss.hasPermi('sys:demo:export')")
    @Log(title = "线上答题", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DerOnlineQuizDemo derOnlineQuizDemo)
    {
        List<DerOnlineQuizDemo> list = derOnlineQuizDemoService.selectDerOnlineQuizDemoList(derOnlineQuizDemo);
        ExcelUtil<DerOnlineQuizDemo> util = new ExcelUtil<DerOnlineQuizDemo>(DerOnlineQuizDemo.class);
        util.exportExcel(response, list, "线上答题数据");
    }

    /**
     * 获取线上答题详细信息
     */
    @PreAuthorize("@ss.hasPermi('sys:demo:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(derOnlineQuizDemoService.selectDerOnlineQuizDemoById(id));
    }

    /**
     * 新增线上答题
     */
    @PreAuthorize("@ss.hasPermi('sys:demo:add')")
    @Log(title = "线上答题", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DerOnlineQuizDemo derOnlineQuizDemo)
    {
        return toAjax(derOnlineQuizDemoService.insertDerOnlineQuizDemo(derOnlineQuizDemo));
    }

    /**
     * 修改线上答题
     */
    @PreAuthorize("@ss.hasPermi('sys:demo:edit')")
    @Log(title = "线上答题", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DerOnlineQuizDemo derOnlineQuizDemo)
    {
        DerOnlineQuiz lin=new DerOnlineQuiz();
        lin.setAnswer(derOnlineQuizDemo.getAnswer());
        lin.setStudentName(derOnlineQuizDemo.getStudentName());
        lin.setAnswerId(derOnlineQuizDemo.getQuizId());
        derOnlineQuizService.updateDerOnlineQuiz(lin);
        return toAjax(derOnlineQuizDemoService.updateDerOnlineQuizDemo(derOnlineQuizDemo));
    }

    /**
     * 删除线上答题
     */
    @PreAuthorize("@ss.hasPermi('sys:demo:remove')")
    @Log(title = "线上答题", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(derOnlineQuizDemoService.deleteDerOnlineQuizDemoByIds(ids));
    }
}
