package cn.kgc.service;

import cn.kgc.domain.Students;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * Created by GMZ on 2019/12/17.
 */
public interface StudentsService {
    List<Students> findAllStudent();

    Students getStudentById(Long id);

    PageInfo<Students> getStudentByPage(Integer page,Integer pageSize);
}
