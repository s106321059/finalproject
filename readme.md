FPGA-project

Authors: 106321059 106321068

Input/Output unit:
8DIPSW開關，用來控制玩家1(藍色方1,2,3)及玩家2(紅色方1,2,3)出拳，紅色開關(4)是判定哪一方贏。
![image](https://github.com/s106321059/finalproject/blob/master/8bitsw.PNG)

16BITS LED，D1是代表玩家1贏，D2代表平手，D3代表玩家2贏，D4代表錯誤(可能有一方沒有出拳或出多過一個)。
![image](https://github.com/s106321059/finalproject/blob/master/led.PNG)

4BITSW，S1用作清除所有記錄。

![image](https://github.com/s106321059/finalproject/blob/master/4BITsw.PNG)

功能說明:
兩位玩家進行猜拳，先贏3次的得到勝利。

程式模組說明:

module final2(

input [5:0] in, //0-2是玩家1 3-5是玩家2  順序是剪刀 石頭 布

input Clk,Clear, //Clk判定該局的結果,Clear清除記錄

output reg [1:0]A_count, //計算玩家1的分數

output reg [1:0]B_count, //計算玩家2分數

output reg [3:0] ans  //判定該回合贏的一方的記錄
);


IO到FPGA/IO:

in的0,1,2連到FPGA的8DISPSW開關藍色方(1,2,3)

in的3,4,5連到FPGA中8DISPSW開關的紅色方(1,2,3)

Clk連到FPGA中8DISPSW開關的紅色方(4)

Clear連到FPGA中4BITS SW中S1位置

A_count連到FPGA中16 BITS LED中 D8,D9位置

B_count連到FPGA中16 BITS LED中 D15,D16位置

ans連到FPGA中16 BITS LED中 D1,D2,D3,D4位置

https://drive.google.com/file/d/1E0SvQZ6sXrsiiYVWmhgqVNSjfE6-fJp6/view?usp=sharing
<a href="https://drive.google.com/file/d/1E0SvQZ6sXrsiiYVWmhgqVNSjfE6-fJp6/view?usp=sharing
" title="Demo Video" rel="nofollow">< alt="Demo Video" width="500" style="max-width:100%;"></a>

