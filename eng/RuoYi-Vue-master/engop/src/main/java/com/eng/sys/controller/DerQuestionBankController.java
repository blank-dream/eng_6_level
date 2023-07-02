package com.eng.sys.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.eng.sys.domain.DerOnlineQuiz;
import com.eng.sys.domain.DerOnlineQuizDemo;
import com.eng.sys.service.IDerOnlineQuizDemoService;
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
import com.eng.sys.domain.DerQuestionBank;
import com.eng.sys.service.IDerQuestionBankService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 试题录入Controller
 *
 * @author l
 * @date 2023-06-07
 */
@RestController
@RequestMapping("/sys/bank")
public class DerQuestionBankController extends BaseController {
    @Autowired
    private IDerQuestionBankService derQuestionBankService;

    @Autowired
    private IDerOnlineQuizDemoService derOnlineQuizDemoService;

    @Autowired
    private IDerOnlineQuizService derOnlineQuizService;

    /**
     * 查询试题录入列表
     */
    @PreAuthorize("@ss.hasPermi('sys:bank:list')")
    @GetMapping("/list")
    public TableDataInfo list(DerQuestionBank derQuestionBank) {
        startPage();
        List<DerQuestionBank> list = derQuestionBankService.selectDerQuestionBankList(derQuestionBank);
        return getDataTable(list);
    }

    /**
     * 导出试题录入列表
     */
    @PreAuthorize("@ss.hasPermi('sys:bank:export')")
    @Log(title = "试题录入", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DerQuestionBank derQuestionBank) {
        List<DerQuestionBank> list = derQuestionBankService.selectDerQuestionBankList(derQuestionBank);
        ExcelUtil<DerQuestionBank> util = new ExcelUtil<DerQuestionBank>(DerQuestionBank.class);
        util.exportExcel(response, list, "试题录入数据");
    }

    /**
     * 获取试题录入详细信息
     */
    @PreAuthorize("@ss.hasPermi('sys:bank:query')")
    @GetMapping(value = "/{questionId}")
    public AjaxResult getInfo(@PathVariable("questionId") Long questionId) {
        return success(derQuestionBankService.selectDerQuestionBankByQuestionId(questionId));
    }

    /**
     * 新增试题录入
     */
    @PreAuthorize("@ss.hasPermi('sys:bank:add')")
    @Log(title = "试题录入", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DerQuestionBank derQuestionBank) {
        DerOnlineQuiz lin = new DerOnlineQuiz();
        lin.setTitle(derQuestionBank.getTitle());
        lin.setQuestionType(derQuestionBank.getQuestionType());
        lin.setDifficulty(derQuestionBank.getDifficulty());
        lin.setContent(derQuestionBank.getContent());
        lin.setAnswerType(derQuestionBank.getAnswer());
        lin.setExplanation(derQuestionBank.getExplanation());
        derOnlineQuizService.insertDerOnlineQuiz(lin);

        DerOnlineQuiz derOnlineQuiz = derOnlineQuizService.selectName(derQuestionBank.getTitle());

        DerOnlineQuizDemo de = new DerOnlineQuizDemo();
        de.setQuizId(derOnlineQuiz.getAnswerId());
        de.setTitle(derQuestionBank.getTitle());
        de.setQuestionType(derQuestionBank.getQuestionType());
        de.setContent(derQuestionBank.getContent());
        derOnlineQuizDemoService.insertDerOnlineQuizDemo(de);
        return toAjax(derQuestionBankService.insertDerQuestionBank(derQuestionBank));
    }

    /**
     * 修改试题录入
     */
    @PreAuthorize("@ss.hasPermi('sys:bank:edit')")
    @Log(title = "试题录入", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DerQuestionBank derQuestionBank) {
        return toAjax(derQuestionBankService.updateDerQuestionBank(derQuestionBank));
    }

    /**
     * 删除试题录入
     */
    @PreAuthorize("@ss.hasPermi('sys:bank:remove')")
    @Log(title = "试题录入", businessType = BusinessType.DELETE)
    @DeleteMapping("/{questionIds}")
    public AjaxResult remove(@PathVariable Long[] questionIds) {
        return toAjax(derQuestionBankService.deleteDerQuestionBankByQuestionIds(questionIds));
    }
}
