#!/bin/bash

# Chạy blum-proxy-v2.js
echo "Đang chạy blum-proxy-v2.js..."
node blumv61/blum-proxy-v2.js &

# Chạy vooi-proxy.py
echo "Đang chạy vooi-proxy.py..."
cd vooi2 && poetry run python vooi-proxy.py && cd .. &

# Chạy tsubasa-proxy.js
echo "Đang chạy tsubasa-proxy.js..."
node tsubasa3-fix2/tsubasa-proxy.js &

# Chạy birds-proxy.js
echo "Đang chạy birds-proxy.js..."
node birds-sui/birds-proxy.js &

# Chạy clayton_proxy.js
echo "Đang chạy clayton_proxy.js..."
node clayton/clayton_proxy.js &

# Chạy mat-proxy.js
echo "Đang chạy mat-proxy.js..."
node matchainv2/mat-proxy.js &

# Đợi tất cả các tiến trình con kết thúc
wait

echo "Tất cả các script đã chạy xong."
