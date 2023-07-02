package com.eng.sys.service;

import java.util.List;
import com.eng.sys.domain.DerOnlineQuiz;

/**
 * 成绩查询Service接口
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
public interface IDerOnlineQuizService 
{
    /**
     * 查询成绩查询
     * 
     * @param answerId 成绩查询主键
     * @return 成绩查询
     */
    public DerOnlineQuiz selectDerOnlineQuizByAnswerId(Long answerId);

    /**
     * 查询成绩查询列表
     * 
     * @param derOnlineQuiz 成绩查询
     * @return 成绩查询集合
     */
    public List<DerOnlineQuiz> selectDerOnlineQuizList(DerOnlineQuiz derOnlineQuiz);

    /**
     * 新增成绩查询
     * 
     * @param derOnlineQuiz 成绩查询
     * @return 结果
     */
    public int insertDerOnlineQuiz(DerOnlineQuiz derOnlineQuiz);

    /**
     * 修改成绩查询
     * 
     * @param derOnlineQuiz 成绩查询
     * @return 结果
     */
    public int updateDerOnlineQuiz(DerOnlineQuiz derOnlineQuiz);

    /**
     * 批量删除成绩查询
     * 
     * @param answerIds 需要删除的成绩查询主键集合
     * @return 结果
     */
    public int deleteDerOnlineQuizByAnswerIds(Long[] answerIds);

    /**
     * 删除成绩查询信息
     * 
     * @param answerId 成绩查询主键
     * @return 结果
     */
    public int deleteDerOnlineQuizByAnswerId(Long answerId);

    public DerOnlineQuiz selectName(String title);
}
