package com.eng.sys.mapper;

import java.util.List;
import com.eng.sys.domain.DerPayment;

/**
 * 缴费管理Mapper接口
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
public interface DerPaymentMapper 
{
    /**
     * 查询缴费管理
     * 
     * @param paymentId 缴费管理主键
     * @return 缴费管理
     */
    public DerPayment selectDerPaymentByPaymentId(Long paymentId);

    /**
     * 查询缴费管理列表
     * 
     * @param derPayment 缴费管理
     * @return 缴费管理集合
     */
    public List<DerPayment> selectDerPaymentList(DerPayment derPayment);

    /**
     * 新增缴费管理
     * 
     * @param derPayment 缴费管理
     * @return 结果
     */
    public int insertDerPayment(DerPayment derPayment);

    /**
     * 修改缴费管理
     * 
     * @param derPayment 缴费管理
     * @return 结果
     */
    public int updateDerPayment(DerPayment derPayment);

    /**
     * 删除缴费管理
     * 
     * @param paymentId 缴费管理主键
     * @return 结果
     */
    public int deleteDerPaymentByPaymentId(Long paymentId);

    /**
     * 批量删除缴费管理
     * 
     * @param paymentIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDerPaymentByPaymentIds(Long[] paymentIds);
}
