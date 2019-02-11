package com.great.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface RankDao {
    public List<Map<String,Object>> listRank();
}
