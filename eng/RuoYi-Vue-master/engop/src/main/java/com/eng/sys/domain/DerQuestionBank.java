package com.eng.sys.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 试题录入对象 der_question_bank
 * 
 * @author l
 * @date 2023-06-07
 */
public class DerQuestionBank extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long questionId;

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
    private String answer;

    /** 解析 */
    @Excel(name = "解析")
    private String explanation;

    /** 创建日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date creationDate;

    /** 创建人 */
    @Excel(name = "创建人")
    private String createdBy;

    public void setQuestionId(Long questionId) 
    {
        this.questionId = questionId;
    }

    public Long getQuestionId() 
    {
        return questionId;
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
    public void setAnswer(String answer) 
    {
        this.answer = answer;
    }

    public String getAnswer() 
    {
        return answer;
    }
    public void setExplanation(String explanation) 
    {
        this.explanation = explanation;
    }

    public String getExplanation() 
    {
        return explanation;
    }
    public void setCreationDate(Date creationDate) 
    {
        this.creationDate = creationDate;
    }

    public Date getCreationDate() 
    {
        return creationDate;
    }
    public void setCreatedBy(String createdBy) 
    {
        this.createdBy = createdBy;
    }

    public String getCreatedBy() 
    {
        return createdBy;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("questionId", getQuestionId())
            .append("title", getTitle())
            .append("questionType", getQuestionType())
            .append("difficulty", getDifficulty())
            .append("content", getContent())
            .append("answer", getAnswer())
            .append("explanation", getExplanation())
            .append("creationDate", getCreationDate())
            .append("createdBy", getCreatedBy())
            .toString();
    }
}
