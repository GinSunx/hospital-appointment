package cn.wcteam.service;

import cn.wcteam.entity.Source;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SourceService {
    public int addSource(Source source);
    public int updateSource(Source source);
    public int deleteById(int id);
    public List<Source> findAll();
    public int findBySourceAndDocId(@Param("sourceId") int sourceId, @Param("doctorId")int doctorId);
    public Source findByDocId(int doctorId);
    public int decrease1(int sourceId);
}
