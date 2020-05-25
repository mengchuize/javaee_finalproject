package example.controller;

import example.model.Homework;
import example.model.Student;
import example.service.HomeworkService;
import example.service.StudentService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.List;


@Controller
@RequestMapping("/homework")
public class HomeworkController {

    private Logger log = Logger.getLogger(HomeworkController.class);
    @Resource
    public HomeworkService homeworkService;

    @RequestMapping("/addhomework")
    public String homework(HttpServletRequest request, Model model){
        log.info("新建作业");
        String hname = request.getParameter("hname");
        java.sql.Date btime = new java.sql.Date(System.currentTimeMillis());
        java.sql.Date edate=strToDate(request.getParameter("edate"));

        Homework h=new Homework(hname,btime,edate,request.getSession().getAttribute("tname").toString(),0);
        homeworkService.addHomework(h);
        return "/statics/submitsuccess.jsp";

    }

    public static java.sql.Date strToDate(String strDate) {
        String str = strDate;
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date d = null;
        try {
            d = format.parse(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
        java.sql.Date date = new java.sql.Date(d.getTime());
        return date;
    }
}