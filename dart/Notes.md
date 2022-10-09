
# Learn dart programming


### Kieu suy luan: ...

### Kieu An toan Type Safe? ...

? Tai sao lai nguy hiem khi su dung kieu dynamic ...

? So sanh khai bao bien dang dynamic vs var: ...


? var khong phai la 1 type ma no chi la tu khoa de thong bao voi bo STATIC DART ANALYZER

### install dart sdk

- for window <- chocolate: choco install dart-sdk and set env var
- for mac <- using brew: brew install dart


### create project with dart
+ dart create console-full console-full-project

### to debug:
 devtools -> open 127.0.0.1:9100/?#/? -> dart run --observe --pause-isolates-on-start -> get url then copy and paste in browser


### 43:44 - (4.2) Dart Packages
- What is a dart package??
-> 

#### Khai niem ve dart project la khong thuc su ton tai
#### Va thuat ngu su dung de thay the la dart package
- Bay gio chung ta hay tham chieu du an dart sang dart package
- Dart package la thanh phan chinh cua he sinh thai dart
- va he sinh thai nay se lam viec xoay quanh dart package
- co 1 trang chua chua cac packages ma cac nha phat trien tren toan the gioi tap hop va tai len
-> do la pub.dev

- Goi get api -> 'http'
- goi phan tich cu phap thanh json -> 'json_seriallizable' 
- Luu tru o database o cuc bo -> goi 'hive'
-- lenh dart pub -> chua cac lenh phu khac lien quan den viec xu ly package

### quan ly cac goi trong ung dung
- viec nay duoc thuc hien tren file pubspec.yaml
- khi khai bao cac package vao trong file nay ta can thuc thi lenh dart pub get de lay ve su dung

### Moi quan he giua package va library
- 1 package co the chua 1 hoac nhieu library
- thu vien quan trong la phan duy nhat cua goi co the truy cap cong khai cho moi nguoi
- gia su 1 package duoc tai len pub.dev -> chung ta co thu muc bin la nguoi khac khong the truy cap duoc.
vi tat ca nhung gi nguoi khac co the truy cap duoc nam trong thu muc lib 


### bo may phan tich tinh static ANALYZER:
- cong viec la xem qua ma va bao hieu bat ky canh bao va loi tiem an trong thoi gian thuc
- Cau hoi dat ra la lam the nao ma may phan tich tinh la duoc duoc dieu nay?
-> cau tra loi la ket qua phai dap ung nam trong tap hop duoc xac dinh truoc qui tac va duoc goi la rules lint 
va qui trinh nay duoc goi la linting 

xem xet file: alnalysis_options.yaml
-> day la tep trinh phan tich tinh 
- phai hieu cach ma may phan tich tinh quet ma cua ban nhap.


### Test
- do la nhung doan ma ma devloper viet de dam bao cac tinh nang


### Qui trinh Run cua program Dart
thuat ngu JIT va AOT
- JIT duoc thiet ket chu yeu cho giai doan phat trien
- AOT duoc thiet ke cho qua trinh san xuat
#### DEVELOPMENT PHASE:


### how does dart run a program?
- source -> .... -> ... -> [running]

- Gioi thieu ve Dart VM
  - The runtime system
  - development experience components
    + debug
    + Host reload
  - JIT and AOT Compilation Pipelines

### Running the dart code from a snapshot
- lenh running va show time: 'time {dart run}'







