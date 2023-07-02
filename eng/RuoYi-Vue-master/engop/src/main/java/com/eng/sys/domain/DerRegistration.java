package com.eng.sys.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 报名管理对象 der_registration
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
public class DerRegistration extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long registrationId;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String studentName;

    /** 报名日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "报名日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date registrationDate;

    /** 报名课程 */
    @Excel(name = "报名课程")
    private String course;

    /** 报名费用 */
    @Excel(name = "报名费用")
    private BigDecimal registrationFee;

    /** 联系人姓名 */
    @Excel(name = "联系人姓名")
    private String contactPersonName;

    /** 联系人电话 */
    @Excel(name = "联系人电话")
    private String contactPersonPhone;

    /** 备注 */
    @Excel(name = "备注")
    private String remarks;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 专业id */
    @Excel(name = "专业id")
    private Long deptId;

    public void setRegistrationId(Long registrationId) 
    {
        this.registrationId = registrationId;
    }

    public Long getRegistrationId() 
    {
        return registrationId;
    }
    public void setStudentName(String studentName) 
    {
        this.studentName = studentName;
    }

    public String getStudentName() 
    {
        return studentName;
    }
    public void setRegistrationDate(Date registrationDate) 
    {
        this.registrationDate = registrationDate;
    }

    public Date getRegistrationDate() 
    {
        return registrationDate;
    }
    public void setCourse(String course) 
    {
        this.course = course;
    }

    public String getCourse() 
    {
        return course;
    }
    public void setRegistrationFee(BigDecimal registrationFee) 
    {
        this.registrationFee = registrationFee;
    }

    public BigDecimal getRegistrationFee() 
    {
        return registrationFee;
    }
    public void setContactPersonName(String contactPersonName) 
    {
        this.contactPersonName = contactPersonName;
    }

    public String getContactPersonName() 
    {
        return contactPersonName;
    }
    public void setContactPersonPhone(String contactPersonPhone) 
    {
        this.contactPersonPhone = contactPersonPhone;
    }

    public String getContactPersonPhone() 
    {
        return contactPersonPhone;
    }
    public void setRemarks(String remarks) 
    {
        this.remarks = remarks;
    }

    public String getRemarks() 
    {
        return remarks;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setDeptId(Long deptId) 
    {
        this.deptId = deptId;
    }

    public Long getDeptId() 
    {
        return deptId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("registrationId", getRegistrationId())
            .append("studentName", getStudentName())
            .append("registrationDate", getRegistrationDate())
            .append("course", getCourse())
            .append("registrationFee", getRegistrationFee())
            .append("contactPersonName", getContactPersonName())
            .append("contactPersonPhone", getContactPersonPhone())
            .append("remarks", getRemarks())
            .append("userId", getUserId())
            .append("deptId", getDeptId())
            .toString();
    }
}
