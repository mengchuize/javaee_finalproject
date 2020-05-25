package example.service;

import example.model.Homework;
import java.util.List;

public interface HomeworkService {

    List<Homework> getAllHomework();
    void addHomework(Homework homework);
}
