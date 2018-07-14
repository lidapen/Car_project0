package com.ldp.Carproject.utils;


import java.util.List;

/**
 * 分页工具类
 * @author
 */
public class Page<E> {
    //总页数
    private int totalPageCount;
    //页面大小，每页显示的记录数
    private int pageSize = Constants.pageSize;
    //记录总数
    private int totalCount;
    //当前页码
    private int currPageNo;
    //起始记录数
    private int start;
    //每页商品信息的集合
    private List<E> information;

    public int getTotalPageCount() {
        return totalPageCount;
    }

    public void setTotalPageCount(int totalPageCount) {
        this.totalPageCount = totalPageCount;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        if (pageSize>0){
            this.pageSize = pageSize;
        }
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        if (totalCount>0) {
            this.totalCount = totalCount;
        }
        totalPageCount = this.totalCount % pageSize ==0 ? (this.totalCount/pageSize)
                : (this.totalCount/pageSize+1);
    }

    public int getCurrPageNo() {
        return currPageNo;
    }

    public void setCurrPageNo(int currPageNo) {
        if (currPageNo>0) {
            this.currPageNo = currPageNo;
            this.start = (currPageNo-1)*pageSize;
        }
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public List<E> getInformation() {
        return information;
    }

    public void setInformation(List<E> information) {
        this.information = information;
    }
}
