package com.qianfeng.wkrent.dto;

import java.util.List;

public class PageBean<T> {
    private List<T> list;
    private long count;
    private long pages;

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
