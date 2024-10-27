package org.spring.mvc_ht.doList.service;

import org.spring.mvc_ht.doList.entity.DoList;
import org.springframework.data.repository.CrudRepository;

public interface DoListRepository extends CrudRepository<DoList, Long> {
}
