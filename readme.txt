FPGA-project

Authors: 106321059 106321068

Input/Output unit:
8DIPSW�}���A�Ψӱ���a1(�Ŧ��1,2,3)�Ϊ��a2(�����1,2,3)�X���A����}��(4)�O�P�w���@��Ĺ�C

16BITS LED�AD1�O�N���a1Ĺ�AD2�N����AD3�N���a2Ĺ�AD4�N����~(�i�঳�@��S���X���ΥX�h�L�@��)�C

4BITSW�AS1�Χ@�M���Ҧ��O���C

�\�໡��:
��쪱�a�i��q���A��Ĺ3�����o��ӧQ�C

�{���Ҳջ���:
module final2(
input [5:0] in, //0-2�O���a1 3-5�O���a2  ���ǬO�ŤM ���Y ��
input Clk,Clear, //Clk�P�w�ӧ������G,Clear�M���O��
output reg [1:0]A_count, //�p�⪱�a1������
output reg [1:0]B_count, //�p�⪱�a2����
output reg [3:0] ans  //�P�w�Ӧ^�XĹ���@�誺�O��
);


IO��FPGA/IO:
in��0,1,2�s��FPGA��8DISPSW�}���Ŧ��(1,2,3)
in��3,4,5�s��FPGA��8DISPSW�}���������(1,2,3)
Clk�s��FPGA��8DISPSW�}���������(4)
Clear�s��FPGA��4BITS SW��S1��m
A_count�s��FPGA��16 BITS LED�� D8,D9��m
B_count�s��FPGA��16 BITS LED�� D15,D16��m
ans�s��FPGA��16 BITS LED�� D1,D2,D3,D4��m
