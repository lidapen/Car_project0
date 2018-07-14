package com.ldp.Carproject.dao;

import com.ldp.Carproject.pojo.Commodity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommodityMapper {
    /**
     * 分页查询
     * @param condition
     * @param offset
     * @param pageSize
     * @return
     */
    List<Commodity> findCommodityByCondition(@Param("condition") Integer condition,
                                           @Param("offset") Integer offset,
                                           @Param("pageSize") Integer pageSize);
    int getCountByCondition(@Param("condition") Integer condition);

    /**
     * 根据主键id删除商品信息
     * @param id
     * @return
     */
    int deleteByPrimaryKey(Integer id);

    int insert(Commodity record);

    /**
     * 新增商品信息
     * @param commodity
     * @return
     */
    int insertCommodity(Commodity commodity);
    int insertSelective(Commodity record);

    Commodity selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Commodity record);

    int updateByPrimaryKey(Commodity record);

    /**
     * 根据主键查询商品的信息
     * @param id
     * @return
     */
    Commodity findCommodityById(Long id);

    /**
     * 根据主键更新商品信息
     * @param commodity
     * @return
     */
    int updateCommodityById(Commodity commodity);
}