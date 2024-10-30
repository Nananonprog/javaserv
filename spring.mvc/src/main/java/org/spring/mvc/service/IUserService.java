package org.spring.mvc.service;

import org.spring.mvc.entity.User;
import org.springframework.stereotype.Service;


public interface IUserService {
    public int registerUser(User user);
}
