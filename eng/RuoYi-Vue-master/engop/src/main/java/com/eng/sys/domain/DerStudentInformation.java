package com.eng.sys.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学生信息对象 der_student_information
 * 
 * @author l
 * @date 2023-06-07
 */
public class DerStudentInformation extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long studentId;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 年龄 */
    @Excel(name = "年龄")
    private Long age;

    /** 性别 */
    @Excel(name = "性别")
    private Long gender;

    /** 出生日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "出生日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date dateOfBirth;

    /** 手机号码 */
    @Excel(name = "手机号码")
    private String phoneNumber;

    /** 电子邮件 */
    @Excel(name = "电子邮件")
    private String email;

    /** 地址 */
    @Excel(name = "地址")
    private String address;

    /** 入学日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "入学日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date dateOfAdmission;

    /** 班级 */
    @Excel(name = "班级")
    private String studentClass;

    public void setStudentId(Long studentId) 
    {
        this.studentId = studentId;
    }

    public Long getStudentId() 
    {
        return studentId;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setAge(Long age) 
    {
        this.age = age;
    }

    public Long getAge() 
    {
        return age;
    }
    public void setGender(Long gender) 
    {
        this.gender = gender;
    }

    public Long getGender() 
    {
        return gender;
    }
    public void setDateOfBirth(Date dateOfBirth) 
    {
        this.dateOfBirth = dateOfBirth;
    }

    public Date getDateOfBirth() 
    {
        return dateOfBirth;
    }
    public void setPhoneNumber(String phoneNumber) 
    {
        this.phoneNumber = phoneNumber;
    }

    public String getPhoneNumber() 
    {
        return phoneNumber;
    }
    public void setEmail(String email) 
    {
        this.email = email;
    }

    public String getEmail() 
    {
        return email;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setDateOfAdmission(Date dateOfAdmission) 
    {
        this.dateOfAdmission = dateOfAdmission;
    }

    public Date getDateOfAdmission() 
    {
        return dateOfAdmission;
    }
    public void setStudentClass(String studentClass) 
    {
        this.studentClass = studentClass;
    }

    public String getStudentClass() 
    {
        return studentClass;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("studentId", getStudentId())
            .append("name", getName())
            .append("age", getAge())
            .append("gender", getGender())
            .append("dateOfBirth", getDateOfBirth())
            .append("phoneNumber", getPhoneNumber())
            .append("email", getEmail())
            .append("address", getAddress())
            .append("dateOfAdmission", getDateOfAdmission())
            .append("studentClass", getStudentClass())
            .toString();
    }
}
