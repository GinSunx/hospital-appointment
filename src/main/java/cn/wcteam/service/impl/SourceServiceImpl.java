package cn.wcteam.service.impl;

import cn.wcteam.dao.SourceDao;
import cn.wcteam.entity.Source;
import cn.wcteam.service.SourceService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SourceServiceImpl implements SourceService {
    @Autowired
    SourceDao sourceDao;

    @Override
    public int addSource(Source source) {
        return sourceDao.addSource(source);
    }

    @Override
    public int updateSource(Source source) {
        return sourceDao.updateSource(source);
    }

    @Override
    public int deleteById(int id) {
        return sourceDao.deleteById(id);
    }

    @Override
    public List<Source> findAll() {
        return sourceDao.findAll();
    }

    @Override
    public int findBySourceAndDocId(@Param("sourceId") int sourceId,@Param("doctorId")int doctorId) {
        return sourceDao.findBySourceAndDocId(sourceId, doctorId);
    }

    @Override
    public Source findByDocId(int doctorId) {
        return sourceDao.findByDocId(doctorId);
    }
    @Override
    public int decrease1(int sourceId){
        return sourceDao.decrease1(sourceId);
    }
}
