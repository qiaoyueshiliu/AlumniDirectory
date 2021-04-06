package com.atguigu.pojo;

public class Book {
    private Integer id;
    private String biaoti;
    private String chuangjianren;

    public Book(){
    }

    public Book(Integer id, String biaoti, String chuangjianren) {
        this.id = id;
        this.biaoti = biaoti;
        this.chuangjianren = chuangjianren;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBiaoti() {
        return biaoti;
    }

    public void setBiaoti(String biaoti) {
        this.biaoti = biaoti;
    }

    public String getChuangjianren() {
        return chuangjianren;
    }

    public void setChuangjianren(String chuangjianren) {
        this.chuangjianren = chuangjianren;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", biaoti='" + biaoti + '\'' +
                ", chuangjianren='" + chuangjianren + '\'' +
                '}';
    }


}
