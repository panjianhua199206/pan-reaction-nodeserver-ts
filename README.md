# pan-reaction-nodeserver-ts

#### 介绍
node 反应测试系统服务   
web端： 
[码云：vue3-vite-app-frame-tsx](https://gitee.com/PanJianHua/vue3-vite-app-frame-tsx)   
[github：vue3-vite-app-frame-tsx](https://github.com/panjianhua199206/vue3-vite-app-frame-tsx)  

#### 技术栈
node + express + MySQL + mysqls + typeScript + nginx

### 架构文件结构
```
    ├─public
        │  ├─images
        │  └─js
        └─src
            ├─config
            ├─controllers 逻辑处理，数据加工
            ├─middlewares 
            ├─models SQL查询，取数据库数据
            ├─proxy
            ├─public
            ├─router
            └─services 业务逻辑判断

```

### sql
目前只封装了查询sql；   
后续考虑用mysqls插件