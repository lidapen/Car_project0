package com.ldp.Carproject.dao;

import com.ldp.Carproject.pojo.ClubCard;

public interface ClubCardMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ClubCard record);

    int insertSelective(ClubCard record);

    ClubCard selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ClubCard record);

    int updateByPrimaryKey(ClubCard record);
}