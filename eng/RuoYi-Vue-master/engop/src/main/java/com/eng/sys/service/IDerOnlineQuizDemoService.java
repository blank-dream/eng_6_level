package com.eng.sys.service;

import java.util.List;
import com.eng.sys.domain.DerOnlineQuizDemo;

/**
 * 线上答题Service接口
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
public interface IDerOnlineQuizDemoService 
{
    /**
     * 查询线上答题
     * 
     * @param id 线上答题主键
     * @return 线上答题
     */
    public DerOnlineQuizDemo selectDerOnlineQuizDemoById(Long id);

    /**
     * 查询线上答题列表
     * 
     * @param derOnlineQuizDemo 线上答题
     * @return 线上答题集合
     */
    public List<DerOnlineQuizDemo> selectDerOnlineQuizDemoList(DerOnlineQuizDemo derOnlineQuizDemo);

    /**
     * 新增线上答题
     * 
     * @param derOnlineQuizDemo 线上答题
     * @return 结果
     */
    public int insertDerOnlineQuizDemo(DerOnlineQuizDemo derOnlineQuizDemo);

    /**
     * 修改线上答题
     * 
     * @param derOnlineQuizDemo 线上答题
     * @return 结果
     */
    public int updateDerOnlineQuizDemo(DerOnlineQuizDemo derOnlineQuizDemo);

    /**
     * 批量删除线上答题
     * 
     * @param ids 需要删除的线上答题主键集合
     * @return 结果
     */
    public int deleteDerOnlineQuizDemoByIds(Long[] ids);

    /**
     * 删除线上答题信息
     * 
     * @param id 线上答题主键
     * @return 结果
     */
    public int deleteDerOnlineQuizDemoById(Long id);
}
