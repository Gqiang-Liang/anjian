#!/usr/bin/env python3
"""
案鉴视频工坊 - 本地开发服务器
带 COOP/COEP 头支持（FFmpeg.wasm 需要）
"""
import http.server
import socketserver
import sys

PORT = int(sys.argv[1]) if len(sys.argv) > 1 else 8899

class Handler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        # FFmpeg.wasm 需要 Cross-Origin-Isolation
        self.send_header('Cross-Origin-Opener-Policy', 'same-origin')
        self.send_header('Cross-Origin-Embedder-Policy', 'require-corp')
        self.send_header('Access-Control-Allow-Origin', '*')
        super().end_headers()
    
    def do_OPTIONS(self):
        self.send_response(200)
        self.end_headers()

Handler.extensions_map.update({
    '.wasm': 'application/wasm',
})

httpd = socketserver.TCPServer(("", PORT), Handler)
print(f"🚀 案鉴服务器已启动 → http://localhost:{PORT}")
print(f"   (按 Ctrl+C 停止)")
try:
    httpd.serve_forever()
except KeyboardInterrupt:
    print("\n服务器已停止")
