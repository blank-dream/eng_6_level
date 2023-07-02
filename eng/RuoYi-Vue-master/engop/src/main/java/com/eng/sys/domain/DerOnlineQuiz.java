package com.eng.sys.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 成绩查询对象 der_online_quiz
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
public class DerOnlineQuiz extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long answerId;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String studentName;

    /** 题目 */
    @Excel(name = "题目")
    private String title;

    /** 题型 */
    @Excel(name = "题型")
    private Integer questionType;

    /** 难度 */
    @Excel(name = "难度")
    private Integer difficulty;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** 标准答案 */
    @Excel(name = "标准答案")
    private String answerType;

    /** 解析 */
    @Excel(name = "解析")
    private String explanation;

    /** 考生答案 */
    @Excel(name = "考生答案")
    private String answer;

    /** 老师阅卷 */
    @Excel(name = "老师阅卷")
    private String gradedBy;

    /** 考试成绩 */
    @Excel(name = "考试成绩")
    private BigDecimal score;

    public void setAnswerId(Long answerId) 
    {
        this.answerId = answerId;
    }

    public Long getAnswerId() 
    {
        return answerId;
    }
    public void setStudentName(String studentName) 
    {
        this.studentName = studentName;
    }

    public String getStudentName() 
    {
        return studentName;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setQuestionType(Integer questionType) 
    {
        this.questionType = questionType;
    }

    public Integer getQuestionType() 
    {
        return questionType;
    }
    public void setDifficulty(Integer difficulty) 
    {
        this.difficulty = difficulty;
    }

    public Integer getDifficulty() 
    {
        return difficulty;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setAnswerType(String answerType) 
    {
        this.answerType = answerType;
    }

    public String getAnswerType() 
    {
        return answerType;
    }
    public void setExplanation(String explanation) 
    {
        this.explanation = explanation;
    }

    public String getExplanation() 
    {
        return explanation;
    }
    public void setAnswer(String answer) 
    {
        this.answer = answer;
    }

    public String getAnswer() 
    {
        return answer;
    }
    public void setGradedBy(String gradedBy) 
    {
        this.gradedBy = gradedBy;
    }

    public String getGradedBy() 
    {
        return gradedBy;
    }
    public void setScore(BigDecimal score) 
    {
        this.score = score;
    }

    public BigDecimal getScore() 
    {
        return score;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("answerId", getAnswerId())
            .append("studentName", getStudentName())
            .append("title", getTitle())
            .append("questionType", getQuestionType())
            .append("difficulty", getDifficulty())
            .append("content", getContent())
            .append("answerType", getAnswerType())
            .append("explanation", getExplanation())
            .append("answer", getAnswer())
            .append("gradedBy", getGradedBy())
            .append("score", getScore())
            .toString();
    }
}
