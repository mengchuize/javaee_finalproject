package example.controller;

import example.model.Homework;
import example.model.Student;
import example.model.Teacher;
import example.service.HomeworkService;
import example.service.StudentService;
import example.service.TeacherService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
@RequestMapping("/logins")
public class StudentController {

    private Logger log = Logger.getLogger(StudentController.class);
    @Resource
    public StudentService studentService;

    @Resource
    public HomeworkService homeworkService;

    @RequestMapping("/student")
    public String student(HttpServletRequest request, Model model){
        log.info("学生登录");
        System.out.println("学生登录");
        String username =  request.getParameter("susername");
        String password = request.getParameter("spassword");
        Student student = studentService.getStudentByUsername(username);
        if(student.getSpassword().equals(password)){
            System.out.println("yes");
            model.addAttribute("susername",username);

            log.info("查询所有作业");
            List<Homework> homeworks=homeworkService.getAllHomework();
            model.addAttribute("homeworks",homeworks);

            return "/student.jsp";

        }else{
            System.out.println("no");
            return "/failed.jsp";
        }
    }
}