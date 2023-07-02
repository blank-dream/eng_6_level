package com.eng.sys.service.impl;

import java.util.List;

import com.ruoyi.common.annotation.DataScope;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eng.sys.mapper.DerRegistrationMapper;
import com.eng.sys.domain.DerRegistration;
import com.eng.sys.service.IDerRegistrationService;

/**
 * 报名管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
@Service
public class DerRegistrationServiceImpl implements IDerRegistrationService 
{
    @Autowired
    private DerRegistrationMapper derRegistrationMapper;

    /**
     * 查询报名管理
     * 
     * @param registrationId 报名管理主键
     * @return 报名管理
     */
    @Override
    public DerRegistration selectDerRegistrationByRegistrationId(Long registrationId)
    {
        return derRegistrationMapper.selectDerRegistrationByRegistrationId(registrationId);
    }

    /**
     * 查询报名管理列表
     * 
     * @param derRegistration 报名管理
     * @return 报名管理
     */
    @Override
    @DataScope(deptAlias = "resu", userAlias = "resu")
    public List<DerRegistration> selectDerRegistrationList(DerRegistration derRegistration)
    {
        return derRegistrationMapper.selectDerRegistrationList(derRegistration);
    }

    /**
     * 新增报名管理
     * 
     * @param derRegistration 报名管理
     * @return 结果
     */
    @Override
    public int insertDerRegistration(DerRegistration derRegistration)
    {
        return derRegistrationMapper.insertDerRegistration(derRegistration);
    }

    /**
     * 修改报名管理
     * 
     * @param derRegistration 报名管理
     * @return 结果
     */
    @Override
    public int updateDerRegistration(DerRegistration derRegistration)
    {
        return derRegistrationMapper.updateDerRegistration(derRegistration);
    }

    /**
     * 批量删除报名管理
     * 
     * @param registrationIds 需要删除的报名管理主键
     * @return 结果
     */
    @Override
    public int deleteDerRegistrationByRegistrationIds(Long[] registrationIds)
    {
        return derRegistrationMapper.deleteDerRegistrationByRegistrationIds(registrationIds);
    }

    /**
     * 删除报名管理信息
     * 
     * @param registrationId 报名管理主键
     * @return 结果
     */
    @Override
    public int deleteDerRegistrationByRegistrationId(Long registrationId)
    {
        return derRegistrationMapper.deleteDerRegistrationByRegistrationId(registrationId);
    }
}
