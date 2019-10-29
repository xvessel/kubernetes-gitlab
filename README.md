# Gitlab Atop Kubernetes

## Create

```
$ ./install.sh
```

## Delete

```
$ ./uninstall.sh
```

## 修改gitlab root账号密码方法:

```
//进入gitlab的安装目录
root@gitlab-server:~# cd /home/git/gitlab
//切换到gitlab运行账户git
git@gitlab-server:~# su git
git@gitlab-server:~# bundle exec rails console production
Loading production environment (Rails 4.2.6)
irb(main):001:0> u = User.where(email: 'admin@example.com').first
//上行中 email 为gitlabuser账户。重置默认的管理员账户可以直接使用u = User.where(id: 1).first
irb(main):002:0> u.password = 'your new password' //密码必须至少8个字符
irb(main):007:0>u.save!  //叹号必须要输入，如没有问题返回true。
quit //退出
sudo service gitlab restart //重启gitlab使用新密码登录即可
```
