package com.eng.sys.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eng.sys.mapper.DerStudentInformationMapper;
import com.eng.sys.domain.DerStudentInformation;
import com.eng.sys.service.IDerStudentInformationService;

/**
 * 学生信息Service业务层处理
 * 
 * @author l
 * @date 2023-06-07
 */
@Service
public class DerStudentInformationServiceImpl implements IDerStudentInformationService 
{
    @Autowired
    private DerStudentInformationMapper derStudentInformationMapper;

    /**
     * 查询学生信息
     * 
     * @param studentId 学生信息主键
     * @return 学生信息
     */
    @Override
    public DerStudentInformation selectDerStudentInformationByStudentId(Long studentId)
    {
        return derStudentInformationMapper.selectDerStudentInformationByStudentId(studentId);
    }

    /**
     * 查询学生信息列表
     * 
     * @param derStudentInformation 学生信息
     * @return 学生信息
     */
    @Override
    public List<DerStudentInformation> selectDerStudentInformationList(DerStudentInformation derStudentInformation)
    {
        return derStudentInformationMapper.selectDerStudentInformationList(derStudentInformation);
    }

    /**
     * 新增学生信息
     * 
     * @param derStudentInformation 学生信息
     * @return 结果
     */
    @Override
    public int insertDerStudentInformation(DerStudentInformation derStudentInformation)
    {
        return derStudentInformationMapper.insertDerStudentInformation(derStudentInformation);
    }

    /**
     * 修改学生信息
     * 
     * @param derStudentInformation 学生信息
     * @return 结果
     */
    @Override
    public int updateDerStudentInformation(DerStudentInformation derStudentInformation)
    {
        return derStudentInformationMapper.updateDerStudentInformation(derStudentInformation);
    }

    /**
     * 批量删除学生信息
     * 
     * @param studentIds 需要删除的学生信息主键
     * @return 结果
     */
    @Override
    public int deleteDerStudentInformationByStudentIds(Long[] studentIds)
    {
        return derStudentInformationMapper.deleteDerStudentInformationByStudentIds(studentIds);
    }

    /**
     * 删除学生信息信息
     * 
     * @param studentId 学生信息主键
     * @return 结果
     */
    @Override
    public int deleteDerStudentInformationByStudentId(Long studentId)
    {
        return derStudentInformationMapper.deleteDerStudentInformationByStudentId(studentId);
    }
}
