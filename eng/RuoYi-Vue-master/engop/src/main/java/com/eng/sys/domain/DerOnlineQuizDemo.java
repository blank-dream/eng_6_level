package com.eng.sys.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 线上答题对象 der_online_quiz_demo
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
public class DerOnlineQuizDemo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String studentName;

    /** 题目 */
    @Excel(name = "题目")
    private String title;

    /** 题型 */
    @Excel(name = "题型")
    private Integer questionType;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** 答案 */
    @Excel(name = "答案")
    private String answer;

    /** 考试id */
    @Excel(name = "考试id")
    private Long quizId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
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
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setAnswer(String answer) 
    {
        this.answer = answer;
    }

    public String getAnswer() 
    {
        return answer;
    }
    public void setQuizId(Long quizId) 
    {
        this.quizId = quizId;
    }

    public Long getQuizId() 
    {
        return quizId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("studentName", getStudentName())
            .append("title", getTitle())
            .append("questionType", getQuestionType())
            .append("content", getContent())
            .append("answer", getAnswer())
            .append("quizId", getQuizId())
            .toString();
    }
}
