package com.ldp.Carproject.dao;

import com.ldp.Carproject.pojo.Member;

public interface MemberMapper {
    int deleteByPrimaryKey(Integer memId);

    int insert(Member record);

    int insertSelective(Member record);

    Member selectByPrimaryKey(Integer memId);

    int updateByPrimaryKeySelective(Member record);

    int updateByPrimaryKey(Member record);
}