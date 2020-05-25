package example.service.impl;

import example.dao.StudentDao;
import example.dao.TeacherDao;
import example.model.Student;
import example.model.Teacher;
import example.service.StudentService;
import example.service.TeacherService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class StudentServiceImpl implements StudentService {
    @Resource
    private StudentDao studentDao;

    @Override
    public Student getStudentByUsername(String studentUsername){
        return studentDao.selectStudentByUsername(studentUsername);
    }

    @Override
    public List<Student> getAllStudent() {
        return studentDao.selectAllStudent();
    }
}
