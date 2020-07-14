package cn.wcteam.dao;

import cn.wcteam.entity.Source;

import java.util.List;

public interface SourceDao {
    public int addSource(Source source);
    public int updateSource(Source source);
    public int deleteById(int id);
    public List<Source> findAll();
    public int findBySourceAndDocId(int sourceId, int doctorId);
    public int decrease1(int sourceId);
    public Source findByDocId(int doctorId);
}
