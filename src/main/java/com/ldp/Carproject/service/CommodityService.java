package com.ldp.Carproject.service;

import com.ldp.Carproject.pojo.Commodity;
import com.ldp.Carproject.utils.Page;
import org.apache.ibatis.annotations.Param;

/**
 * 商品管理的业务层的接口
 * @author
 */
public interface CommodityService {

    /**
     * 分页查询
     * @param condition
     * @param pageNo
     * @param pagesize
     * @return
     */
    Page getByCondition(Integer condition,Integer pageNo,Integer pagesize);

    /**
     * 新增商品信息
     * @param commodity
     * @return
     */
    int insertCommodity(Commodity commodity);

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

    /**
     * 根据id主键删除商品信息
     * @param id
     * @return
     */
    int deleteCommodityById(Integer id);
}
