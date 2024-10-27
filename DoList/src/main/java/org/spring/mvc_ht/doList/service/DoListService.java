package org.spring.mvc_ht.doList.service;

import jakarta.transaction.Transactional;
import org.spring.mvc_ht.doList.entity.DoList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class DoListService {
    @Autowired
    private DoListRepository doListRepository;

    public List<DoList> findAll(){
        return (List <DoList>) doListRepository.findAll();

    }
    public void save(DoList doList){
        doListRepository.save(doList);
    }
    public DoList getDoListById(long doListId){
        DoList doList = doListRepository.findById(doListId).get();
        return doList;
    }
    public DoList update(DoList doList, Long doListId){
        DoList oldDoList = doListRepository.findById(doListId).get();
        oldDoList.setTitle(doList.getTitle());
        oldDoList.setImportance(doList.getImportance());
        oldDoList.setDeadline(doList.getDeadline());
        return doListRepository.save(oldDoList);


    }

    public void deleteDoListById(long doListId){
        doListRepository.deleteById(doListId);
    }


}
