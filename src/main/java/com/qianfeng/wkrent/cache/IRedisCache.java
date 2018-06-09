package com.qianfeng.wkrent.cache;

public interface IRedisCache {
    String getValueByKey(String key);

    void setValueByKey(String key,String value,long timeout);
}
