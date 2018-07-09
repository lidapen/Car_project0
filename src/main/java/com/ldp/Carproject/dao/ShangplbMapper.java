package com.ldp.Carproject.dao;

import com.ldp.Carproject.pojo.Shangplb;

public interface ShangplbMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Shangplb record);

    int insertSelective(Shangplb record);

    Shangplb selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Shangplb record);

    int updateByPrimaryKey(Shangplb record);
}