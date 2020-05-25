package example.service.impl;

import example.dao.TeacherDao;
import example.model.Teacher;
import example.service.TeacherService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional(rollbackFor = Exception.class)
public class TeacherServiceImpl implements TeacherService {
    @Resource
    private TeacherDao teacherDao;

    @Override
    public Teacher getTeacherByUsername(String teacherUsername){
        return teacherDao.selectTeacherByUsername(teacherUsername);
    }

}
