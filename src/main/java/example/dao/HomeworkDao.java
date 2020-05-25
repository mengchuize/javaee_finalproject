package example.dao;

import java.util.List;
import example.model.Homework;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface HomeworkDao {

    List<Homework> selectAllHomework();
    void addHomework(@Param("homework") Homework homework);
}
