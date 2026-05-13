# SCADA Security Training（SCADA 資安訓練課件）

這個專案整理了一組用於 **SCADA / ICS（工控）資安訓練**的教材與實作 Lab。內容包含常見的工控通訊（如 Modbus）示範、網路層攻擊/嗅探練習（ARP、Telnet、FTP 等），並搭配 Docker / docker-compose 與 Shell 腳本，協助快速建立可重複的練習環境。

> 注意：本專案用於教學與授課/自學演練，請只在合法且授權的環境中使用。

## 專案結構

- `lab-setup/`：Lab 環境建置/初始化腳本（VM、Docker、Python 環境等）
  - 包含 `Dockerfile` 以及多個 `.sh` 腳本，協助快速配置訓練環境

- `modbus/`：Modbus 通訊示範
  - `modbus-server.py`：Modbus server（master/模擬器）示範
  - `modbus-client.py`：讀取本機 Modbus server 的資料範例
  - `modbus.pcapng`：封包擷取檔，可用 Wireshark 分析 Modbus 流量

- `arp_attack/`：ARP 攻擊教學與 Lab
  - `ARP_Attack.pdf`：課件/教材
  - `docker-compose.yml` / `docker-compose-arm64.yml`：建立練習拓樸
  - `start-server.sh` / `stop-server.sh`、`console-*.sh`：輔助操作腳本
  - `volumes/`：Lab 使用的資料卷

- `ftp_pw_sniffer/`：FTP 密碼嗅探 Lab
  - `Dockerfile`、`docker-compose.yml` / `docker-compose-arm64.yml`
  - `ftp.pcapng`：封包擷取檔（可用於分析明文帳密傳輸）
  - `console-*.sh`：輔助操作腳本

- `telnet_sniffer/`：Telnet 嗅探示例
  - `telnet.pcapng`：封包擷取檔
  - `read_telnet_package.sh`：讀取/解析封包的簡易腳本

- `syn_flood/`：SYN Flood Lab
  - `syn_flood.py`：SYN flood 相關腳本/示範
  - `Dockerfile`、`docker-compose.yml` / `docker-compose-arm64.yml`
  - `start-server.sh` / `stop-server.sh`、`console-*.sh`
  - `volumes/`

- `http/`：HTTP 相關練習素材
  - `http.pcapng`：封包擷取檔
  - `start-server.sh`：啟動簡易 server 的腳本

## 使用方式（建議流程）

1. 先從 `lab-setup/` 著手建立環境（Docker / VM / Python 等）。
2. 依照各模組資料夾內的腳本與教材進行練習。
3. 使用 Wireshark 開啟各資料夾中的 `.pcapng` 檔案觀察協定與攻擊流量。

## 語言與工具

- Shell（環境建置、啟動/停止、輔助腳本）
- Python（協定/攻擊示範程式）
- Docker / docker-compose（建立可重現的練習環境）
- Wireshark（分析 `.pcapng` 封包檔）

## 授權

本專案目前未在 GitHub 設定 License（預設為保留所有權利）。若你希望更清楚的使用/散佈規範，建議補上 LICENSE 檔。
