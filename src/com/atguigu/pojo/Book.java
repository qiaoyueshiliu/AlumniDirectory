package com.atguigu.pojo;

public class Book {
    private Integer tieziid;
    private String biaoti;
    private String nickname;
    private String createtime;
    private String bankuai;
    private String neirong;
    private String biaoji;
    private Integer id;
    private String xuexiao;
    private String diqu;

    public Book(Integer tieziid, String biaoti, String nickname, String createtime, String bankuai, String neirong, String biaoji, Integer id, String xuexiao, String diqu) {
        this.tieziid = tieziid;
        this.biaoti = biaoti;
        this.nickname = nickname;
        this.createtime = createtime;
        this.bankuai = bankuai;
        this.neirong = neirong;
        this.biaoji = biaoji;
        this.id = id;
        this.xuexiao = xuexiao;
        this.diqu = diqu;
    }

    public String getDiqu() {
        return diqu;
    }

    @Override
    public String toString() {
        return "Book{" +
                "tieziid=" + tieziid +
                ", biaoti='" + biaoti + '\'' +
                ", nickname='" + nickname + '\'' +
                ", createtime='" + createtime + '\'' +
                ", bankuai='" + bankuai + '\'' +
                ", neirong='" + neirong + '\'' +
                ", biaoji='" + biaoji + '\'' +
                ", id=" + id +
                ", xuexiao='" + xuexiao + '\'' +
                ", diqu='" + diqu + '\'' +
                '}';
    }

    public void setDiqu(String diqu) {
        this.diqu = diqu;
    }

    public String getXuexiao() {
        return xuexiao;
    }

    public void setXuexiao(String xuexiao) {
        this.xuexiao = xuexiao;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBiaoji() {
        return biaoji;
    }

    public void setBiaoji(String biaoji) {
        this.biaoji = biaoji;
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
