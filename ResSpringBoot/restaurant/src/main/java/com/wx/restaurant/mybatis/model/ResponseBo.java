package com.wx.restaurant.mybatis.model;

public class ResponseBo {
    private String msg;
    private int status;
    private String action;
    private Object data;

    public ResponseBo(int status) {
        this.status = status;
    }

    public ResponseBo(String msg) {
        this.msg = msg;
    }

    public ResponseBo(String msg, String action) {
        this.msg = msg;
        this.action = action;
    }

    public ResponseBo(int status, String msg, String action) {
        this.status = status;
        this.msg = msg;
        this.action = action;
    }

    public ResponseBo(int status, String msg) {
        this.status = status;
        this.msg = msg;
    }

    public ResponseBo(int status, Object data) {
        this.status = status;
        this.data = data;
    }

    public static ResponseBo ok(int status) {
        return new ResponseBo(status);
    }

    public static ResponseBo ok(String msg) {
        return new ResponseBo(msg);
    }

    public static ResponseBo ok(int status, String msg) {
        return new ResponseBo(status, msg);
    }

    public static ResponseBo ok(int status, String msg, String action) {
        return new ResponseBo(status, msg, action);
    }

    public static ResponseBo ok(int status, Object data) {
        return new ResponseBo(status, data);
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }
}
