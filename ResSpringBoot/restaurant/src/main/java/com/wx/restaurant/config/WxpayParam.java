package com.wx.restaurant.config;

import java.math.BigDecimal;
import java.util.Random;

public class WxpayParam {

    /**
     * 微信支付的金额是String类型 并且是以分为单位将元是怎么转为分的
     */
    //  默认商品价格1元
    BigDecimal totalPrice = new BigDecimal(1); //此时的单位是元

    private String body = "小程序充值";
    //  将元转换成分
    private String totalFee = totalPrice.multiply(new BigDecimal(100)).toBigInteger().toString();
    //  订单号
    private String outTradeNo;

    /**
     * 生成随机数
     *
     * @return
     */

    public WxpayParam() {
        Random r = new Random();
        StringBuilder rs = new StringBuilder();
        for (int i = 0; i < 19; i++) {
            rs.append(r.nextInt(10));
        }
        outTradeNo = rs.toString();
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getTotalFee() {
        return totalFee;
    }

    /**
     * 修改订单金额
     *
     * @param totalFee
     */
    public void setTotalFee(Double totalFee) {
        String price = String.valueOf((int)(totalFee*100));
        System.out.println(price);
        this.totalFee = price;
    }

    public String getOutTradeNo() {
        return outTradeNo;
    }

    public void setOutTradeNo(String outTradeNo) {
        this.outTradeNo = outTradeNo;
    }
}
