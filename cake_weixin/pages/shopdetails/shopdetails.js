// pages/shopdetails/shopdetails.js
Page({
    addToCart:function(){
        wx.navigateTo({
            url: '/pages/shopConfirm/shopConfirm'
        })
    },
  /**
   * 页面的初始数据
   */
  data: {
    caid:0,
    imgList: [
      {img_url:getApp().globalData.baseUrl + "/img/child15.png"},
      {img_url:getApp().globalData.baseUrl + "/img/child19.png"},
      {img_url:getApp().globalData.baseUrl + "/img/child10.png"},
      {img_url:getApp().globalData.baseUrl + "/img/child12.png"},

    ]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.caid = options.caid;
    console.log(this.caid);
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})