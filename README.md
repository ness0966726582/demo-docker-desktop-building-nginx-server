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
> 啟動DOCKER(完成以下1.下載與安裝)
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

#  2. 運行第一個容器:
