# ⚖️ 案鉴 - 判例故事视频工坊

每天一个判例故事，发现法律缝隙里的机会。

## 功能

- 📝 **故事编辑器** — 三段式判例故事（故事→法律课→商机）
- 🔊 **TTS配音** — Web Speech（免费） / OpenAI TTS（高质量MP3导出）
- 🎨 **画面生成** — Canvas渲染（免费，5种主题） 
- 🎬 **视频合成** — 浏览器内 FFmpeg.wasm 合成 MP4
- 🔐 **隐私安全** — API Key 仅存储在浏览器本地

## 使用

[https://你的用户名.github.io/anjian/](https://你的用户名.github.io/anjian/)

或者本地运行：

```bash
cd webapp
python3 server.py 8899
# 打开 http://localhost:8899
```

## 流程

1. 注册/登录（本地存储）
2. 🔑 配置 API Key（可选，不配也能用免费功能）
3. 📚 创建/编辑案例
4. 🎬 视频工坊：4步流水线
   - Step 1: 编辑故事 + 拆分场景
   - Step 2: 生成配音
   - Step 3: 生成画面
   - Step 4: FFmpeg 合成 MP4

## 技术栈

- 纯前端，无后端依赖
- FFmpeg.wasm（浏览器端视频合成）
- Web Speech API / OpenAI TTS
- Canvas 2D 渲染引擎
- localStorage 数据存储

## 隐私

- 所有数据存储在浏览器 `localStorage`
- API Key 仅在调用对应服务时使用，不会被发送到第三方
- 无需注册任何第三方账户即可使用基础功能
