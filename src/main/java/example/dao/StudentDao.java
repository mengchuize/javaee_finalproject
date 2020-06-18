package example.dao;

import example.model.Homework;
import example.model.Student;
import example.model.Teacher;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentDao {

    Student selectStudentByUsername(@Param("studentUsername") String studentUsername);
    List<Student> selectAllStudent();
    void addStudent(@Param("studentUsername") String studentUsername,@Param("studentPassword") String studentPassword);
}
