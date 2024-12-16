---
> demo
+--------------------+
| Docker CLI         |   <==> 用戶輸入指令 (docker run, docker build 等)
+--------------------+
        |
        v
+--------------------+
| Docker Daemon      |   <==> 負責執行 Docker 任務 (啟動容器, 建立網路等)
+--------------------+
        |
        +----------------------------+
        |                            |
        v                            v
+--------------------+    +--------------------+
| Docker Images      |    | Docker Containers  |
| 應用模板 (只讀)     |    | 運行中的實例 (可變)  |
+--------------------+    +--------------------+
---

docker desktop building nginx server
> ![image](https://github.com/user-attachments/assets/978344ef-66c2-459d-be29-d829c1f145d6)

# 1.install docker desktop下載與安裝：
> ![image](https://github.com/user-attachments/assets/1d7981a3-a428-4ec0-b7aa-f7575e86583e)

- 確保已啟用 WSL 2，並將其設置為預設版本：
  > wsl --set-default-version 2
- Docker 的版本號：
  > docker --version
- 下載官方的 Nginx 映像並啟動容器：
  > docker run -d -p 8080:80 --name my_nginx nginx
- 檢查運行狀態：
  > docker ps
- 測試應用：
  > http://localhost:8080
  > ![image](https://github.com/user-attachments/assets/4f87b2c7-85d0-48ae-b3b8-f6f80d5f6df7)

# 2. 運行第一個容器:
> - Docker進入目前的桌面![image](https://github.com/user-attachments/assets/420d4ae2-6e1f-419b-8502-1cc8b1cae3f1)
> - 建立專案目錄：C:\Users\2019051401\Desktop\demo
        > ![image](https://github.com/user-attachments/assets/25980144-f950-4738-a861-8b64ce55eb79)
> - 完成前置準備後

# 3.啟動 Docker 容器:
> cd C:\Users\2019051401\Desktop\demo
> docker-compose up -d

# 4.驗證運行網頁
> 1.檢查 Nginx：http://localhost:8080
> 2.檢查 PostgreSQL：![image](https://github.com/user-attachments/assets/d54954e7-1fc4-4651-936d-9f2df3b148e7)

# 5.停止與清理容器
> - 停止
> docker-compose down

> - 清理---->刪除數據卷（如果需要重置 PostgreSQL 數據）：
> docker volume rm demo_postgres_data

# 6.日常管理
> - 檢查容器狀態：docker-compose ps
> - 查看日誌：
> docker-compose logs nginx
> docker-compose logs postgres

 


