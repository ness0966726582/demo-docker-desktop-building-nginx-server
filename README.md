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
# 前置作業
> 將REPO下載存放桌面 -> 開啟Docker Desktop -> 進行以下指令布建
- 放置桌面
> ![image](https://github.com/user-attachments/assets/7ecda93e-e3fd-4faf-acf1-aa2104073d9b)
- 啟動Docker(尚未佈建...請先完成"前置作業1~5")
  - 1.2.1 取得專案資料的路徑:
    > cd C:\Users\2019051401\Desktop\demo-docker-desktop-building-nginx-server\Demo
  - 1.2.2 啟動建立 docker-compose.yml 中定義的所有服務:
    > docker-compose up -d
  > ![image](https://github.com/user-attachments/assets/21280c7a-ed52-45b1-bac3-8277f2b50823)

# 前置作業1~5 (若已完成可跳過)
- 前置作業1 -> 確保已啟用 WSL 2，並將其設置為預設版本：
  > wsl --set-default-version 2
- 前置作業2 -> Docker 的版本號：
  > docker --version
- 前置作業3 -> 下載官方的 Nginx 映像並啟動容器：
  > docker run -d -p 8080:80 --name my_nginx nginx
- 前置作業4 -> 檢查運行狀態：
  > docker ps
- 前置作業5 -> 測試應用：
  > http://localhost:8080
  > ![image](https://github.com/user-attachments/assets/4f87b2c7-85d0-48ae-b3b8-f6f80d5f6df7)
以上完成環境的容器測試..

# 1.容器控制指令(停止/啟動)
1.1 停止所有容器指令:
> docker stop $(docker ps -q)

1.1.2 停止並刪除由該 docker-compose.yml 定義的服務:
> docker-compose down

1.2 啟動Demo的容器指令:
> ps.此指令會啟動以下容器：
- 1.demo_postgres：PostgreSQL 資料庫容器。
- 2.demo_nginx（或其他 Nginx 容器名稱）：Nginx 伺服器容器。

1.2.1 取得路徑:
> cd C:\Users\2019051401\Desktop\demo

1.2.2 啟動建立 docker-compose.yml 中定義的所有服務: 
> docker-compose up -d

2.1Docker Desktop畫面
> ![image](https://github.com/user-attachments/assets/ad7f5be9-f4fc-4fde-a0bf-689977b6814d)


# 3.容器控制指令(刪除)
3.1 檢查未啟用的容器
> docker ps -a --filter "status=exited"

3.2 判斷哪些是 Demo 相關的容器指令:
> docker ps --filter "name=demo"

3.3 如需刪除停止的容器指令:
> docker container prune

docker desktop building nginx server
> ![image](https://github.com/user-attachments/assets/978344ef-66c2-459d-be29-d829c1f145d6)

# 4.DBEAVER畫面
![image](https://github.com/user-attachments/assets/92b84856-dbb9-475c-9287-98be124b88d7)
![image](https://github.com/user-attachments/assets/dd052960-ec4b-4132-8283-6e7df9e5775a)



 


