package com.eng.sys.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eng.sys.mapper.DerQuestionBankMapper;
import com.eng.sys.domain.DerQuestionBank;
import com.eng.sys.service.IDerQuestionBankService;

/**
 * 试题录入Service业务层处理
 * 
 * @author l
 * @date 2023-06-07
 */
@Service
public class DerQuestionBankServiceImpl implements IDerQuestionBankService 
{
    @Autowired
    private DerQuestionBankMapper derQuestionBankMapper;

    /**
     * 查询试题录入
     * 
     * @param questionId 试题录入主键
     * @return 试题录入
     */
    @Override
    public DerQuestionBank selectDerQuestionBankByQuestionId(Long questionId)
    {
        return derQuestionBankMapper.selectDerQuestionBankByQuestionId(questionId);
    }

    /**
     * 查询试题录入列表
     * 
     * @param derQuestionBank 试题录入
     * @return 试题录入
     */
    @Override
    public List<DerQuestionBank> selectDerQuestionBankList(DerQuestionBank derQuestionBank)
    {
        return derQuestionBankMapper.selectDerQuestionBankList(derQuestionBank);
    }

    /**
     * 新增试题录入
     * 
     * @param derQuestionBank 试题录入
     * @return 结果
     */
    @Override
    public int insertDerQuestionBank(DerQuestionBank derQuestionBank)
    {
        return derQuestionBankMapper.insertDerQuestionBank(derQuestionBank);
    }

    /**
     * 修改试题录入
     * 
     * @param derQuestionBank 试题录入
     * @return 结果
     */
    @Override
    public int updateDerQuestionBank(DerQuestionBank derQuestionBank)
    {
        return derQuestionBankMapper.updateDerQuestionBank(derQuestionBank);
    }

    /**
     * 批量删除试题录入
     * 
     * @param questionIds 需要删除的试题录入主键
     * @return 结果
     */
    @Override
    public int deleteDerQuestionBankByQuestionIds(Long[] questionIds)
    {
        return derQuestionBankMapper.deleteDerQuestionBankByQuestionIds(questionIds);
    }

    /**
     * 删除试题录入信息
     * 
     * @param questionId 试题录入主键
     * @return 结果
     */
    @Override
    public int deleteDerQuestionBankByQuestionId(Long questionId)
    {
        return derQuestionBankMapper.deleteDerQuestionBankByQuestionId(questionId);
    }
}
