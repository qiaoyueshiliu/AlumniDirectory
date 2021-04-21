package com.atguigu.pojo;

public class Xunrenqishi {
    private Integer xunrenqishiId;
    private String xunrenqishiCreatetime;
    private String xunrenqishiBiaoti;
    private String xunrenqishiNeirong;
    private Integer id;
    private String nickname;

    public Xunrenqishi() {
    }

    @Override
    public String toString() {
        return "Xunrenqishi{" +
                "xunrenqishiId=" + xunrenqishiId +
                ", xunrenqishiCreatetime='" + xunrenqishiCreatetime + '\'' +
                ", xunrenqishiBiaoti='" + xunrenqishiBiaoti + '\'' +
                ", xunrenqishiNeirong='" + xunrenqishiNeirong + '\'' +
                ", id=" + id +
                ", nickname='" + nickname + '\'' +
                '}';
    }

    public Xunrenqishi(Integer xunrenqishiId, String xunrenqishiCreatetime, String xunrenqishiBiaoti, String xunrenqishiNeirong, Integer id, String nickname) {
        this.xunrenqishiId = xunrenqishiId;
        this.xunrenqishiCreatetime = xunrenqishiCreatetime;
        this.xunrenqishiBiaoti = xunrenqishiBiaoti;
        this.xunrenqishiNeirong = xunrenqishiNeirong;
        this.id = id;
        this.nickname = nickname;
    }

    public Integer getXunrenqishiId() {
        return xunrenqishiId;
    }

    public void setXunrenqishiId(Integer xunrenqishiId) {
        this.xunrenqishiId = xunrenqishiId;
    }

    public String getXunrenqishiCreatetime() {
        return xunrenqishiCreatetime;
    }

    public void setXunrenqishiCreatetime(String xunrenqishiCreatetime) {
        this.xunrenqishiCreatetime = xunrenqishiCreatetime;
    }

    public String getXunrenqishiBiaoti() {
        return xunrenqishiBiaoti;
    }

    public void setXunrenqishiBiaoti(String xunrenqishiBiaoti) {
        this.xunrenqishiBiaoti = xunrenqishiBiaoti;
    }

    public String getXunrenqishiNeirong() {
        return xunrenqishiNeirong;
    }

    public void setXunrenqishiNeirong(String xunrenqishiNeirong) {
        this.xunrenqishiNeirong = xunrenqishiNeirong;
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
}
