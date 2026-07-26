#!/bin/bash
# 案鉴日更流水线 - 每天自动生成一条案例故事+视频脚本
# 用法: bash daily_case.sh <案例编号> <案例名称>
# 示例: bash daily_case.sh 003 "预付卡跑路"

echo "========================================="
echo "  案鉴日更流水线 v1.0"
echo "  生成案例 #$1: $2"
echo "========================================="

# 1. 创建当天案例目录
DATE=$(date +%Y-%m-%d)
DIR="/Users/guoqiangliang/.openclaw/workspace/case-stories"
mkdir -p "$DIR"

echo "✅ 目录就绪: $DIR"

echo ""
echo "📋 下一步你需要手动完成:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "1. 用浏览器打开裁判文书网，搜索相关关键词"
echo "2. 找 2-3 个相关判例作为素材来源"
echo "3. 把案号发给AI → 自动生成故事稿件"
echo "4. AI生成 → 人工润色 → 发布"
echo ""
echo "📤 发布清单:"
echo "  □ 微信公众号/小红书 发图文"
echo "  □ 抖音/快手 发短视频（58-90秒）"
echo "  □ B站 发深度版（3-5分钟）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📁 输出文件:"
echo "  $DIR/$(printf "%03d" $1)-$2.md"
echo "  $DIR/$(printf "%03d" $1)-视频脚本-$2.md"
echo "========================================="
