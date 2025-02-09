#!/bin/bash

# Danh sách các URL của các repository bạn muốn gộp
REPOS=(
    "https://github.com/Kanvad/Merry_Christmas1.git"
    "https://github.com/Kanvad/Merry_Christmas2.git"
    "https://github.com/Kanvad/Merry_Christmas3.git"
    "https://github.com/Kanvad/Merry_Christmas4.git"
)

# Lặp qua từng repo trong danh sách
for REPO in "${REPOS[@]}"; do
    # Lấy tên repo từ URL
    REPO_NAME=$(basename "$REPO" .git)

    # Clone repo vào thư mục riêng
    git clone "$REPO" "$REPO_NAME"
done

echo "Đã gộp các repository thành công"
