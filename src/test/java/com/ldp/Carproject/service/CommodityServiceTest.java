package com.ldp.Carproject.service;

import com.alibaba.fastjson.JSON;
import com.ldp.Carproject.controller.CommodityController;
import com.ldp.Carproject.pojo.Commodity;
import com.ldp.Carproject.utils.Page;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class CommodityServiceTest {

    @Autowired
    CommodityService service;

    @Test
    public void getByCondition() {

        Page<Commodity> commodityList = service.getByCondition(null,1,3);
        System.out.println(JSON.toJSONString(commodityList)+"<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");


    }
}
