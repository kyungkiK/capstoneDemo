package com.nomalboard.repository;

import com.nomalboard.dto.MemberTO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface MemberMapper {

    @Insert("insert into member values (0,#{username},#{email},#{password},#{role})")
    int save(MemberTO to);
}
