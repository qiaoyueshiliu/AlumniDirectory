package com.atguigu.pojo;

public class Fankui {
    private Integer fankuiId;
    private String fankuiCreatetime;
    private String fankuiBiaoti;
    private String fankuiNeirong;
    private Integer id;
    private String nickname;

    @Override
    public String toString() {
        return "Fankui{" +
                "fankuiId=" + fankuiId +
                ", fankuiCreatetime='" + fankuiCreatetime + '\'' +
                ", fankuiBiaoti='" + fankuiBiaoti + '\'' +
                ", fankuiNeirong='" + fankuiNeirong + '\'' +
                ", id=" + id +
                ", nickname='" + nickname + '\'' +
                '}';
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Fankui(Integer fankuiId, String fankuiCreatetime, String fankuiBiaoti, String fankuiNeirong, Integer id, String nickname) {
        this.fankuiId = fankuiId;
        this.fankuiCreatetime = fankuiCreatetime;
        this.fankuiBiaoti = fankuiBiaoti;
        this.fankuiNeirong = fankuiNeirong;
        this.id = id;
        this.nickname = nickname;
    }

    public Fankui(Integer fankuiId, String fankuiCreatetime, String fankuiBiaoti, String fankuiNeirong, Integer id) {
        this.fankuiId = fankuiId;
        this.fankuiCreatetime = fankuiCreatetime;
        this.fankuiBiaoti = fankuiBiaoti;
        this.fankuiNeirong = fankuiNeirong;
        this.id = id;
    }

    public Fankui() {
    }

    public Integer getFankuiId() {
        return fankuiId;
    }

    public void setFankuiId(Integer fankuiId) {
        this.fankuiId = fankuiId;
    }

    public String getFankuiCreatetime() {
        return fankuiCreatetime;
    }

    public void setFankuiCreatetime(String fankuiCreatetime) {
        this.fankuiCreatetime = fankuiCreatetime;
    }

    public String getFankuiBiaoti() {
        return fankuiBiaoti;
    }

    public void setFankuiBiaoti(String fankuiBiaoti) {
        this.fankuiBiaoti = fankuiBiaoti;
    }

    public String getFankuiNeirong() {
        return fankuiNeirong;
    }

    public void setFankuiNeirong(String fankuiNeirong) {
        this.fankuiNeirong = fankuiNeirong;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
