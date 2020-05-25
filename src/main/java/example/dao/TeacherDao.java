package example.dao;

import example.model.Teacher;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface TeacherDao {

    Teacher selectTeacherByUsername(@Param("teacherUsername") String teacherUsername);

}
