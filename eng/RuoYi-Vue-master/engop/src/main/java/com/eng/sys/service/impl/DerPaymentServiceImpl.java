package com.eng.sys.service.impl;

import java.util.List;

import com.ruoyi.common.annotation.DataScope;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eng.sys.mapper.DerPaymentMapper;
import com.eng.sys.domain.DerPayment;
import com.eng.sys.service.IDerPaymentService;

/**
 * 缴费管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
@Service
public class DerPaymentServiceImpl implements IDerPaymentService 
{
    @Autowired
    private DerPaymentMapper derPaymentMapper;

    /**
     * 查询缴费管理
     * 
     * @param paymentId 缴费管理主键
     * @return 缴费管理
     */
    @Override
    public DerPayment selectDerPaymentByPaymentId(Long paymentId)
    {
        return derPaymentMapper.selectDerPaymentByPaymentId(paymentId);
    }

    /**
     * 查询缴费管理列表
     * 
     * @param derPayment 缴费管理
     * @return 缴费管理
     */
    @Override
    @DataScope(deptAlias = "resu", userAlias = "resu")
    public List<DerPayment> selectDerPaymentList(DerPayment derPayment)
    {
        return derPaymentMapper.selectDerPaymentList(derPayment);
    }

    /**
     * 新增缴费管理
     * 
     * @param derPayment 缴费管理
     * @return 结果
     */
    @Override
    public int insertDerPayment(DerPayment derPayment)
    {
        return derPaymentMapper.insertDerPayment(derPayment);
    }

    /**
     * 修改缴费管理
     * 
     * @param derPayment 缴费管理
     * @return 结果
     */
    @Override
    public int updateDerPayment(DerPayment derPayment)
    {
        return derPaymentMapper.updateDerPayment(derPayment);
    }

    /**
     * 批量删除缴费管理
     * 
     * @param paymentIds 需要删除的缴费管理主键
     * @return 结果
     */
    @Override
    public int deleteDerPaymentByPaymentIds(Long[] paymentIds)
    {
        return derPaymentMapper.deleteDerPaymentByPaymentIds(paymentIds);
    }

    /**
     * 删除缴费管理信息
     * 
     * @param paymentId 缴费管理主键
     * @return 结果
     */
    @Override
    public int deleteDerPaymentByPaymentId(Long paymentId)
    {
        return derPaymentMapper.deleteDerPaymentByPaymentId(paymentId);
    }
}
