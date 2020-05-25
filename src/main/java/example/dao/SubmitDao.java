package example.dao;

import example.model.Homework;
import example.model.Submit;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SubmitDao {

    List<Submit> selectAllSubmit();
    Submit selectSubmitByHname(@Param("hname") String hname);
    void addSubmit(@Param("submit") Submit submit);
}
