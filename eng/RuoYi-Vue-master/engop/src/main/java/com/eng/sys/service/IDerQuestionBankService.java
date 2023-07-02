package com.eng.sys.service;

import java.util.List;
import com.eng.sys.domain.DerQuestionBank;

/**
 * 试题录入Service接口
 * 
 * @author l
 * @date 2023-06-07
 */
public interface IDerQuestionBankService 
{
    /**
     * 查询试题录入
     * 
     * @param questionId 试题录入主键
     * @return 试题录入
     */
    public DerQuestionBank selectDerQuestionBankByQuestionId(Long questionId);

    /**
     * 查询试题录入列表
     * 
     * @param derQuestionBank 试题录入
     * @return 试题录入集合
     */
    public List<DerQuestionBank> selectDerQuestionBankList(DerQuestionBank derQuestionBank);

    /**
     * 新增试题录入
     * 
     * @param derQuestionBank 试题录入
     * @return 结果
     */
    public int insertDerQuestionBank(DerQuestionBank derQuestionBank);

    /**
     * 修改试题录入
     * 
     * @param derQuestionBank 试题录入
     * @return 结果
     */
    public int updateDerQuestionBank(DerQuestionBank derQuestionBank);

    /**
     * 批量删除试题录入
     * 
     * @param questionIds 需要删除的试题录入主键集合
     * @return 结果
     */
    public int deleteDerQuestionBankByQuestionIds(Long[] questionIds);

    /**
     * 删除试题录入信息
     * 
     * @param questionId 试题录入主键
     * @return 结果
     */
    public int deleteDerQuestionBankByQuestionId(Long questionId);
}
