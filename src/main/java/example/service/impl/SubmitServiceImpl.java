package example.service.impl;

import example.dao.HomeworkDao;
import example.dao.SubmitDao;
import example.model.Homework;
import example.model.Submit;
import example.service.HomeworkService;
import example.service.SubmitService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class SubmitServiceImpl implements SubmitService {
    @Resource
    private SubmitDao submitDao;

    @Override
    public List<Submit> getAllSubmit(){
        return submitDao.selectAllSubmit();
    }

    @Override
    public Submit getSubmitByHname(String hname) {
        return submitDao.selectSubmitByHname(hname);
    }

    @Override
    public void addSubmit(Submit submit) {
        submitDao.addSubmit(submit);
    }

}
