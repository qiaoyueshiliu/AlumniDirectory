package com.atguigu.pojo;

public class Huodong {
    private Integer huodongId;
    private String huodongCreatetime;
    private String huodongBiaoti;
    private String huodongNeirong;
    private Integer id;
    private String nickname;

    public Huodong() {
    }

    @Override
    public String toString() {
        return "Huodong{" +
                "huodongId=" + huodongId +
                ", huodongCreatetime='" + huodongCreatetime + '\'' +
                ", huodongBiaoti='" + huodongBiaoti + '\'' +
                ", huodongNeirong='" + huodongNeirong + '\'' +
                ", id=" + id +
                ", nickname='" + nickname + '\'' +
                '}';
    }

    public Integer getHuodongId() {
        return huodongId;
    }

    public void setHuodongId(Integer huodongId) {
        this.huodongId = huodongId;
    }

    public String getHuodongCreatetime() {
        return huodongCreatetime;
    }

    public void setHuodongCreatetime(String huodongCreatetime) {
        this.huodongCreatetime = huodongCreatetime;
    }

    public String getHuodongBiaoti() {
        return huodongBiaoti;
    }

    public void setHuodongBiaoti(String huodongBiaoti) {
        this.huodongBiaoti = huodongBiaoti;
    }

    public String getHuodongNeirong() {
        return huodongNeirong;
    }

    public void setHuodongNeirong(String huodongNeirong) {
        this.huodongNeirong = huodongNeirong;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Huodong(Integer huodongId, String huodongCreatetime, String huodongBiaoti, String huodongNeirong, Integer id, String nickname) {
        this.huodongId = huodongId;
        this.huodongCreatetime = huodongCreatetime;
        this.huodongBiaoti = huodongBiaoti;
        this.huodongNeirong = huodongNeirong;
        this.id = id;
        this.nickname = nickname;
    }
}
