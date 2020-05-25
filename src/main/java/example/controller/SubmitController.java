package example.controller;

import example.model.Homework;
import example.model.Submit;
import example.service.HomeworkService;
import example.service.SubmitService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.List;


@Controller
@RequestMapping("/submit")
public class SubmitController {

    private Logger log = Logger.getLogger(SubmitController.class);
    @Resource
    public SubmitService submitService;

    @RequestMapping("/addsubmit")
    public String homework(HttpServletRequest request, Model model){
        log.info("新建提交");
        String hname = request.getParameter("hname");
        String sname = request.getParameter("sname");
        String shis = request.getParameter("shis");

        Submit s=new Submit(hname,sname,shis);
        submitService.addSubmit(s);
        return "/statics/submitsuccess.jsp";

    }

}