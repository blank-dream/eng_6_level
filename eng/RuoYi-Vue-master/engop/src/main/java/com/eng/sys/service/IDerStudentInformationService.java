package com.eng.sys.service;

import java.util.List;
import com.eng.sys.domain.DerStudentInformation;

/**
 * 学生信息Service接口
 * 
 * @author l
 * @date 2023-06-07
 */
public interface IDerStudentInformationService 
{
    /**
     * 查询学生信息
     * 
     * @param studentId 学生信息主键
     * @return 学生信息
     */
    public DerStudentInformation selectDerStudentInformationByStudentId(Long studentId);

    /**
     * 查询学生信息列表
     * 
     * @param derStudentInformation 学生信息
     * @return 学生信息集合
     */
    public List<DerStudentInformation> selectDerStudentInformationList(DerStudentInformation derStudentInformation);

    /**
     * 新增学生信息
     * 
     * @param derStudentInformation 学生信息
     * @return 结果
     */
    public int insertDerStudentInformation(DerStudentInformation derStudentInformation);

    /**
     * 修改学生信息
     * 
     * @param derStudentInformation 学生信息
     * @return 结果
     */
    public int updateDerStudentInformation(DerStudentInformation derStudentInformation);

    /**
     * 批量删除学生信息
     * 
     * @param studentIds 需要删除的学生信息主键集合
     * @return 结果
     */
    public int deleteDerStudentInformationByStudentIds(Long[] studentIds);

    /**
     * 删除学生信息信息
     * 
     * @param studentId 学生信息主键
     * @return 结果
     */
    public int deleteDerStudentInformationByStudentId(Long studentId);
}
