package cn.kgc.mapper;

import cn.kgc.domain.Students;
import cn.kgc.domain.StudentsExample;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface StudentsMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Students record);

    int insertSelective(Students record);

    List<Students> selectByExample(StudentsExample example);

    Students selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Students record);

    int updateByPrimaryKey(Students record);
}