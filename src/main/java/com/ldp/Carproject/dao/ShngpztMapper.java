package com.ldp.Carproject.dao;

import com.ldp.Carproject.pojo.Shngpzt;

public interface ShngpztMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Shngpzt record);

    int insertSelective(Shngpzt record);

    Shngpzt selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Shngpzt record);

    int updateByPrimaryKey(Shngpzt record);
}