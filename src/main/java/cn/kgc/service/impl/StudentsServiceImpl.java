package cn.kgc.service.impl;

import cn.kgc.domain.Students;
import cn.kgc.domain.StudentsExample;
import cn.kgc.mapper.StudentsMapper;
import cn.kgc.service.StudentsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by GMZ on 2019/12/17.
 */
@Service
public class StudentsServiceImpl implements StudentsService {

    @Autowired
    private StudentsMapper studentsMapper;

    @Override
    public List<Students> findAllStudent() {
        StudentsExample studentsExample = new StudentsExample();
        return studentsMapper.selectByExample(studentsExample);
    }

    @Override
    public Students getStudentById(Long id) {
        return studentsMapper.selectByPrimaryKey(id);
    }

    @Override
    public PageInfo<Students> getStudentByPage(Integer page, Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        StudentsExample studentsExample = new StudentsExample();
        List<Students> students = studentsMapper.selectByExample(studentsExample);
        PageInfo pageInfo = new PageInfo(students);
        return pageInfo;
    }
}
