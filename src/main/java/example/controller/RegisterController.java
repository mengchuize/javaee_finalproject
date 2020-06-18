package example.controller;

import example.model.Homework;
import example.model.Student;
import example.model.Teacher;
import example.service.HomeworkService;
import example.service.StudentService;
import example.service.SubmitService;
import example.service.TeacherService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
@RequestMapping("/register")
public class RegisterController {

    private Logger log = Logger.getLogger(RegisterController.class);
    @Resource
    public TeacherService teacherService;

    @Resource
    public HomeworkService homeworkService;

    @Resource
    public StudentService studentService;

    @Resource
    public SubmitService submitService;

    @RequestMapping("/register")
    public String teacher(HttpServletRequest request, Model model){
        log.info("注册");
        System.out.println("注册");
        String username =  request.getParameter("rusername");
        String password = request.getParameter("rpassword");
        studentService.addStudent(username,password);
        return "/index.jsp";
    }
}