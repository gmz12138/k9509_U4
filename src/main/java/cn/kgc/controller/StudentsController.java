package cn.kgc.controller;

import cn.kgc.domain.Students;
import cn.kgc.service.StudentsService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by GMZ on 2019/12/17.
 */
@Controller
public class StudentsController {

    @Autowired
    private StudentsService studentsService;

    @RequestMapping("/showStudent")
    public String showStudent(Model model){
        List<Students> studentsList = studentsService.findAllStudent();
        model.addAttribute("studentsList",studentsList);
        return "main";
    }

    @RequestMapping("/getStudentData")
    @ResponseBody
    public List<Students> getStudentData(){
        List<Students> studentsList = studentsService.findAllStudent();
        return studentsList;
    }

    @RequestMapping("/findStudentById")
    @ResponseBody
    public Students findStudentById(Long id){
        Students students = studentsService.getStudentById(id);
        return students;
    }

    @RequestMapping("/getStudentData2")
    @ResponseBody
    public Map<String,Object> getStudentData2(Integer page,Integer rows){
        PageInfo<Students> pageInfo = studentsService.getStudentByPage(page, rows);
        Map<String,Object> map = new HashMap<>();
        map.put("total",pageInfo.getTotal());
        map.put("rows",pageInfo.getList());
        return map;
    }
}
