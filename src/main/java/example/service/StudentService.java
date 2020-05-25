package example.service;

import example.model.Homework;
import example.model.Student;
import example.model.Teacher;

import java.util.List;

public interface StudentService {

    Student getStudentByUsername(String studentname);
    List<Student> getAllStudent();
}
