package com.ldp.Carproject.service.impl;

import com.ldp.Carproject.dao.CommodityMapper;
import com.ldp.Carproject.pojo.Commodity;
import com.ldp.Carproject.service.CommodityService;
import com.ldp.Carproject.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommodityServiceImpl implements CommodityService {
    @Autowired
    CommodityMapper commodityMapper;

    /**
     * 分页查出商品信息
     * @param condition
     * @param pageNo
     * @param pagesize
     * @return
     */
    @Override
    public Page getByCondition(Integer condition, Integer pageNo, Integer pagesize) {
        Page page=new Page();
        if(pageNo<1){
            pageNo=1;
        }
        page.setPageSize(pagesize);
        page.setCurrPageNo(pageNo);
        page.setTotalCount(commodityMapper.getCountByCondition(condition));


        int totalPageCount=page.getTotalPageCount();
        page.setInformation(commodityMapper.findCommodityByCondition(condition,(pageNo-1)*pagesize,pagesize));
        return page;
    }

    /**
     *插入商品信息
     * @param commodity
     * @return
     */
    @Override
    public int insertCommodity(Commodity commodity) {
        return commodityMapper.insertCommodity(commodity);
    }

    /**
     *根据id主键查询商品信息
     * @param id
     * @return
     */
    @Override
    public Commodity findCommodityById(Long id) {
        return commodityMapper.findCommodityById(id);
    }

    /**
     * 根据id更新商品信息
     * @param commodity
     * @return
     */
    @Override
    public int updateCommodityById(Commodity commodity) {
        return commodityMapper.updateCommodityById(commodity);
    }

    /**
     *
     * @param id
     * @return
     */
    @Override
    public int deleteCommodityById(Integer id) {
        return commodityMapper.deleteByPrimaryKey(id);
    }
}
