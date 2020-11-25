package com.wx.restaurant.mybatis.model;

public class DishDetail {
    /**
     * 菜的主键
     */
    private Integer dishId;

    /**
     * 菜名
     */
    private String dishName;

    //菜的类型
    private String name;

    /**
     * 菜的路径
     */
    private String dishUrl;

    /**
     * 1==不辣 2==微辣 3==中辣 4==超辣
     */

    private Integer hotStatus;

    /**
     * 点赞次数
     */
    private Integer praiseTimes;

    /**
     * 0==不是招牌 1==招牌
     */
    private Integer isSign;

    /**
     * 0==不是新品 1=新品
     */
    private Integer isNewDish;

    /**
     * 菜的销量
     */
    private Integer salesVolume;

    /**
     * 菜的价格
     */
    private Double dishPrice;

    /**
     * 1==热销 2==新品3==锅底4==蔬菜5==肉类6==冷菜7==酒水
     */
    private Integer dishType;

    /**
     * 菜的描述
     */
    private String dishDescription;


    public Integer getDishId() {
        return dishId;
    }

    public void setDishId(Integer dishId) {
        this.dishId = dishId;
    }

    public String getDishName() {
        return dishName;
    }

    public void setDishName(String dishName) {
        this.dishName = dishName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDishUrl() {
        return dishUrl;
    }

    public void setDishUrl(String dishUrl) {
        this.dishUrl = dishUrl;
    }

    public Integer getHotStatus() {
        return hotStatus;
    }

    public void setHotStatus(Integer hotStatus) {
        this.hotStatus = hotStatus;
    }

    public Integer getPraiseTimes() {
        return praiseTimes;
    }

    public void setPraiseTimes(Integer praiseTimes) {
        this.praiseTimes = praiseTimes;
    }

    public Integer getIsSign() {
        return isSign;
    }

    public void setIsSign(Integer isSign) {
        this.isSign = isSign;
    }

    public Integer getIsNewDish() {
        return isNewDish;
    }

    public void setIsNewDish(Integer isNewDish) {
        this.isNewDish = isNewDish;
    }

    public Integer getSalesVolume() {
        return salesVolume;
    }

    public void setSalesVolume(Integer salesVolume) {
        this.salesVolume = salesVolume;
    }

    public Double getDishPrice() {
        return dishPrice;
    }

    public void setDishPrice(Double dishPrice) {
        this.dishPrice = dishPrice;
    }

    public Integer getDishType() {
        return dishType;
    }

    public void setDishType(Integer dishType) {
        this.dishType = dishType;
    }

    public String getDishDescription() {
        return dishDescription;
    }

    public void setDishDescription(String dishDescription) {
        this.dishDescription = dishDescription;
    }
}