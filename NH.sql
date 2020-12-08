SET NAMES UTF8;
DROP DATABASE IF EXISTS nh;
CREATE DATABASE nh CHARSET=UTF8;
USE nh;

/**用户信息**/
CREATE TABLE nh_emp(
  eid INT PRIMARY KEY AUTO_INCREMENT,   #用户编号
  ename VARCHAR(32),                    #用户姓名
  epassword VARCHAR(32),                #用户密码
  saleId VARCHAR(2000)                  #订单编号
);

/**用户头像**/
CREATE TABLE nh_emp_pic(
  epid INT PRIMARY KEY AUTO_INCREMENT,  #图片编号
  ep_eid INT,                           #用户编号
  epsrc VARCHAR(128)                    #图片路径
);


/**菜品分类**/
CREATE TABLE nh_class(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  cname VARCHAR(32)
);
/**菜品信息**/
CREATE TABLE nh_plate(
  pid INT PRIMARY KEY AUTO_INCREMENT,  #菜品编号
  pname VARCHAR(32),                   #菜品名称
  classId INT,                         #所属分类编号
  price DECIMAL(10,2),                 #菜品价格
  is_recommand BOOLEAN                 #是否推荐菜
);

/**菜品图片**/
CREATE TABLE nh_plate_pic(
  ppid INT PRIMARY KEY AUTO_INCREMENT, #图片编号
  pp_pid INT,                          #菜品编号
  ppsrc VARCHAR(128)                   #图片路径
);


/**销售订单**/
CREATE TABLE nh_sale(
  sid INT PRIMARY KEY AUTO_INCREMENT,  #订单编号
  empId INT,                           #用户编号
  stime DATE,                          #销售日期
  sprice DECIMAL(10,2),                #订单价格
  plaId VARCHAR(200)                   #订单菜品
);