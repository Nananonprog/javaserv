package org.spring.mvcht.dao;

import org.spring.mvcht.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public int saveUser(User user) {
        String sql = "INSERT INTO user(name, team, email, password) VALUES(?,?,?,?)";
        int i = jdbcTemplate.update(sql, user.getFullName(), user.getTeam(), user.getEmail(), user.getPassword());
        return i;
    }
}
