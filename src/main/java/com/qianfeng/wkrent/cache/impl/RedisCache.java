package com.qianfeng.wkrent.cache.impl;

import com.qianfeng.wkrent.cache.IRedisCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Repository;

import java.util.concurrent.TimeUnit;

@Repository
public class RedisCache implements IRedisCache {
    @Autowired
    private StringRedisTemplate redisTemplate;

    @Override
    public String getValueByKey(String key) {
        return redisTemplate.boundValueOps(key).get();
    }

    @Override
    public void setValueByKey(String key, String value,long timeout) {
        redisTemplate.boundValueOps(key).set(value,timeout, TimeUnit.SECONDS);
    }
}
