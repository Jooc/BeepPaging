## 功能实现：



#### Button（上）：引入了微信API, 实现了分享功能，能够创建分享链接并跳转至微信界面

	1. 可以切换分享至**对话框**或**朋友圈**
 	2. 可以自定分享文本内容





#### Button（下）：实现了基于UITableView 的仿朋友圈展示功能

1.  分了两个section 

   ​	section1 展示host 用户的背景、id 和头像

   ​	section2 展示好友的头像、id 和动态

   

2. 虽然朋友圈信息是本地预设内容，但依然模拟了真实的拉去动态并展示的框架，设计预留了json 读取的接口。

   

3. 时间原因没有为每条动态分别找图片，也没有实现展示图片的CollectionView。



#### 所有布局均使用了AutoLayout