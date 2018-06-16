package com.qianfeng.wkrent.dto;

import java.io.Serializable;
import java.util.List;

public class PageBean<T> implements Serializable{

    private static final long serialVersionUID = 3739432000715879711L;
    /**
     * 每页数据记录
     */
    private List<T> list;//列表信息
    /**
     * 总记录数
     */
    private long count;

    /**
     *页数
     */
    private long pages;

    private long currentPage;

    public long getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(long currentPage) {
        this.currentPage = currentPage;
    }

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
