//book

//package com.atguigu.pojo;
//
//public class User {
//    private Integer id;
//    private String username;
//    private String password;
//    private String nickname;
//
//    public Integer getId() {
//        return id;
//    }
//
//    public void setId(Integer id) {
//        this.id = id;
//    }
//
//    public String getUsername() {
//        return username;
//    }
//
//    public void setUsername(String username) {
//        this.username = username;
//    }
//
//    public String getPassword() {
//        return password;
//    }
//
//    public void setPassword(String password) {
//        this.password = password;
//    }
//
//    public String getNickname() {
//        return nickname;
//    }
//
//    public void setNickname(String nickname) {
//        this.nickname = nickname;
//    }
//
//    @Override
//    public String toString() {
//        return "User{" +
//                "id=" + id +
//                ", username='" + username + '\'' +
//                ", password='" + password + '\'' +
//                ", nickname='" + nickname + '\'' +
//                '}';
//    }
//
//    public User(Integer id) {
//        this.id = id;
//    }
//
//    public User(Integer id, String username, String password, String nickname) {
//        this.id = id;
//        this.username = username;
//        this.password = password;
//        this.nickname = nickname;
//    }
//}
package com.atguigu.pojo;

public class User {
    private Integer id;
    private String username;
    private String password;
    private String email;
    private String nickname;
    private String xuexiao;
    private Integer quanxian;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", nickname='" + nickname + '\'' +
                ", xuexiao='" + xuexiao + '\'' +
                ", quanxian='" + quanxian + '\'' +
                '}';
    }

    public Integer getQuanxian() {
        return quanxian;
    }

    public void setQuanxian(Integer quanxian) {
        this.quanxian = quanxian;
    }

    public User(Integer id, String username, String password, String email, String nickname, String xuexiao) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.nickname = nickname;
        this.xuexiao = xuexiao;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
//    public void setUsername(String username1) {
//        this.username = username;
//    }
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public User() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getXuexiao() {
        return xuexiao;
    }

    public void setXuexiao(String xuexiao) {
        this.xuexiao = xuexiao;
    }
}
