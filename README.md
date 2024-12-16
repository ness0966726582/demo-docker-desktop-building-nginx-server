# demo
docker desktop building nginx server
> 啟動DOCKER(完成以下1.下載與安裝)
> ![image](https://github.com/user-attachments/assets/978344ef-66c2-459d-be29-d829c1f145d6)


# 1.install docker desktop下載與安裝：
- 根據操作系統 (Windows/macOS) 下載 Docker Desktop 並安裝。
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




- 啟動 Docker Desktop：檢查右下角 Docker 圖標是否綠色。
![image](https://github.com/user-attachments/assets/4272978e-3b52-4239-8467-c2c6c2578954)

#  
