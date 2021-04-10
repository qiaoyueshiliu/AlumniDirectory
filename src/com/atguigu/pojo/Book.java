package com.atguigu.pojo;

public class Book {
    private Integer tieziid;
    private String biaoti;
    private String nickname;
    private String createtime;
    private String bankuai;
    private String neirong;

    @Override
    public String toString() {
        return "Book{" +
                "tieziid=" + tieziid +
                ", biaoti='" + biaoti + '\'' +
                ", nickname='" + nickname + '\'' +
                ", createtime='" + createtime + '\'' +
                ", bankuai='" + bankuai + '\'' +
                ", neirong='" + neirong + '\'' +
                '}';
    }

    public String getNeirong() {
        return neirong;
    }

    public void setNeirong(String neirong) {
        this.neirong = neirong;
    }

    public String getBankuai() {
        return bankuai;
    }

    public Book(Integer tieziid, String biaoti, String nickname, String createtime, String bankuai, String neirong) {
        this.tieziid = tieziid;
        this.biaoti = biaoti;
        this.nickname = nickname;
        this.createtime = createtime;
        this.bankuai = bankuai;
        this.neirong = neirong;
    }

    public void setBankuai(String bankuai) {
        this.bankuai = bankuai;
    }


    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public Book(){
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

}
