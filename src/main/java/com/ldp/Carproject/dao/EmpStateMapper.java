package com.ldp.Carproject.dao;

import com.ldp.Carproject.pojo.EmpState;

public interface EmpStateMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(EmpState record);

    int insertSelective(EmpState record);

    EmpState selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(EmpState record);

    int updateByPrimaryKey(EmpState record);
}