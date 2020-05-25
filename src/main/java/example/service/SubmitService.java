package example.service;

import example.model.Homework;
import example.model.Submit;

import java.util.List;

public interface SubmitService {

    List<Submit> getAllSubmit();
    Submit getSubmitByHname(String hname);
    void addSubmit(Submit submit);
}
