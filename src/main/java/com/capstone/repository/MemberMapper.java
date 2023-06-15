package com.capstone.repository;

import com.capstone.dto.MemberTO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface MemberMapper {

    @Insert("insert into member values (0,#{username},#{email},#{password},#{role},#{nickname})")
    int save(MemberTO to);

    @Select("select id, username, email, nickname, role from member where username = #{username}")
    MemberTO showMember(String username);

    @Select("select id, username, email, role, password from member where username = #{username}")
    MemberTO findByUsername(String username);

    @Select("select password from member where email = #{email}")
    String checkPassword(String email);

    @Select("select username from member where email = #{email}")
    String findId(String email);

    @Select("select id, username, email, role, nickname from member where username = #{username} and email = #{email}")
    MemberTO checkMember(String username, String email);

    @Update("update member set password = #{password} where username = #{username} and email = #{email}")
    int updatePassword(String username, String email, String password);
}
