package com.wx.restaurant.config;



import java.io.ByteArrayInputStream;
import java.io.InputStream;

/**
 * 重写微信接口，并添加商户的个人信息
 */

public class IWXPayConfig{

    //todo 小程序appid
    private String appid = "wx00670d2c9d512d57";
    //todo 商户号
    private String mchid = "";
    //todo 商户密匙
    private String key = "";

    private byte[] certData;

    /**
     * 读取证书内的内容
     *
     * @throws Exception
     */
    public IWXPayConfig() throws Exception {
//        InputStream certStrem = Thread.currentThread()
//                .getContextClassLoader().getResourceAsStream("cert/apiclient_cert.p12");
//        this.certData = IOUtils.toByteArray(certStrem);
//        certStrem.close();
    }

    /**
     * 返回用户的APPID
     *
     * @return
     */
    public String getAppID() {
        return appid;
    }


    public String getMchID() {
        return mchid;
    }


    public String getKey() {
        return key;
    }


    public InputStream getCertStream() {
        return new ByteArrayInputStream(this.certData);
    }


    public int getHttpConnectTimeoutMs() {
        return 0;
    }


    public int getHttpReadTimeoutMs() {
        return 0;
    }
}
