package com.qianfeng.wkrent.dto;

import java.util.List;

public class PageBean<T> {
    private List<T> list;//列表信息
    private long count;//总记录数
    private long pages;//页数

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public long getPages() {
        return pages;
    }

    public void setPages(long pages) {
        this.pages = pages;
    }
}
