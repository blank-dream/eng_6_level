package com.eng.sys.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.eng.sys.domain.DerOnlineQuizDemo;
import com.eng.sys.service.IDerOnlineQuizDemoService;
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
import com.eng.sys.domain.DerOnlineQuiz;
import com.eng.sys.service.IDerOnlineQuizService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 成绩查询Controller
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
@RestController
@RequestMapping("/sys/quiz")
public class DerOnlineQuizController extends BaseController
{
    @Autowired
    private IDerOnlineQuizService derOnlineQuizService;

    @Autowired
    private IDerOnlineQuizDemoService derOnlineQuizDemoService;

    /**
     * 查询成绩查询列表
     */
    @PreAuthorize("@ss.hasPermi('sys:quiz:list')")
    @GetMapping("/list")
    public TableDataInfo list(DerOnlineQuiz derOnlineQuiz)
    {
        startPage();
        List<DerOnlineQuiz> list = derOnlineQuizService.selectDerOnlineQuizList(derOnlineQuiz);
        return getDataTable(list);
    }

    /**
     * 导出成绩查询列表
     */
    @PreAuthorize("@ss.hasPermi('sys:quiz:export')")
    @Log(title = "成绩查询", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DerOnlineQuiz derOnlineQuiz)
    {
        List<DerOnlineQuiz> list = derOnlineQuizService.selectDerOnlineQuizList(derOnlineQuiz);
        ExcelUtil<DerOnlineQuiz> util = new ExcelUtil<DerOnlineQuiz>(DerOnlineQuiz.class);
        util.exportExcel(response, list, "成绩查询数据");
    }

    /**
     * 获取成绩查询详细信息
     */
    @PreAuthorize("@ss.hasPermi('sys:quiz:query')")
    @GetMapping(value = "/{answerId}")
    public AjaxResult getInfo(@PathVariable("answerId") Long answerId)
    {
        return success(derOnlineQuizService.selectDerOnlineQuizByAnswerId(answerId));
    }

    /**
     * 新增成绩查询
     */
    @PreAuthorize("@ss.hasPermi('sys:quiz:add')")
    @Log(title = "成绩查询", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DerOnlineQuiz derOnlineQuiz)
    {

        return toAjax(derOnlineQuizService.insertDerOnlineQuiz(derOnlineQuiz));
    }

    /**
     * 修改成绩查询
     */
    @PreAuthorize("@ss.hasPermi('sys:quiz:edit')")
    @Log(title = "成绩查询", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DerOnlineQuiz derOnlineQuiz)
    {
        return toAjax(derOnlineQuizService.updateDerOnlineQuiz(derOnlineQuiz));
    }

    /**
     * 删除成绩查询
     */
    @PreAuthorize("@ss.hasPermi('sys:quiz:remove')")
    @Log(title = "成绩查询", businessType = BusinessType.DELETE)
	@DeleteMapping("/{answerIds}")
    public AjaxResult remove(@PathVariable Long[] answerIds)
    {
        return toAjax(derOnlineQuizService.deleteDerOnlineQuizByAnswerIds(answerIds));
    }
}
