# VietQR-CMD-WINDOW
Tạo VietQR dưới dạng window cli
Made By Anh2Ten With Love <3
Nếu có bất kì vấn đề gì vui lòng liên hệ Email:
contact@dailythuonghien.com

# API Tạo Mã Thanh Toán: 
curl -L -X GET "https://api.quanlybanhang.store/qrpay/?account=7788652005&amount=10000&info=hi&bank=MBBank"

-Note: Sau khi tạo bạn phải encode kết quả thành qr 

### Tham Số Yêu Cầu
- **account** (string): Số tài khoản ngân hàng nhận thanh toán.
- **amount** (int): Số tiền cần thanh toán.
- **info** (string): Thông tin bổ sung hoặc mô tả cho thanh toán.
- **bank** (string): Tên ngân hàng.
 
### Các bank khả dụng 😍
POST đến api https://api.quanlybanhang.store/qrpay/
api sẽ trả về các giá trị mà tham số bank có thể nhận 
dưới đây là mẫu các bank:
["VietinBank","Vietcombank","BIDV","Agribank","OCB","MBBank","Techcombank","ACB","VPBank","TPBank","Sacombank","HDBank","VietCapitalBank","SCB","VIB","SHB","Eximbank","MSB","CAKE","Ubank","Timo","ViettelMoney","VNPTMoney","SaigonBank","BacABank","PVcomBank","Oceanbank","NCB","ShinhanBank","ABBANK","VietABank","NamABank","PGBank","VietBank","BaoVietBank","SeABank","COOPBANK","LienVietPostBank","KienLongBank","KBank","KookminHN","KEBHanaHCM","KEBHANAHN","MAFC","Citibank","KookminHCM","VBSP","Woori","VRB","UnitedOverseas","StandardChartered","PublicBank","Nonghyup","IndovinaBank","IBKHCM","IBKHN","HSBC","HongLeong","GPBank","DongABank","DBSBank","CIMB","CBBank"]
