package example.controller;

import example.model.*;
import example.service.*;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
@RequestMapping("/logint")
public class TeacherController {

    private Logger log = Logger.getLogger(TeacherController.class);
    @Resource
    public TeacherService teacherService;

    @Resource
    public HomeworkService homeworkService;

    @Resource
    public StudentService studentService;

    @Resource
    public SubmitService submitService;

    @RequestMapping("/teacher")
    public String teacher(HttpServletRequest request, Model model){
        log.info("教师登录");
        System.out.println("教师登录");
        String username =  request.getParameter("tusername");
        String password = request.getParameter("tpassword");
        Teacher teacher = teacherService.getTeacherByUsername(username);
        if(teacher.getTpassword().equals(password)){
            System.out.println("yes");
            model.addAttribute("tusername",username);

            log.info("查询所有作业");
            List<Homework> homeworks=homeworkService.getAllHomework();
            model.addAttribute("homeworks",homeworks);

            log.info("查询所有学生");
            List<Student> students=studentService.getAllStudent();
            model.addAttribute("students",students);

            return "/teacherhome.jsp";

        }else{
            System.out.println("no");
            return "/failed.jsp";
        }
    }
}