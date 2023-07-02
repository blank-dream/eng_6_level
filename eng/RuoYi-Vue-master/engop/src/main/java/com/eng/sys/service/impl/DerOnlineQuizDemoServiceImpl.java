package com.eng.sys.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eng.sys.mapper.DerOnlineQuizDemoMapper;
import com.eng.sys.domain.DerOnlineQuizDemo;
import com.eng.sys.service.IDerOnlineQuizDemoService;

/**
 * 线上答题Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-06-07
 */
@Service
public class DerOnlineQuizDemoServiceImpl implements IDerOnlineQuizDemoService 
{
    @Autowired
    private DerOnlineQuizDemoMapper derOnlineQuizDemoMapper;

    /**
     * 查询线上答题
     * 
     * @param id 线上答题主键
     * @return 线上答题
     */
    @Override
    public DerOnlineQuizDemo selectDerOnlineQuizDemoById(Long id)
    {
        return derOnlineQuizDemoMapper.selectDerOnlineQuizDemoById(id);
    }

    /**
     * 查询线上答题列表
     * 
     * @param derOnlineQuizDemo 线上答题
     * @return 线上答题
     */
    @Override
    public List<DerOnlineQuizDemo> selectDerOnlineQuizDemoList(DerOnlineQuizDemo derOnlineQuizDemo)
    {
        return derOnlineQuizDemoMapper.selectDerOnlineQuizDemoList(derOnlineQuizDemo);
    }

    /**
     * 新增线上答题
     * 
     * @param derOnlineQuizDemo 线上答题
     * @return 结果
     */
    @Override
    public int insertDerOnlineQuizDemo(DerOnlineQuizDemo derOnlineQuizDemo)
    {
        return derOnlineQuizDemoMapper.insertDerOnlineQuizDemo(derOnlineQuizDemo);
    }

    /**
     * 修改线上答题
     * 
     * @param derOnlineQuizDemo 线上答题
     * @return 结果
     */
    @Override
    public int updateDerOnlineQuizDemo(DerOnlineQuizDemo derOnlineQuizDemo)
    {
        return derOnlineQuizDemoMapper.updateDerOnlineQuizDemo(derOnlineQuizDemo);
    }

    /**
     * 批量删除线上答题
     * 
     * @param ids 需要删除的线上答题主键
     * @return 结果
     */
    @Override
    public int deleteDerOnlineQuizDemoByIds(Long[] ids)
    {
        return derOnlineQuizDemoMapper.deleteDerOnlineQuizDemoByIds(ids);
    }

    /**
     * 删除线上答题信息
     * 
     * @param id 线上答题主键
     * @return 结果
     */
    @Override
    public int deleteDerOnlineQuizDemoById(Long id)
    {
        return derOnlineQuizDemoMapper.deleteDerOnlineQuizDemoById(id);
    }
}
