package com.atguigu.pojo;

public class Book {
    private Integer tieziid;
    private String biaoti;
    private String nickname;

    public Book(){
    }

    public Book(Integer tieziid, String biaoti, String nickname) {
        this.tieziid = tieziid;
        this.biaoti = biaoti;
        this.nickname = nickname;
    }

    public Integer getTieziid() {
        return tieziid;
    }

    public void setTieziid(Integer tieziid) {
        this.tieziid = tieziid;
    }

    public String getBiaoti() {
        return biaoti;
    }

    public void setBiaoti(String biaoti) {
        this.biaoti = biaoti;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    @Override
    public String toString() {
        return "Book{" +
                "tieziid=" + tieziid +
                ", biaoti='" + biaoti + '\'' +
                ", nickname='" + nickname + '\'' +
                '}';
    }


}
