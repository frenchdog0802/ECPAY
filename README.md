# ECPAY

技術文件 https://www.ecpay.com.tw/Content/files/gw_p110.pdf


# 名詞解釋
### 代收(Collect / payin)
End User還錢，以第三方支付的角度收款進來
### 代付(Payout/Settlement)
End user借錢，以第三方支付的角度撥款出去
### 平台(運營)
一個第三方支付
例如: YFB、CandyPay
### 客戶
甲方，買我方產品的人，一個客戶可能買多套產品，一套產品一個後臺、一個app
### 商戶
客戶(甲方)在第三方支付開的帳號，一個客戶可以在多個平台開多個商戶，並在dlh後台設定，讓終端使用者借還款時使用其中一個商戶對該商戶所在平台付錢or取錢
### 上分
到帳的意思，比方商戶在第三方支付儲值，錢給了，卻在第三方系統沒看到餘額增加，就會去問第三方: 為什麼還沒幫我們"上分"?
簡單來說就是實際給錢後，系統數字有同步的意思




#流程
## 借款/代付(Payout/Settlement)
1. End User在APP申請借款，發請求到dlh
2. dlh搜尋該user相關資料(該user資料、狀態、銀行帳戶資料等等)發到pay-center
3. pay-center選出可用的商戶(不是app user決定)，並紀錄該代付訂單的狀態
4. pay-center根據用戶訊息建立好Order訂單
5. pay-center將訂單發至總控(BS)，只是一個轉發功能，因為平台通常會設定IP白名單，通常只請他們加總控的IP，所以每個產品都透過總控轉發
6. 總控轉發請求給平台
7. 第三方平台發回應給總控
8. 總控把回應傳回pay-center
9. 成功的話，其中應要帶有平台方的單號，這段pay-center應更新代付訂單狀態
10. 等待平台發callback，不一定會馬上，也不一定會成功，比如可能商戶餘額不足，或是它們的銀行端出問題不能撥款，總之有個結果時才會發callback告訴我們
11. 收到callback，視成功或失敗更新代付單狀態



## 付款/代收 (Collection / payin)
1. End User在App申請還款
2. dhl搜尋該user相關資料(該user資料、狀態、銀行帳戶、訂單平台資料等等)發到pay-center
3. pay-center 根據 dlh 傳來的資料，建立好Order訂單
4. pay-center 將訂單轉發到總控(BS)
5. 總控向平台發出代收請求
6. 平台回傳 response 到總控 ，
7. 總控再回傳到 paycenter。回應中會有付款連結，paycenter這段視成功與否更新訂單狀態，並將資料回傳到 dlh 再到app
8. 將 User 轉導到付款畫面
9. User 付款後，平台會發出callback至總控
10. 總控再發至 paycenter，paycenter要更新訂單狀態


































































