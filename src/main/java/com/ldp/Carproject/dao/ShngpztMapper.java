package com.ldp.Carproject.dao;

import com.ldp.Carproject.pojo.Shangpzt;

public interface ShngpztMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Shangpzt record);

    int insertSelective(Shangpzt record);

    Shangpzt selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Shangpzt record);

    int updateByPrimaryKey(Shangpzt record);
}