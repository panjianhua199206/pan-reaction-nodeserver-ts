/*
 Navicat Premium Data Transfer

 Source Server         : NodeMySQL
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : reaction

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 11/10/2020 15:51:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `id` int(0) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tags` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tagsId` int(0) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NULL DEFAULT NULL,
  `detail` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (1, '2020 js最强剖析', 'JavaScript', 1, '潘帅为你剖析js最强底层', '2020-06-05 20:42:11', NULL, '在1995年时，由Netscape公司的Brendan Eich，在网景导航者浏览器上首次设计实现而成。因为Netscape与Sun合作，Netscape管理层希望它外观看起来像Java，因此取名为JavaScript。但实际上它的语法风格与Self及Scheme较为接近。[1] \r\n        为了取得技术优势，微软推出了JScript，CEnvi推出ScriptEase，与JavaScript同样可在浏览器上运行。为了统一规格，因为JavaScript兼容于ECMA标准，因此也称为ECMAScript。\r\n\r\n \r\n\r\n释义\r\n\r\n         ECMAScript是一种由Ecma国际（前身为欧洲计算机制造商协会,英文名称是European Computer Manufacturers Association）通过ECMA-262标准化的脚本程序设计语言。这种语言在万维网上应用广泛，它往往被称为JavaScript或JScript，但实际上后两者是ECMA-262标准的实现和扩展。\r\n\r\n发展历史\r\n\r\n \r\n\r\n \r\n\r\n         1998年6月，ECMAScript 2.0版发布。\r\n \r\n\r\n         1999年12月，ECMAScript 3.0版发布，成为JavaScript的通行标准，得到了广泛支持。\r\n \r\n\r\n         2007年10月，ECMAScript 4.0版草案发布，对3.0版做了大幅升级，预计次年8月发布正式版本。草案发布后，由于4.0版的目标过于激进，各方对于是否通过这个标准，发生了严重分歧。以Yahoo、Microsoft、Google为首的大公司，反对JavaScript的大幅升级，主张小幅改动；以JavaScript创造者Brendan Eich为首的Mozilla公司，则坚持当前的草案。\r\n \r\n\r\n         2008年7月，由于对于下一个版本应该包括哪些功能，各方分歧太大，争论过于激进，ECMA开会决定，中止ECMAScript 4.0的开发，将其中涉及现有功能改善的一小部分，发布为ECMAScript 3.1，而将其他激进的设想扩大范围，放入以后的版本，由于会议的气氛，该版本的项目代号起名为Harmony（和谐）。会后不久，ECMAScript 3.1就改名为ECMAScript 5。\r\n \r\n\r\n         2009年12月，ECMAScript 5.0版正式发布。Harmony项目则一分为二，一些较为可行的设想定名为JavaScript.next继续开发，后来演变成ECMAScript 6；一些不是很成熟的设想，则被视为JavaScript.next.next，在更远的将来再考虑推出。\r\n \r\n\r\n         2011年6月，ECMAscript 5.1版发布，并且成为ISO国际标准（ISO/IEC 16262:2011）。\r\n \r\n\r\n         2013年3月，ECMAScript 6草案冻结，不再添加新功能。新的功能设想将被放到ECMAScript 7。\r\n \r\n\r\n         2013年12月，ECMAScript 6草案发布。然后是12个月的讨论期，听取各方反馈。\r\n \r\n\r\n         ECMA的第39号技术专家委员会（Technical Committee 39，简称TC39）负责制订ECMAScript标准，成员包括Microsoft、Mozilla、Google等大公司。TC39的总体考虑是，ES5与ES3基本保持兼容，较大的语法修正和新功能加入，将由JavaScript.next完成。');
INSERT INTO `articles` VALUES (2, '2020 TS 最强剖析', 'TypeScript', 2, '潘小哥为你剖析TS最强底层', '2020-10-11 11:56:51', NULL, 'TypeScript是一种由微软开发的自由和开源的编程语言。它是JavaScript的一个超集，而且本质上向这个语言添加了可选的静态类型和基于类的面向对象编程。安德斯·海尔斯伯格，C#的首席架构师，已工作于TypeScript的开发。[1-4] \r\n         TypeScript扩展了JavaScript的语法，所以任何现有的JavaScript程序可以不加改变的在TypeScript下工作。TypeScript是为大型应用之开发而设计，而编译时它产生 JavaScript 以确保兼容性。[5] \r\n         TypeScript 支持为已存在的 JavaScript 库添加类型信息的头文件，扩展了它对于流行的库如 jQuery，MongoDB，Node.js 和 D3.js 的好处。\r\n发布\r\n         2013年6月19日，在经历了一个预览版之后微软正式发布了正式版TypeScript 0.9，向未来的TypeScript 1.0版迈进了很大一步。 \r\n         TypeScript 0.9迎来了一些重大的新功能，除对语言本身特性进行了扩充之外，还更加完善地整合了Visual Studio，微软开发部副总裁Soma Somasegar发布帖子称，新版本的TypeScript在交互式性能方面有了戏剧性的提高和改善。\r\n\r\n         与JavaScript相比，TypeScript[15]  进步的地方包括：加入注释，让编译器理解所支持的对象和函数，编译器会移除注释，不会增加开销；增加一个完整的类结构，使之更像是传统的面向对象语言\r\n \r\n       下面的示意图，描述的是我们有一组数据A，和一数据B，B是A的超集，B包含了A的全部数据（你不可以说A就是B，B就是A）。\r\n\r\n        那么TypeScript和ECMAScript6的情况是一样的，如果你能明白上述道理的情况下：\r\n\r\n\r\n\r\n        其实这两者的差异并不是很大，两者有很多共性，如果你熟悉Typescript，你很容易就能够写出ECMAScript6，反之亦然，但是如果你是一个初学者不明白他们俩的区别，建议你还是应该从细节学习Typescript和ECMAscript6。\r\n\r\n        我们在开发中具体有哪些区别呢？下面我们以IONIC2工程为例，\r\n\r\n        如果你使用JS开发，你需要这样建立工程：\r\n\r\n        ionic start MyApp Blank --v2\r\n\r\n        那么你的文件扩展名应该是*.js,如果你使用webstrom开发，别忘了更改javascript的编译配置，否则在开发中就会显示错误了\r\n\r\n\r\n\r\n那么代码应该是：\r\n\r\n\r\n\r\n        如果你使用的是Typescript，那么应该使用如下命令建立工程，确保你生成的文件都是*.ts,顺便说一句webstrom对于TS的支持很好，就是智能提醒有点慢。\r\n\r\n        ionic start MyApp blank --v2 --ts\r\n\r\n \r\n\r\n而其中rootPage: any = HomePage;和构造期间的依赖注入constructor(platform: Platform)是Typescript专有的。\r\n\r\n具体其中的区别，我们下面详细展示：\r\n\r\n//EM6声明局部变量\r\nlet myThing = \"hello\"; //Typescript声明局部变量 let myThing: any = \"hello\"; \r\n那么针对于依赖注入就更不一样了，我还曾经高混过，其实小明很笨！\r\n\r\n//EM6\r\nstatic get parameters() { return [[Platform], [Http]]; } constructor(platform, http){ }\r\n//Typescript\r\n \r\nconstructor(platform: Platform)\r\n        其实Ionic2团队默认使用Typescript开发，这里的原因也许只有你很正参与开发才会理解到的，所以如果你并未真正去了解他们，请不要发表意见。\r\n\r\n        另外TypeScript装饰器（decorator）是基于ES7的装饰器提案实现的，所以你就发现它们俩的差异性还不小呢');
INSERT INTO `articles` VALUES (3, 'vue3-vite-app-frame-tsx', 'Vue3', 3, '潘老哥为你搭建基于vue3+ vite +tsx框架', '2020-10-11 15:44:37', NULL, '# vue3-vite-app-frame-tsx\r\n* 脚手架新建 vue3项目 目前有2种流行脚手架，分别是 vite 和 @vue/cli。【本库使用vite构建,且只使用.tsx文件格式，去除.vue文件】   \r\n* 在 Vue-Cli 使用中，发现热更新和编译页面非常慢，所以Vue3.0作者放弃基于 Webpack 开发的脚手架，全新开发新的脚手架：Vite 。\r\n* 探索Vue3，后续熟悉Vue3新语法，待完善  \r\n* [本库-码云： https://gitee.com/PanJianHua/vue3-vite-app-frame-tsx](https://gitee.com/PanJianHua/vue3-vite-app-frame-tsx)  \r\n* [本库-github： https://github.com/panjianhua199206/vue3-vite-app-frame-tsx](https://github.com/panjianhua199206/vue3-vite-app-frame-tsx)\r\n* [node服务端-码云：pan-reaction-nodeserver-ts【待完善】](https://gitee.com/PanJianHua/pan-reaction-nodeserver-ts)   \r\n* [node服务端-github：pan-reaction-nodeserver-ts【待完善】](https://github.com/panjianhua199206/pan-reaction-nodeserver-ts)  \r\n\r\n#### 介绍\r\n1. 创建模式： yarn create vite-app {pro-name}   \r\n2. typeScript：   yarn add typescript @typescript-eslint/eslint-plugin @typescript-eslint/parser eslint eslint-plugin-vue -D\r\n\r\n### tsx\r\n* 参考：[Vue3.0实践：使用Vue3.0做JSX(TSX)风格的组件开发](https://blog.csdn.net/learn8more/article/details/107970726)  \r\n* 参考：[使用 JSX/TSX 开发 Vue3 组件](https://zhuanlan.zhihu.com/p/153387704)  \r\n* 参考：[vue3.0 tsx](https://iiong.com/vue3-use-notes/)  \r\n\r\n### vue-router  \r\n* yarn add vue-router@4.0.0-beta.13 [【可以到npm官网查vue-router最新版本】](https://www.npmjs.com/package/vue-router)   \r\n* 或 yarn add vue-router@next 【这是最新next版本】\r\n\r\n* 新建src/router/index.ts; 此时main.ts:   \r\n```\r\nimport { createApp } from \'vue\'; \r\nimport App from \'./App\';\r\nimport \'./index.css\'\r\nimport router from \'./router\';\r\n\r\ncreateApp(App).use(router).mount(\'#app\');\r\n```\r\n\r\n### vuex\r\n* yarn add vuex@4.0.0-beta.4 [【可以到npm官网查vuex最新版本】](https://www.npmjs.com/package/vuex)    \r\n\r\n* 新建src/store/index.ts; 此时main.ts:   \r\n```\r\nimport { createApp } from \'vue\'; \r\nimport App from \'./App\';\r\nimport \'./index.css\'\r\nimport router from \'./router\';\r\nimport store from \'./store\';\r\n\r\ncreateApp(App).use(router).use(store).mount(\'#app\');\r\n```\r\n\r\n### nginx \r\n* vue路由history模式刷新会报404错误，所以搭配nginx里的try_files指令；   \r\ntry_files file ... uri 或 try_files file ... = code   \r\n\r\n* 即： try_files $uri $uri/ /index.html;   \r\n```\r\nlocation / {\r\n    root   ../dist;\r\n    index  index.html index.htm;\r\n    try_files $uri $uri/ /index.html;   #匹配不到任何静态资源，跳到同一个index.html\r\n}\r\n```\r\n\r\n### less \r\n* yarn add less less-loader -D\r\n\r\n* less module 参考：[.tsx总结(vue+typescript+less+iview)](https://www.jianshu.com/p/8a8478ac3641)  \r\n* 其实只需在src/shim.d.ts添加   \r\n```\r\ndeclare module \"*.less\" {\r\n  const less: any;\r\n  export default less;\r\n}\r\n```\r\n\r\n### axios\r\n* yarn add axios  \r\n\r\n* 数据请求：get，post，delect，put...; application/x-www-form-urlencoded，application/json   \r\n* 上传文件: post ; multipart/form-data 文件二进制格式流\r\n\r\n### node服务端\r\n* [码云：pan-reaction-nodeserver-ts](https://gitee.com/PanJianHua/pan-reaction-nodeserver-ts)   \r\n* [github：pan-reaction-nodeserver-ts](https://github.com/panjianhua199206/pan-reaction-nodeserver-ts)  \r\n\r\n### aduio 音波\r\n* [HTML5 Canvas 实现简易 绘制音乐环形频谱图](https://www.jianshu.com/p/14f1a5af6dd6)\r\n\r\n### vite.config.ts\r\n* 参考：[vite.config.ts基础配置分享](https://www.cnblogs.com/Man-Dream-Necessary/p/13725049.html)  \r\n* 参考：[Vue3 配置文件vite.config.js——请求代理、第三方模块引用、别名alias](https://blog.csdn.net/hbiao68/article/details/108972775)');

SET FOREIGN_KEY_CHECKS = 1;
