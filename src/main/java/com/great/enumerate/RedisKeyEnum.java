package com.great.enumerate;

import javax.enterprise.inject.New;

public enum RedisKeyEnum {
     USER_CODE ("user:code","用户验证码");

    private String key;
    private String title;
    RedisKeyEnum(String key, String title) {
        this.key = key;
        this.title = title;
    }

    public String key() {
        return key;
    }



    public String title() {
        return title;
    }


}
