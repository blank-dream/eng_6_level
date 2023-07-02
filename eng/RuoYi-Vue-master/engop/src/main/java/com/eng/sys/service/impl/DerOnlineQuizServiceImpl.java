package com.eng.sys.service.impl;

import java.util.List;

import com.eng.sys.domain.DerOnlineQuizDemo;
import com.eng.sys.mapper.DerOnlineQuizDemoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eng.sys.mapper.DerOnlineQuizMapper;
import com.eng.sys.domain.DerOnlineQuiz;
import com.eng.sys.service.IDerOnlineQuizService;

/**
 * 成绩查询Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
@Service
public class DerOnlineQuizServiceImpl implements IDerOnlineQuizService 
{
    @Autowired
    private DerOnlineQuizMapper derOnlineQuizMapper;


    /**
     * 查询成绩查询
     * 
     * @param answerId 成绩查询主键
     * @return 成绩查询
     */
    @Override
    public DerOnlineQuiz selectDerOnlineQuizByAnswerId(Long answerId)
    {
        return derOnlineQuizMapper.selectDerOnlineQuizByAnswerId(answerId);
    }

    /**
     * 查询成绩查询列表
     * 
     * @param derOnlineQuiz 成绩查询
     * @return 成绩查询
     */
    @Override
    public List<DerOnlineQuiz> selectDerOnlineQuizList(DerOnlineQuiz derOnlineQuiz)
    {
        return derOnlineQuizMapper.selectDerOnlineQuizList(derOnlineQuiz);
    }

    /**
     * 新增成绩查询
     * 
     * @param derOnlineQuiz 成绩查询
     * @return 结果
     */
    @Override
    public int insertDerOnlineQuiz(DerOnlineQuiz derOnlineQuiz)
    {
        return derOnlineQuizMapper.insertDerOnlineQuiz(derOnlineQuiz);
    }

    /**
     * 修改成绩查询
     * 
     * @param derOnlineQuiz 成绩查询
     * @return 结果
     */
    @Override
    public int updateDerOnlineQuiz(DerOnlineQuiz derOnlineQuiz)
    {
        return derOnlineQuizMapper.updateDerOnlineQuiz(derOnlineQuiz);
    }

    /**
     * 批量删除成绩查询
     * 
     * @param answerIds 需要删除的成绩查询主键
     * @return 结果
     */
    @Override
    public int deleteDerOnlineQuizByAnswerIds(Long[] answerIds)
    {
        return derOnlineQuizMapper.deleteDerOnlineQuizByAnswerIds(answerIds);
    }

    /**
     * 删除成绩查询信息
     * 
     * @param answerId 成绩查询主键
     * @return 结果
     */
    @Override
    public int deleteDerOnlineQuizByAnswerId(Long answerId)
    {
        return derOnlineQuizMapper.deleteDerOnlineQuizByAnswerId(answerId);
    }

    @Override
    public DerOnlineQuiz selectName(String title) {
        return derOnlineQuizMapper.selectName(title);
    }
}
