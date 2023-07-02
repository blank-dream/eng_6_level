package com.eng.sys.mapper;

import java.util.List;
import com.eng.sys.domain.DerRegistration;

/**
 * 报名管理Mapper接口
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
public interface DerRegistrationMapper 
{
    /**
     * 查询报名管理
     * 
     * @param registrationId 报名管理主键
     * @return 报名管理
     */
    public DerRegistration selectDerRegistrationByRegistrationId(Long registrationId);

    /**
     * 查询报名管理列表
     * 
     * @param derRegistration 报名管理
     * @return 报名管理集合
     */
    public List<DerRegistration> selectDerRegistrationList(DerRegistration derRegistration);

    /**
     * 新增报名管理
     * 
     * @param derRegistration 报名管理
     * @return 结果
     */
    public int insertDerRegistration(DerRegistration derRegistration);

    /**
     * 修改报名管理
     * 
     * @param derRegistration 报名管理
     * @return 结果
     */
    public int updateDerRegistration(DerRegistration derRegistration);

    /**
     * 删除报名管理
     * 
     * @param registrationId 报名管理主键
     * @return 结果
     */
    public int deleteDerRegistrationByRegistrationId(Long registrationId);

    /**
     * 批量删除报名管理
     * 
     * @param registrationIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDerRegistrationByRegistrationIds(Long[] registrationIds);
}
