package com.eng.sys.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 缴费管理对象 der_payment
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
public class DerPayment extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long paymentId;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String studentName;

    /** 缴费日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "缴费日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date paymentDate;

    /** 缴费金额 */
    @Excel(name = "缴费金额")
    private BigDecimal paymentAmount;

    /** 支付方式 */
    @Excel(name = "支付方式")
    private Long paymentMethod;

    /** 支付状态 */
    @Excel(name = "支付状态")
    private Long paymentStatus;

    /** 备注 */
    @Excel(name = "备注")
    private String remarks;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 专业id */
    @Excel(name = "专业id")
    private Long deptId;

    public void setPaymentId(Long paymentId) 
    {
        this.paymentId = paymentId;
    }

    public Long getPaymentId() 
    {
        return paymentId;
    }
    public void setStudentName(String studentName) 
    {
        this.studentName = studentName;
    }

    public String getStudentName() 
    {
        return studentName;
    }
    public void setPaymentDate(Date paymentDate) 
    {
        this.paymentDate = paymentDate;
    }

    public Date getPaymentDate() 
    {
        return paymentDate;
    }
    public void setPaymentAmount(BigDecimal paymentAmount) 
    {
        this.paymentAmount = paymentAmount;
    }

    public BigDecimal getPaymentAmount() 
    {
        return paymentAmount;
    }
    public void setPaymentMethod(Long paymentMethod) 
    {
        this.paymentMethod = paymentMethod;
    }

    public Long getPaymentMethod() 
    {
        return paymentMethod;
    }
    public void setPaymentStatus(Long paymentStatus) 
    {
        this.paymentStatus = paymentStatus;
    }

    public Long getPaymentStatus() 
    {
        return paymentStatus;
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
            .append("paymentId", getPaymentId())
            .append("studentName", getStudentName())
            .append("paymentDate", getPaymentDate())
            .append("paymentAmount", getPaymentAmount())
            .append("paymentMethod", getPaymentMethod())
            .append("paymentStatus", getPaymentStatus())
            .append("remarks", getRemarks())
            .append("userId", getUserId())
            .append("deptId", getDeptId())
            .toString();
    }
}
