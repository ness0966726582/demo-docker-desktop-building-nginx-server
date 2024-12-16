# 停止所有容器指令:
> docker stop $(docker ps -q)

# 啟動Demo的容器指令:
> ![image](https://github.com/user-attachments/assets/ad7f5be9-f4fc-4fde-a0bf-689977b6814d)
- 1.取得路徑:
> cd C:\Users\2019051401\Desktop\demo
- 2.啟動 docker-compose.yml 中定義的所有服務。
> docker-compose up -d

ps.此指令會啟動以下容器：
- demo_postgres：PostgreSQL 資料庫容器。
- demo_nginx（或其他 Nginx 容器名稱）：Nginx 伺服器容器。

# 如需刪除停止的容器指令:
> docker container prune


# 判斷哪些是 Demo 相關的容器指令:
> docker ps --filter "name=demo"

# 如何將不必要的容器關閉?

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

![image](https://github.com/user-attachments/assets/87755f46-cffe-4182-b612-5372891f8b53)

# 7.DBEAVER畫面
![image](https://github.com/user-attachments/assets/92b84856-dbb9-475c-9287-98be124b88d7)
![image](https://github.com/user-attachments/assets/dd052960-ec4b-4132-8283-6e7df9e5775a)



 


