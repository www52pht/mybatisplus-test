package com.www;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.www.mapper.UserMapper;
import com.www.pojo.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class MybatisplusTestApplicationTests {

    @Autowired
    private UserMapper userMapper;


    @Test
    void contextLoads() {
//        List<User> users = userMapper.selectList(null);
//        users.forEach(System.out::println);
//
//        User user = new User();
//
//        user.setId((long) 38);
//        user.setName("小黎2飞刀");
//        user.setAge(44);
//        user.setEmail("5sdfabskj45");
//
////        userMapper.insert(user);
//        int i = userMapper.updateById(user);
//        System.out.println(i);

//        User user = userMapper.selectById(38);
//
//        user.setName("大哥3大");
//        user.setEmail("2367234");
//        userMapper.updateById(user);

        Page<User> page = new Page<>(1,2);
        userMapper.selectPage(page,null);
        page.getRecords().forEach(System.out::println);
        System.out.println(page.getTotal());

        QueryWrapper<User> queryWrapper = new QueryWrapper<>();



    }

}
