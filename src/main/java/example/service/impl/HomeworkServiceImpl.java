package example.service.impl;

import example.dao.HomeworkDao;
import example.model.Homework;
import example.service.HomeworkService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class HomeworkServiceImpl implements HomeworkService {
    @Resource
    private HomeworkDao homeworkDao;

    @Override
    public List<Homework> getAllHomework(){
        return homeworkDao.selectAllHomework();
    }

    @Override
    public void addHomework(Homework homework) {
        homeworkDao.selectAllHomework();
    }

}
