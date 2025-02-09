#!/bin/bash

# Danh sách các URL của các repository bạn muốn gộp
REPOS=(
    "https://github.com/Kanvad/Merry_Christmas1.git"
    "https://github.com/Kanvad/Merry_Christmas2.git"
    "https://github.com/Kanvad/Merry_Christmas3.git"
    "https://github.com/Kanvad/Merry_Christmas4.git"
)

# Tạo một thư mục mới cho repo chính
# MAIN_REPO="files"
# mkdir $MAIN_REPO
# cd $MAIN_REPO

# Khởi tạo một repository Git mới
git init

# Lặp qua từng repo trong danh sách
for REPO in "${REPOS[@]}"; do
    # Lấy tên thư mục từ URL
    REPO_NAME=$(basename "$(dirname "$REPO")")

    # Clone repo vào thư mục riêng
    git clone "$REPO" "$REPO_NAME"

done

# Thêm tất cả các tệp vào repo chính
git add .

# Commit các thay đổi
git commit -m "Gộp các repository"

echo "Đã gộp các repository thành công vào $MAIN_REPO!"
