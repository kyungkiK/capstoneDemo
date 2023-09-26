package com.testCode.repository;

import com.testCode.dto.MemberTO;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface MemberMapper {

    @Insert("insert into member values (0,#{username},#{email},#{password},#{role},#{phone_number})")
    int save(MemberTO to);

    @Select("select count(*) from member where email = #{email}")
    int selectByEmail(String email);

    @Select("select id, name, email from member where id = #{id}")
    MemberTO selectOneById(int id);

    @Select("select id, username, email, phone_number, role from member where username = #{username}")
    MemberTO showMember(String username);

    @Select("select id, username, email, role, password from member where username = #{username}")
    MemberTO findByUsername(String username);

    @Select("select password from member where email = #{email}")
    String checkPassword(String email);

    @Select("select username from member where email = #{email}")
    String findId(String email);

    @Select("select id, username, email, role, phone_number from member where username = #{username} and email = #{email}")
    MemberTO checkMember(String username, String email);

    @Update("update member set password = #{password} where username = #{username} and email = #{email}")
    int updatePassword(String username, String email, String password);

}
