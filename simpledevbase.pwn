/*
======SIMPLE-BASE 2 DEV feito por Milton Manuel====
==========www.github.com/srmilton============
*/

#include <a_samp>
#include <sscanf2>
#include <streamer>
#include <zcmd>
#include <mapandreas>

//----------------------------------------------------------

#define COLOR_WHITE 		0xFFFFFFFF
#define COLOR_NORMAL_PLAYER 0xFFBB7777
#define COLOR_WHITE_BLUE    0x00FFFFFF
#define COLOR_YELLOW        0xFFFF00FF
#define COLOR_PURPLE        0xCC33FFFF
#define COLOR_GREEN         0x33AA33FF
#define MAX_ARVORES2        18

#define DIALOG_PETROLEIRO 1337
#define DIALOG_TESTE 1338
#define MAX_ARVORES 50
#define MAX_GALHOS 100
//========================================================
new isgod[MAX_PLAYERS];
new emprego[MAX_PLAYERS] = 0;
new count = 0;

new Float:lol2[MAX_PLAYERS];
new cargapetrol[MAX_PLAYERS] = 0;
new arvore[MAX_ARVORES] = 0;
new Text3D:textarvore[MAX_ARVORES];
new galho[MAX_GALHOS][3];
new arvorederrubada[MAX_ARVORES];
new arvorepronta[MAX_ARVORES];
new arvorecarro[MAX_VEHICLES][3];
new arvoresvendidas[MAX_PLAYERS];
new trabalhandomadeira[MAX_PLAYERS] = 0;
new oldskinmadeira[MAX_PLAYERS];
new Text:Cortando;
new Text:Limpando;
//new chavemadeira[MAX_PLAYERS];

//========================================================

new Float:ArvorePos[17][3] = {
{800.3810,-278.9672,18.2365},
{816.9814,-294.9196,21.7481},
{825.3140,-287.4872,22.5559},
{823.4926,-277.4471,21.6869},
{834.5132,-272.3479,22.6905},
{835.1557,-255.3035,20.0768},
{841.4957,-240.8487,20.0022},
{836.7208,-227.0849,19.3655},
{828.6051,-234.8468,19.1748},
{812.9694,-238.7454,18.4194},
{794.2218,-235.3261,16.6144},
{797.1671,-252.1240,16.8865},
{775.8781,-240.4609,14.2985},
{773.3309,-226.7111,14.2247},
{760.4531,-234.4140,12.3434},
{747.3829,-257.4077,11.0366},
{766.1882,-267.3286,12.9306}
};

main()
print("Gamemode Iniciado!");

public OnGameModeInit()
{
/*
    CreateDynamicObject(2208, -751.94312, -132.78120, 64.82240,   0.00000, 0.00000, 19.44000);
	CreateDynamicObject(1463, -757.46771, -133.99300, 65.15940,   0.00000, 0.00000, 20.71200);
	CreateDynamicObject(1463, -757.96271, -132.35800, 65.15940,   0.00000, 0.00000, 20.71200);
	CreateDynamicObject(2208, -754.73309, -133.76421, 64.82040,   0.00000, 0.00000, 19.44000);
	CreateDynamicObject(19793, -754.92358, -132.45020, 64.89840,   36.69600, 0.00000, -36.36900);
	CreateDynamicObject(915, -754.34448, -133.05251, 65.81490,   0.00000, 61.50000, 17.81000);
	CreateDynamicObject(1420, -754.17511, -133.53230, 65.32290,   0.00000, 0.00000, 19.25600);
	CreateDynamicObject(19793, -750.39722, -132.08000, 65.75740,   0.00000, 0.00000, -36.36900);
	CreateDynamicObject(19793, -754.40759, -132.78529, 64.89840,   36.69600, 0.00000, -73.86900);
	CreateDynamicObject(19793, -754.08063, -132.53529, 64.89840,   36.69600, 0.00000, -37.86900);
	CreateDynamicObject(19793, -754.40759, -132.31731, 64.89840,   36.69600, 0.00000, 45.00000);
	CreateDynamicObject(2033, -752.66461, -132.80251, 65.67220,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(341, -750.63788, -132.67551, 65.74690,   89.68300, 6.21600, 79.34200);
	CreateDynamicObject(341, -752.12457, -132.39679, 65.74690,   89.68300, 6.21600, -45.00000);
	CreateDynamicObject(1594, -747.53699, -130.15981, 65.29480,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19897, -753.38879, -133.03090, 65.69490,   0.00000, 0.00000, -45.00000);
	CreateDynamicObject(19896, -753.23682, -132.90289, 65.69490,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1485, -747.83319, -130.19980, 65.67550,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3027, -747.83319, -130.19980, 65.69750,   0.00000, 92.89100, 90.00000);
	CreateDynamicObject(930, -748.19250, -131.53546, 65.30320,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11730, -747.27881, -127.86520, 64.82270,   0.00000, 0.00000, -68.99200);
	CreateDynamicObject(11729, -747.03168, -128.54140, 64.82270,   0.00000, 0.00000, -68.99200);
	CreateDynamicObject(341, -747.55737, -128.01990, 65.08140,   0.00000, -37.53600, 18.22800);
	CreateDynamicObject(19873, -747.42419, -130.48210, 65.75030,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19621, -749.49768, -131.98790, 65.77670,   0.00000, 0.00000, 990.00000);
	CreateDynamicObject(3287, -743.87048, -128.14175, 69.34960,   0.00000, 0.00000, 18.58400);
	CreateDynamicObject(730, 790.04211, -226.54379, 14.87640,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(727, 742.45422, -251.23566, 9.32699,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(727, 761.04730, -229.50391, 11.48400,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(727, 780.25226, -223.99760, 14.11016,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(726, 850.25684, -224.43655, 19.06030,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(726, 847.29932, -236.87639, 19.11951,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(726, 837.18073, -244.16370, 18.81941,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(726, 833.12677, -276.15411, 22.01902,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(726, 823.18945, -235.47998, 17.85958,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(727, 845.37018, -251.98125, 19.45863,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(727, 829.21143, -253.56828, 18.67602,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(727, 833.68323, -263.82605, 20.05820,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(727, 820.11078, -244.38145, 17.95065,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(727, 832.21838, -288.09473, 22.59676,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(730, 815.20404, -274.00165, 19.20924,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(730, 815.02283, -254.09064, 17.96300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(730, 830.34863, -296.71616, 22.26894,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(730, 803.03076, -235.64485, 16.37256,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(730, 799.05902, -247.20979, 16.18956,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(726, 792.29645, -257.70129, 15.08418,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(730, 781.56653, -247.46510, 13.87857,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(730, 749.91516, -242.92062, 9.94828,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(730, 758.69501, -241.94258, 11.00872,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(730, 813.08411, -227.32259, 17.06122,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(727, 779.95209, -236.21452, 13.89576,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(727, 777.59399, -260.97137, 13.08335,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(726, 810.56171, -264.15750, 17.93045,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(726, 821.00323, -293.88446, 21.28896,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(726, 760.17804, -257.37082, 10.99996,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(730, 768.32599, -230.12306, 12.44416,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(730, 746.21179, -263.61038, 10.17181,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(831, 767.64539, -264.10327, 11.83294,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(832, 809.47229, -282.06277, 18.83035,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(832, 826.31366, -275.56479, 20.99522,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(833, 812.68750, -291.73694, 19.90589,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(833, 779.97791, -268.42404, 13.30464,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(833, 823.96594, -306.66779, 23.37169,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(834, 805.43927, -236.15767, 16.64580,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(834, 804.79376, -224.36775, 16.31634,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(834, 840.47223, -257.42709, 19.41553,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(834, 857.32410, -261.22397, 21.62193,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(834, 853.19025, -265.50616, 21.60644,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(835, 848.63922, -261.21542, 20.17528,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(835, 805.75378, -240.73521, 16.80827,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(835, 790.53870, -246.81880, 15.11650,   0.00000, 0.00000, 50.00000);
	CreateDynamicObject(835, 795.46094, -242.54059, 15.75863,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(836, 787.74042, -245.07353, 14.78153,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(838, 784.64746, -265.74176, 13.95079,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(841, 797.55182, -232.40797, 15.82582,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(848, 766.14569, -246.77209, 11.86723,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(726, 767.92877, -250.75430, 12.03029,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(730, 803.87170, -266.75864, 17.02019,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(730, 804.57196, -274.67059, 17.61783,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(727, 795.03229, -271.71548, 15.91469,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 791.93591, -273.81845, 15.66050,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 804.51093, -283.26178, 18.12863,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 816.04718, -285.72672, 20.05899,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 789.71771, -257.79388, 14.77246,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 754.37860, -263.46423, 10.84957,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 771.29456, -264.78708, 12.23205,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 824.50189, -269.13525, 20.35002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 814.82397, -251.20122, 17.91484,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 814.73560, -265.25977, 18.65454,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 812.56299, -275.76212, 18.94342,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 800.41425, -257.43900, 16.20803,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 797.87152, -236.95670, 15.98055,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 803.52728, -252.16824, 16.72342,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 807.16772, -231.69008, 16.67646,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 784.32086, -232.36554, 14.61025,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 768.90234, -227.55266, 12.58412,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 793.86420, -230.84830, 15.28509,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 821.46448, -235.53758, 17.81658,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 832.51788, -233.60446, 18.32583,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 850.26453, -242.31265, 19.48576,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 841.56610, -232.41386, 18.74991,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 852.99286, -234.89906, 19.56940,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 830.34064, -243.91809, 18.50185,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 845.25110, -270.74176, 21.78631,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 852.56042, -252.92131, 19.97122,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 851.31683, -269.11261, 21.73427,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 833.71277, -270.55438, 21.32298,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 858.93219, -273.26202, 24.12239,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 848.55109, -288.79822, 25.09603,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 842.02612, -296.47296, 24.68537,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 834.96558, -310.04028, 25.31430,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 786.79706, -246.12083, 14.63591,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 770.81512, -247.89729, 12.45385,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 761.81415, -234.07790, 11.50751,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 755.52252, -253.41780, 10.50302,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 776.37091, -255.22691, 13.07842,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 743.61865, -261.32239, 9.97615,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 753.04547, -241.07016, 9.85893,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 758.56940, -236.45964, 10.52063,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 762.59113, -263.95911, 11.46874,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(874, 783.35669, -270.37164, 13.66642,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3258, -924.59039, -491.92734, 13.95770,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3256, -965.81647, -522.57233, 2.74570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3637, -924.15942, -541.91882, 26.67800,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3259, -920.63672, -532.94910, 15.44270,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(17000, -917.01050, -493.00266, 20.33650,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3257, -963.65082, -516.99872, 15.17530,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3256, -930.43481, -490.50858, 19.32170,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3673, -949.97766, -541.88745, 26.72240,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1697, -961.89050, -511.62579, 30.75190,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1697, -961.89050, -522.87378, 30.75190,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1697, -961.89050, -516.95380, 30.75190,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3286, -962.59009, -504.96210, 24.65850,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3252, -965.56207, -511.55130, 29.39140,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3643, -937.45538, -491.03668, 29.66390,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3273, -910.40143, -487.53491, 24.83480,   0.00000, 0.00000, -6.00000);
	CreateDynamicObject(3273, -909.98743, -483.53491, 24.83480,   0.00000, 0.00000, -6.00000);
	CreateDynamicObject(3427, -910.34943, -526.84680, 25.18940,   0.00000, 0.00000, 893.25897);
	CreateDynamicObject(17015, -953.49200, -488.55014, 9.95030,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3643, -941.40741, -491.03671, 29.66390,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3643, -945.35938, -491.03671, 29.66390,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18715, -952.79755, -488.67453, 43.86678,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18981, -903.73969, -518.91559, 16.49200,   0.00000, 0.00000, -6.78900);
	CreateDynamicObject(18981, -905.72559, -535.58099, 16.49000,   0.00000, 0.00000, -6.78900);
	CreateDynamicObject(18766, -904.48407, -499.78339, 23.99390,   0.00000, 90.00000, -58.82500);
	CreateDynamicObject(18766, -902.75409, -504.21210, 23.99390,   0.00000, 90.00000, -78.52400);
	CreateDynamicObject(18766, -912.30731, -490.29031, 23.99190,   0.00000, 90.00000, -47.49900);
	CreateDynamicObject(18766, -904.61011, -499.57339, 23.99190,   0.00000, 90.00000, -58.82500);
	CreateDynamicObject(18981, -925.98810, -486.26651, 16.49000,   0.00000, 0.00000, 79.20000);
	CreateDynamicObject(18766, -912.16528, -490.48431, 23.98990,   0.00000, 90.00000, -47.49900);
	CreateDynamicObject(18766, -959.42261, -485.07629, 26.48910,   0.00000, 0.00000, 11.11800);
	CreateDynamicObject(18766, -943.19751, -483.38541, 26.48910,   0.00000, 0.00000, -6.22600);
	CreateDynamicObject(18766, -952.92401, -483.79910, 26.48710,   0.00000, 0.00000, 11.11800);
	CreateDynamicObject(18981, -966.98920, -497.79181, 16.49000,   0.00000, 0.00000, -14.11800);
	CreateDynamicObject(18766, -970.92029, -514.79669, 26.48710,   0.00000, 0.00000, 79.72700);
	CreateDynamicObject(18766, -971.35132, -524.56439, 26.48510,   0.00000, 0.00000, 95.22500);
	CreateDynamicObject(18766, -970.63129, -534.51642, 26.48510,   0.00000, 0.00000, 93.06500);
	CreateDynamicObject(18766, -970.01630, -541.93518, 23.98710,   0.00000, 90.00000, 97.92700);
	CreateDynamicObject(18766, -969.50830, -545.56219, 23.98910,   0.00000, 90.00000, 97.92700);
	CreateDynamicObject(18766, -967.12720, -547.79828, 23.99110,   0.00000, 90.00000, -4.40800);
	CreateDynamicObject(18981, -952.21552, -549.25562, 16.49200,   0.00000, 0.00000, 84.18300);
	CreateDynamicObject(18981, -927.43091, -549.37531, 16.49200,   0.00000, 0.00000, 95.25900);
	CreateDynamicObject(18766, -912.51837, -548.16681, 23.99310,   0.00000, 90.00000, 1.49100);
	CreateDynamicObject(18766, -909.20190, -548.08069, 23.99510,   0.00000, 90.00000, 1.49100);
	CreateDynamicObject(9361, -908.37708, -515.21008, 27.49790,   0.00000, 0.00000, -142.20300);
	CreateDynamicObject(9362, -907.66687, -513.63672, 25.89250,   0.00000, 0.00000, -276.72101);
	
	AddStaticVehicleEx(578,-746.5000000,-141.0000000,67.5000000,102.9970000,-1,-1,-1); //DFT-30
	AddStaticVehicleEx(578,-758.4003900,-143.7998000,66.8000000,102.9970000,-1,-1,-1); //DFT-30
	AddStaticVehicleEx(578,-770.7998000,-146.7998000,66.2000000,102.9970000,-1,-1,-1); //DFT-30
	AddStaticVehicleEx(578,-784.7999900,-134.8000000,65.4000000,14.9970000,-1,-1,-1); //DFT-30
	AddStaticVehicleEx(578,-790.0999800,-136.2000000,65.4000000,14.9960000,-1,-1,-1); //DFT-30
	AddStaticVehicleEx(578,-768.0999800,-129.5000000,66.2000000,18.9970000,-1,-1,-1); //DFT-30
	AddStaticVehicleEx(578,-784.0999800,-149.7000000,65.5000000,102.9970000,-1,-1,-1); //DFT-30
	AddStaticVehicleEx(578,-797.5000000,-152.7000000,65.1000000,102.9970000,-1,-1,-1); //DFT-30
*/

    MapAndreas_Init(MAP_ANDREAS_MODE_FULL, "scriptfiles/SAFull.hmap");
/*

    AddStaticPickup(1239, 2, -911.3690,-517.8929,25.9536, 0); //Petroleiro
    CreateDynamic3DTextLabel("Petroleiro Clandestino\n USE:{CC33FF}/pegaremprego", COLOR_WHITE_BLUE, -911.3690,-517.8929,25.9536, 15.0);
    AddStaticPickup(1239, 2, -754.2696,-127.9865,65.8176, 0); //Madeireira
    CreateDynamic3DTextLabel("Lenhador\n USE:{CC33FF}/pegaremprego", COLOR_WHITE_BLUE,-754.2696,-127.9865,65.8176, 15.0);
    
    AddStaticPickup(2060, 2,-760.7987,-106.9411,65.9084, 0); //Vender Madeireira
    CreateDynamic3DTextLabel("Madeireira\n USE:{CC33FF}/vendermadeira", COLOR_WHITE_BLUE, -760.7987,-106.9411,65.9084, 15.0);
    
    AddStaticPickup(2060, 2,-760.7987,-106.9411,65.9084, 0); //Trabalhar Madeireira
    CreateDynamic3DTextLabel("Madeireira\n USE:{CC33FF}/trabalhar", COLOR_WHITE_BLUE, -748.0559,-128.6658,65.8281, 10.0);
    
    AddStaticPickup(2060, 2,-907.0831,-513.5067,26.1229, 0); //Trabalhar Petroleiro
    CreateDynamic3DTextLabel("Petroleiro Clandestino\n USE:{CC33FF}/trabalhar", COLOR_WHITE_BLUE, -907.0831,-513.5067,26.1229, 10.0);
    
    Cortando = TextDrawCreate(320.000000, 160.000000,"Cortando");
	TextDrawAlignment(Cortando,2);
	TextDrawBackgroundColor(Cortando,0x000000ff);
	TextDrawFont(Cortando,1);
	TextDrawLetterSize(Cortando,1.200000,1.700);
	TextDrawColor(Cortando,COLOR_GREEN);
	TextDrawSetOutline(Cortando,1);
	TextDrawSetProportional(Cortando,1);
	TextDrawSetShadow(Cortando,1);
	
	Limpando = TextDrawCreate(320.000000, 160.000000,"Limpando");
	TextDrawAlignment(Limpando,2);
	TextDrawBackgroundColor(Limpando,0x000000ff);
	TextDrawFont(Limpando,1);
	TextDrawLetterSize(Limpando,1.200000,1.700000);
	TextDrawColor(Limpando,COLOR_GREEN);
	TextDrawSetOutline(Limpando,1);
	TextDrawSetProportional(Limpando,1);
	TextDrawSetShadow(Limpando,1);
    
    
    
    SetTimer("CriarArvores", 30000, true);
    
    for (new i = 0; i < MAX_ARVORES2; i++)
    {
    arvore[i] = CreateDynamicObject(655, ArvorePos[i][0],ArvorePos[i][1],ArvorePos[i][2]-1, 0.0, 0.0, 0);
    textarvore[i] = CreateDynamic3DTextLabel("Árvore Saudável\n USE:{CC33FF}/cortararvore", COLOR_GREEN, ArvorePos[i][0]+0.2,ArvorePos[i][1]-0.1,ArvorePos[i][2], 15.0);
    arvorederrubada[i] = 0;
    arvorepronta[i] = 0;
    }
    */
}

public OnPlayerConnect(playerid)
{
	for(new i; i < 99; i++)//Limpar Chat
	{
	SendClientMessage(playerid, COLOR_WHITE, "");
	}

	SendClientMessage(playerid, COLOR_WHITE, "Simple Base 2 DEV por Milton Manoel");
	SendClientMessage(playerid, COLOR_WHITE_BLUE, "Disponível em www.github.com/srmilton");
	SetSpawnInfo(playerid, 0, 0, 1958.33, 1343.12, 15.36, 269.15, 0, 0, 0, 0, 0, 0 );
	SpawnPlayer(playerid);
	isgod[playerid] = 1;
	PreloadAnimLib(playerid,"CHAINSAW");
	PreloadAnimLib(playerid,"SWORD");
	
	
	/*
	RemoveBuildingForPlayer(playerid, 620, 2116.0156, -1234.4375, 22.8516, 0.25);
	RemoveBuildingForPlayer(playerid, 3167, -953.7500, -533.6719, 25.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -945.3594, -536.0625, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1451, -960.5391, -533.6719, 25.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 1462, -949.2734, -531.0391, 24.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 1451, -960.5391, -530.5625, 25.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 3168, -940.0078, -538.6719, 24.9141, 0.25);
	RemoveBuildingForPlayer(playerid, 1470, -943.0703, -535.5859, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1471, -941.6016, -535.9453, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1472, -940.0469, -535.9453, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1473, -940.1328, -536.2969, 28.2031, 0.25);
	RemoveBuildingForPlayer(playerid, 1474, -941.5859, -535.9375, 27.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 1475, -943.0391, -535.5859, 27.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 1476, -938.6875, -536.6641, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1477, -938.6875, -536.6563, 27.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -936.4141, -537.1641, 24.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 1457, -954.0156, -523.8438, 26.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 3171, -927.9609, -520.4219, 24.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -951.9922, -527.0000, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1451, -960.5391, -527.4609, 25.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 1451, -960.5391, -524.3594, 25.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 1452, -946.1406, -512.9453, 26.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 1462, -935.9922, -514.8594, 24.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 3168, -938.9688, -516.0781, 24.8984, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -934.2266, -515.6641, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -940.7031, -513.0078, 24.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -958.8516, -512.7813, 24.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 727, -929.3125, -514.2422, 24.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 3169, -941.3750, -493.1641, 24.9141, 0.25);
	RemoveBuildingForPlayer(playerid, 3170, -962.8359, -507.4688, 24.7891, 0.25);
	RemoveBuildingForPlayer(playerid, 1457, -953.3672, -494.5156, 26.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -960.6406, -502.0391, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -937.7422, -491.6641, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 3171, -923.2813, -537.5469, 24.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 3172, -912.6016, -532.3203, 24.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -921.3516, -534.7109, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1462, -925.4453, -536.5859, 24.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -913.2188, -519.3516, 24.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 1457, -913.6797, -522.8594, 26.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -915.1797, -526.3047, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -926.0313, -517.9922, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -907.5859, -499.4063, 24.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 1475, -920.9141, -498.2969, 27.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 1470, -920.8828, -498.2969, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1472, -923.9063, -497.9219, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1471, -922.3516, -497.9297, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1474, -922.3672, -497.9375, 27.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 727, -906.5547, -503.7031, 24.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 3168, -923.8281, -495.1406, 24.8672, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -918.2031, -495.7422, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -915.1406, -494.5313, 24.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 1476, -925.2578, -497.2031, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1477, -925.2578, -497.2109, 27.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 1473, -923.8125, -497.5703, 28.2031, 0.25);
	RemoveBuildingForPlayer(playerid, 1462, -926.3438, -492.4375, 24.9766, 0.25);
	*/
	
 	return true;
}

public OnPlayerSpawn(playerid)
{
    SetPlayerPos(playerid, 1958.33, 1343.12, 15.36);
	TogglePlayerControllable(playerid,1);
	if(isgod[playerid] == 1) SetPlayerHealth(playerid,99999);
	return true;
}

enum attached_object_data
{
    Float:ao_x,
    Float:ao_y,
    Float:ao_z,
    Float:ao_rx,
    Float:ao_ry,
    Float:ao_rz,
    Float:ao_sx,
    Float:ao_sy,
    Float:ao_sz
}

new ao[MAX_PLAYERS][MAX_PLAYER_ATTACHED_OBJECTS][attached_object_data];

// The data should be stored in the above array when attached objects are attached.

public OnPlayerEditAttachedObject(playerid, response, index, modelid, boneid, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ)
{
	new string[200];
    if(response)
    {
        SendClientMessage(playerid, COLOR_GREEN, "Attached object edition saved.");

        ao[playerid][index][ao_x] = fOffsetX;
        ao[playerid][index][ao_y] = fOffsetY;
        ao[playerid][index][ao_z] = fOffsetZ;
        ao[playerid][index][ao_rx] = fRotX;
        ao[playerid][index][ao_ry] = fRotY;
        ao[playerid][index][ao_rz] = fRotZ;
        ao[playerid][index][ao_sx] = fScaleX;
        ao[playerid][index][ao_sy] = fScaleY;
        ao[playerid][index][ao_sz] = fScaleZ;
        
        format(string, sizeof(string),"%f %f %f %f %f %f %f %f %f", ao[playerid][index][ao_x], ao[playerid][index][ao_y], ao[playerid][index][ao_z], ao[playerid][index][ao_rx], ao[playerid][index][ao_ry], ao[playerid][index][ao_rz], ao[playerid][index][ao_sx], ao[playerid][index][ao_sy], ao[playerid][index][ao_sz]);
        SendClientMessage(playerid, COLOR_WHITE_BLUE, string);
    }
    else
    {
        SendClientMessage(playerid, COLOR_YELLOW, "Attached object edition not saved.");

        new i = index;
        SetPlayerAttachedObject(playerid, index, modelid, boneid, ao[playerid][i][ao_x], ao[playerid][i][ao_y], ao[playerid][i][ao_z], ao[playerid][i][ao_rx], ao[playerid][i][ao_ry], ao[playerid][i][ao_rz], ao[playerid][i][ao_sx], ao[playerid][i][ao_sy], ao[playerid][i][ao_sz]);
    }
    return 0;
}

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
    SetPlayerPosFindZ(playerid, fX, fY, fZ+2);
    return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return true;
}

public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart)
{
	if(isgod[playerid] == 1) SetPlayerHealth(playerid,99999);
	return true;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == 1338)
	{
	if(response == 1)
	{
		switch(listitem)
		{
		case 0:
		{
		SendClientMessage(playerid, COLOR_YELLOW, "Fechou no item 0 com o botão 1.");
		return true;
		}
		case 1:
		{
		SendClientMessage(playerid, COLOR_YELLOW, "Fechou no item 1 com o botão 1.");
		return true;
		}
		case 2:
		{
		SendClientMessage(playerid, COLOR_YELLOW, "Fechou no item 2 com o botão 1.");
		return true;
		}
		}
	}
	if(response == 0)
	{
	    switch(listitem)
		{
		case 0:
		{
		SendClientMessage(playerid, COLOR_YELLOW, "Fechou no item 0 com o botão 2.");
		return true;
		}
		case 1:
		{
		SendClientMessage(playerid, COLOR_YELLOW, "Fechou no item 1 com o botão 2.");
		return true;
		}
		case 2:
		{
		SendClientMessage(playerid, COLOR_YELLOW, "Fechou no item 2 com o botão 2.");
		return true;
		}
		}
	}
	}
    if(dialogid == 1337) //Emprego Petroleiro
	{
		if(response)
		{
		switch(listitem)
		{
		case 0:
		{
		SendClientMessage(playerid, COLOR_YELLOW, "Você aceitou a entrega para Posto Sul, siga a marcação no mapa.");
		SetPlayerCheckpoint(playerid, 1932.9086,-1773.1689,13.3828, 10.0);
		cargapetrol[playerid] = 1;
		return true;
		}
		case 1:
		{
		SendClientMessage(playerid, COLOR_YELLOW, "Você aceitou a entrega para Posto Norte, siga a marcação no mapa.");
		SetPlayerCheckpoint(playerid, 1005.1078,-934.8762,42.1797, 10.0);
		cargapetrol[playerid] = 2;
		return true;
		}
		case 2:
		{
		SendClientMessage(playerid, COLOR_YELLOW, "Você aceitou a entrega para Posto Flint County, siga a marcação no mapa.");
		SetPlayerCheckpoint(playerid, -90.2568,-1169.0557,2.4058, 10.0);
		cargapetrol[playerid] = 3;
		return true;
		}
		case 3:
		{
		SendClientMessage(playerid, COLOR_YELLOW, "Você aceitou a entrega para Posto Pershing Square, siga a marcação no mapa.");
		SetPlayerCheckpoint(playerid, 1459.3938,-1572.6710,13.5469, 10.0);
		cargapetrol[playerid] = 4;
		return true;
		}
		case 4:
		{
		SendClientMessage(playerid, COLOR_YELLOW, "Você aceitou a entrega para Posto Blueberry, siga a marcação no mapa.");
		SetPlayerCheckpoint(playerid, 5.3957,-260.3089,2.0210, 10.0);
		cargapetrol[playerid] = 5;
		return true;
		}
		}
		}
	}
	return true;
}
/*
forward fimdescarga(playerid);
public fimdescarga(playerid)
{
	new Valor=0;
	new string[120];

	switch(cargapetrol[playerid])
	{
		case 1:
		{
		Valor = 4000;
		}
		case 2:
		{
		Valor = 5000;
		}
		case 3:
		{
		Valor = 7000;
		}
		case 4:
		{
		Valor = 7000;
		}
		case 5:
		{
		Valor = 7000;
		}
	}

	format(string, sizeof(string),"Seu caminhão foi descarregado, você foi recompensado com $%d.", Valor);
	SendClientMessage(playerid, COLOR_YELLOW, string);
	//PlayerInfo[playerid][pSalario] += Valor;
	GivePlayerMoney(playerid, Valor);
	TogglePlayerControllable(playerid,1);
	cargapetrol[playerid] = 0;
	return true;
}

forward CriarArvores();
public CriarArvores()
{

	for (new i = 0; i < MAX_ARVORES2; i++)
    {
    if(IsValidDynamicObject(arvore[i])) return true;
    arvore[i] = CreateDynamicObject(655, ArvorePos[i][0],ArvorePos[i][1],ArvorePos[i][2]-1, 0.0, 0.0, 0);
    textarvore[i] = CreateDynamic3DTextLabel("Árvore Saudável\n USE:{CC33FF}/cortararvore", COLOR_GREEN, ArvorePos[i][0]+0.2,ArvorePos[i][1]-0.1,ArvorePos[i][2], 15.0);
    arvorederrubada[i] = 0;
    arvorepronta[i] = 0;
    }
	return true;
}

forward AnimLenhador(playerid, i);
public AnimLenhador(playerid, i)
{
    new Float:x, Float:y, Float:z, Float:newz;
    GetDynamicObjectPos(arvore[i], x,y,z);
    MapAndreas_FindZ_For2DCoord(x,y-13.14039,newz);
    newz = floatsub(newz,z);
    newz = asin(newz/13.14039);
    lol2[playerid] = newz;
	MoveDynamicObject(arvore[i], x, y, z+0.5, 0.4, 90-newz, 0, 0);
	TextDrawHideForPlayer(playerid, Cortando);
	//newz = (newz-z)+90);
	SetPlayerAttachedObject(playerid, 1, 341, 1, -0.01, 0.1, 0.23, -100 ,-10 ,0, -1); //Motoserra
	stopanim(playerid);
	arvorederrubada[i] = 1;
	DestroyDynamic3DTextLabel(textarvore[i]);
    textarvore[i] = CreateDynamic3DTextLabel("Árvore Cortada\n USE:{CC33FF}/cortargalhos", COLOR_GREEN, ArvorePos[i][0],ArvorePos[i][1]-4,ArvorePos[i][2], 15.0);
    Streamer_Update(playerid, 5);
	return true;
}

forward AnimGalhos(playerid, i);
public AnimGalhos(playerid, i)
{
	new Float:x, Float:y, Float:z,Float:newz,Float:newzsub;
    GetDynamicObjectPos(arvore[i], x,y,z);
    stopanim(playerid);
	SetPlayerAttachedObject(playerid, 2, 19590, 1, -0.14, 0, -0.20, 96.29 ,-179.20 ,77.59, 1,1,0.7); //Facao
	MapAndreas_FindZ_For2DCoord(x,y-4.45481,newz);
	newzsub = floatsub(newz,z);
    newz = asin(newzsub/4.45481);
    DestroyDynamicObject(arvore[i]);
    DestroyDynamic3DTextLabel(textarvore[i]);
    arvore[i] = CreateDynamicObject(684, ArvorePos[i][0],ArvorePos[i][1]-4,ArvorePos[i][2]+newzsub, -lol2[playerid], 0, 0);
    TextDrawHideForPlayer(playerid, Limpando);

	new string[20];
	format(string,sizeof(string),"%f",newz);
	
 	SendClientMessage(playerid, COLOR_WHITE_BLUE, string);
    DestroyDynamic3DTextLabel(textarvore[i]);
    textarvore[i] = CreateDynamic3DTextLabel("Árvore Pronta\n USE:{CC33FF}/carregararvore", COLOR_GREEN, ArvorePos[i][0],ArvorePos[i][1]-4,ArvorePos[i][2], 15.0);
    Streamer_Update(playerid, 0);
    Streamer_Update(playerid, 5);
    arvorepronta[i] = 1;
    return true;
}

forward CairGalhos(playerid, i);
public CairGalhos(playerid, i)
{
    new Float:x, Float:y, Float:z, Float:newz;
    GetDynamicObjectPos(arvore[i], x,y,z);
    MapAndreas_FindZ_For2DCoord(x+1,y-4,newz);
    galho[i][0] = CreateDynamicObject(841, ArvorePos[i][0]+1,ArvorePos[i][1]-4,newz+0.2,-lol2[playerid], 0, 0);
    Streamer_Update(playerid, 0);
    SetTimerEx("CairGalhos2", 3000, false, "ii", playerid,i);
}
forward CairGalhos2(playerid, i);
public CairGalhos2(playerid, i)
{
    new Float:x, Float:y, Float:z, Float:newz;
    GetDynamicObjectPos(arvore[i], x,y,z);
    MapAndreas_FindZ_For2DCoord(x-1,y-2,newz);
    galho[i][1] = CreateDynamicObject(841, ArvorePos[i][0]-1,ArvorePos[i][1]-2,newz+0.2, -lol2[playerid], 0, 0);
    Streamer_Update(playerid, 0);
    SetTimerEx("CairGalhos3", 3000, false, "ii", playerid,i);
}
forward CairGalhos3(playerid, i);
public CairGalhos3(playerid, i)
{
    new Float:x, Float:y, Float:z, Float:newz;
    GetDynamicObjectPos(arvore[i], x,y,z);
    MapAndreas_FindZ_For2DCoord(x+2,y-6,newz);
    galho[i][2] = CreateDynamicObject(841, ArvorePos[i][0]+2,ArvorePos[i][1]-6,newz+0.2, -lol2[playerid], 0, 0);
    Streamer_Update(playerid, 0);
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
    if(GetVehicleModel(vehicleid) == 578)//Pra corrigir o BUG do GTA
    {
    SetTimerEx("SairDoDFT", 1300, false, "ii", playerid,vehicleid);
    }
    return 1;
}

forward SairDoDFT(playerid,vehicleid);
public SairDoDFT(playerid,vehicleid)//Trigonometria pra concertar o bug nativo do DFT-30
{
    new Float:x, Float:y, Float:z, Float:x2, Float:y2, Float:z2;
    GetVehicleModelInfo(GetVehicleModel(vehicleid), VEHICLE_MODEL_INFO_WHEELSFRONT, x, y, z);
    GetVehicleRelativePos(vehicleid, x2, y2, z2, -x - 0.5, y + 0.5, z);
    SetPlayerPosFindZ(playerid, x2,y2,z2+2);
	return true;
}

forward VenderMadeiraAll(playerid);
public VenderMadeiraAll(playerid)
{
	if(IsPlayerInRangeOfPoint(playerid, 8, -760.7987,-106.9411,65.9084))
	{
    new vehicleid;
    new i;
	new string[120];

    vehicleid = GetClosestVehicle(playerid,10);

	if(arvorecarro[vehicleid][0] != 0)
	{
	i = arvorecarro[vehicleid][0] - 1;
	DestroyDynamicObject(arvore[i]);
	Streamer_Update(playerid, 0);
	arvoresvendidas[playerid] ++;
	arvorecarro[vehicleid][0] = 0;
	SetTimerEx("VenderMadeiraAll", 3000, false, "i", playerid);
	}
	else if(arvorecarro[vehicleid][1] != 0)
	{
	i = arvorecarro[vehicleid][1] - 1;
	DestroyDynamicObject(arvore[i]);
	Streamer_Update(playerid, 0);
	arvoresvendidas[playerid] ++;
	arvorecarro[vehicleid][1] = 0;
	SetTimerEx("VenderMadeiraAll", 3000, false, "i", playerid);
	}
	else if(arvorecarro[vehicleid][2] != 0)
	{
	i = arvorecarro[vehicleid][2] - 1;
	DestroyDynamicObject(arvore[i]);
	Streamer_Update(playerid, 0);
	arvoresvendidas[playerid] ++;
	arvorecarro[vehicleid][2] = 0;
	SetTimerEx("VenderMadeiraAll", 3000, false, "i", playerid);
	}
	else
	{
	SendClientMessage(playerid, COLOR_YELLOW, "O caminhão foi descarregado.");
	format(string,sizeof(string),"Você vendeu %d árvores por $%d.",arvoresvendidas[playerid], arvoresvendidas[playerid]*300);
	SendClientMessage(playerid, COLOR_YELLOW, string);
	TogglePlayerControllable(playerid,1);
	return true;
	}
	}
	else return SendClientMessage(playerid, COLOR_WHITE, "Você não está na madeireira.");
	return true;
}
*/
stock GetVehicleRelativePos(vehicleid, &Float:x, &Float:y, &Float:z, Float:xoff= 0.0, Float:yoff= 0.0, Float:zoff= 0.0)
{
    new Float:rot;
    GetVehicleZAngle(vehicleid, rot);
    rot = 360 - rot;
    GetVehiclePos(vehicleid, x, y, z);
    x = floatsin(rot, degrees) * yoff + floatcos(rot, degrees) * xoff + x;
    y = floatcos(rot, degrees) * yoff - floatsin(rot, degrees) * xoff + y;
    z = zoff + z;
}

stock ReturnName(playerid) //Maneira certa de retornar nomes durantes as funções
{
  new name[MAX_PLAYER_NAME + 1];
  GetPlayerName(playerid, name, sizeof(name));
  return name;
}

stock PreloadAnimLib(playerid, animlib[])
{
    ApplyAnimation(playerid,animlib,"null",0.0,0,0,0,0,0,1);
}

stock SetPlayerLookAt(playerid, Float:X, Float:Y)
{
    new Float:Px, Float:Py, Float: Pa;
    GetPlayerPos(playerid, Px, Py, Pa);
    Pa = floatabs(atan((Y-Py)/(X-Px)));
    if (X <= Px && Y >= Py) Pa = floatsub(180, Pa);
    else if (X < Px && Y < Py) Pa = floatadd(Pa, 180);
    else if (X >= Px && Y <= Py) Pa = floatsub(360.0, Pa);
    Pa = floatsub(Pa, 90.0);
    if (Pa >= 360.0) Pa = floatsub(Pa, 360.0);
    SetPlayerFacingAngle(playerid, Pa+15);
}

native IsValidVehicle(vehicleid);
stock GetClosestVehicle(playerid, Float: range)
{
    new
        vehicleid = -1,
        Float: last = range,
        Float: current,

        Float: x, Float: y, Float: z;
    GetPlayerPos(playerid, x, y, z);
    for (new i = 1, j = GetVehiclePoolSize(); i <= j; i++) // for (new i = 1; i < MAX_VEHICLES; i++)
    {
        if (!IsValidVehicle(i)) continue;
        current = GetVehicleDistanceFromPoint(i, x, y, z);
        if (current < last)
        {
            vehicleid = i;
            last = current;
        }
    }
    return vehicleid;
}

stock stopanim(playerid)
{
   /* ApplyAnimation(playerid,"PED","null",0.0,0,0,0,0,0);
    ClearAnimations(playerid);*/
    new skin;
    skin = GetPlayerSkin(playerid);
    SetPlayerSkin(playerid,skin);
    return 1;
}

stock IsPointInRangeOfPoint(Float:x, Float:y, Float:z, Float:x2, Float:y2, Float:z2, Float:range)
{
    x2 -= x;
    y2 -= y;
    z2 -= z;
    return ((x2 * x2) + (y2 * y2) + (z2 * z2)) < (range * range);
}

CMD:ir(playerid, params[])
{
	new pid;
	new Float:x, Float:y, Float:z;
	new string[50];
	if (sscanf(params, "u", pid))
	{
	    return SendClientMessage(playerid, COLOR_YELLOW, "Use /ir [ID]");
	}
	if(pid == INVALID_PLAYER_ID) return SendClientMessage(playerid, COLOR_YELLOW, "ID Invalido.");
	
	format(string,sizeof(string),"Você teleportou até o jogador %s.", ReturnName(pid));
	SendClientMessage(playerid, COLOR_WHITE_BLUE, string);
	
	format(string,sizeof(string),"O jogador %s teleportou até você.", ReturnName(playerid));
	SendClientMessage(pid, COLOR_WHITE_BLUE, string);
	
	
	GetPlayerPos(pid, x, y, z);
 	SetPlayerPos(playerid, x, y+2, z);
 	return true;
}

CMD:trazer(playerid, params[])
{
    new pid;
	new Float:x, Float:y, Float:z;
	new string[50];
	if (sscanf(params, "u", pid))
	{
	    return SendClientMessage(playerid, COLOR_YELLOW, "Use /trazer [ID]");
	}
	if(pid == INVALID_PLAYER_ID) return SendClientMessage(playerid, COLOR_YELLOW, "ID Invalido.");
	
	format(string,sizeof(string),"Você teleportou o jogador %s.", ReturnName(pid));
	SendClientMessage(playerid, COLOR_WHITE_BLUE, string);

	format(string,sizeof(string),"Você foi teleportado para o jogador %s.", ReturnName(playerid));
	SendClientMessage(pid, COLOR_WHITE_BLUE, string);
	
	GetPlayerPos(playerid, x, y, z);
 	SetPlayerPos(pid, x, y+2, z);
 	return true;
}

CMD:criarcarro(playerid, params[])
{
	new id;
	new Float:x, Float:y, Float:z;
	if (sscanf(params, "d", id))
	{
	    return SendClientMessage(playerid, COLOR_YELLOW, "Use /carro [ID].");
	}
	if(id < 400 || id > 611) return SendClientMessage(playerid, COLOR_YELLOW, "Escolha um ID maior que 400 e menor que 611.");
	
	GetPlayerPos(playerid, x, y, z);
	CreateVehicle(id, x, y+2, z+1, 82.2873, -1, -1, -1);
	return true;
}

CMD:gmx()
{
	GameModeExit();
	print(" ");
	print("GMX Realizado");
	print(" ");
	return true;
}

CMD:god(playerid)
{
	if(isgod[playerid] == 1)
	{
    SetPlayerHealth(playerid,100);
    SendClientMessage(playerid, COLOR_YELLOW, "GodMode desativado.");
    isgod[playerid] = 0;
	}
	else if(isgod[playerid] == 0)
	{
	SetPlayerHealth(playerid,99999);
    SendClientMessage(playerid, COLOR_YELLOW, "GodMode ativado.");
    isgod[playerid] = 1;
	}
	return true;
}

CMD:sairdoemprego(playerid)
{
    SendClientMessage(playerid, COLOR_YELLOW, "Você saiu do seu emprego.");
	emprego[playerid] = 0;
	return true;
}

CMD:criarobjeto(playerid, params[])
{
	new id;
	new Float:x, Float:y, Float:z;
	if (sscanf(params, "d", id))
	{
	    return SendClientMessage(playerid, COLOR_YELLOW, "Use /criarobjeto [ID].");
	}
	GetPlayerPos(playerid, x,y,z);
	
	arvore[count] =  CreateDynamicObject(id, x, y+5, z, 0.0, 0.0, 0);
	count ++;
	return true;
}

CMD:destruirobjeto(playerid, params[])
{
	new id;
	if (sscanf(params, "d", id))
	{
	    return SendClientMessage(playerid, COLOR_YELLOW, "Use /criarobjeto [ID].");
	}
	if(arvore[id] == 0) return SendClientMessage(playerid, COLOR_YELLOW, "Não tem objeto neste ID");
	DestroyDynamicObject(arvore[id]);
	arvore[id] = 0;
	return true;
}

CMD:spawn(playerid)
{
	SpawnPlayer(playerid);
	return true;
}

CMD:su(playerid, params[])
{
	new lol;
	if (sscanf(params, "d", lol))
	{
	    return SendClientMessage(playerid, COLOR_YELLOW, "Use /su [Nivel].");
	}
	SetPlayerWantedLevel( playerid, lol );
	return true;
}
//==================================================================================================================
//==================================================================================================================
//==================================================================================================================
//==================================================================================================================
//==================================================================================================================
/*
CMD:pegaremprego(playerid)
{
    if(emprego[playerid] != 0) return SendClientMessage(playerid, COLOR_YELLOW, "Você já possui um emprego.");
   // if(PlayerInfo[playerid][pEmprego] != 0) return SendClientMessage(playerid, COLOR_YELLOW, "Você já possui um emprego.");
    
	if(IsPlayerInRangeOfPoint(playerid, 3.0, -911.3690,-517.8929,25.9536)) //Petroleiro
	{
	emprego[playerid] = 20;
	SendClientMessage(playerid, COLOR_WHITE_BLUE, "Você acabou de se tornar um Petroleiro Clandestino!");
	
	}
	else if(IsPlayerInRangeOfPoint(playerid, 5.0, -754.2696,-127.9865,65.8176)) //Madeireira
	{
	emprego[playerid] = 21;
	SendClientMessage(playerid, COLOR_WHITE_BLUE, "Você acabou de se tornar um Lenhador!");
	SendClientMessage(playerid, COLOR_YELLOW, "Vá até a marcação para começar a trabalhar.");
 	SetPlayerCheckpoint(playerid, -748.0559,-128.6658,65.8281, 2.0);
	//GivePlayerWeapon(playerid, 9, 1);
	}
	else return SendClientMessage(playerid, COLOR_YELLOW, "Não tem emprego para ser pego aqui.");
	
	SendClientMessage(playerid, COLOR_YELLOW, "Use /ajudaemprego para saber mais sobre a profissão.");

	return true;
}

CMD:abastecercarga(playerid)
{
	if(emprego[playerid] != 20) return SendClientMessage(playerid, COLOR_WHITE, "Você não é um Petroleiro Clandestino.");
	// if(PlayerInfo[playerid][pEmprego] != 20) return SendClientMessage(playerid, COLOR_WHITE, "Você não é um Petroleiro Clandestino.");
	if(cargapetrol[playerid] > 0) return SendClientMessage(playerid, COLOR_WHITE, "Você já possui carga abastecida.");
	new tmpcar = GetPlayerVehicleID(playerid);
	if(GetVehicleModel(tmpcar) == 514 || GetVehicleModel(tmpcar) == 515)
	{
		if(GetVehicleTrailer(tmpcar) < 1)return SendClientMessage(playerid, COLOR_WHITE, "Você precisa de uma carga traseira para abastecer!");
		if(!IsPlayerInRangeOfPoint(playerid, 10.0, -928.3044,-515.0278,25.9609))
		{
		SendClientMessage(playerid, COLOR_WHITE, "Você não está na area de abastecimento de carga.");
	 	SetPlayerCheckpoint(playerid, -928.3044,-515.0278,25.9609, 4.0);
		return true;
		}
		
        ShowPlayerDialog(playerid, DIALOG_PETROLEIRO, DIALOG_STYLE_TABLIST_HEADERS, "Postos Disponíveis",
			"Local\tRecompensa\n\
			Posto Sul\t{33AA33}$4000\n\
			Posto Norte\t{33AA33}$5000\n\
			Posto Flint County\t{33AA33}$7000\n\
			Posto Pershing Square\t{33AA33}$7000\n\
			Posto Blueberry\t{33AA33}$7000",
			"Aceitar", "Cancelar");
		return true;

	}
	else
	{
    SendClientMessage(playerid, COLOR_WHITE, "Você deve estar em um caminhão da HQ.");
    return true;
	}
}

CMD:abastecerposto(playerid)
{
	if(emprego[playerid] != 20) return SendClientMessage(playerid, COLOR_WHITE, "Você não é um Petroleiro Clandestino.");
	// if(PlayerInfo[playerid][pEmprego] != 20) return SendClientMessage(playerid, COLOR_WHITE, "Você não é um Petroleiro Clandestino.");
	new tmpcar = GetPlayerVehicleID(playerid);
	if(GetVehicleModel(tmpcar) == 514 || GetVehicleModel(tmpcar) == 515)
	{
		if(GetVehicleTrailer(tmpcar) < 1)return SendClientMessage(playerid, COLOR_WHITE, "Você precisa de uma carga traseira para desabastecer!");
		if(cargapetrol[playerid] < 1)return SendClientMessage(playerid, COLOR_WHITE, "Você não tem nenhuma carga abastecida.");
		
		switch(cargapetrol[playerid])
		{
		case 1:
		{
			if(!IsPlayerInRangeOfPoint(playerid, 20.0, 1932.9086,-1773.1689,13.3828))
			{
			SendClientMessage(playerid, COLOR_WHITE, "Você não está no posto correto. Siga a marcação no mapa.");
		 	SetPlayerCheckpoint(playerid, 1932.9086,-1773.1689,13.3828, 4.0);
			return true;
			}
			SendClientMessage(playerid, COLOR_YELLOW, "Seu caminhão está sendo descarregado, aguarde!");
   			TogglePlayerControllable(playerid,0);
		}
		case 2:
		{
			if(!IsPlayerInRangeOfPoint(playerid, 20.0, 1005.1078,-934.8762,42.1797))
			{
			SendClientMessage(playerid, COLOR_WHITE, "Você não está no posto correto. Siga a marcação no mapa.");
		 	SetPlayerCheckpoint(playerid, 1005.1078,-934.8762,42.1797, 4.0);
			return true;
			}
			SendClientMessage(playerid, COLOR_YELLOW, "Seu caminhão está sendo descarregado, aguarde!");
   			TogglePlayerControllable(playerid,0);
		}
		case 3:
		{
			if(!IsPlayerInRangeOfPoint(playerid, 20.0, -90.2568,-1169.0557,2.4058))
			{
			SendClientMessage(playerid, COLOR_WHITE, "Você não está no posto correto. Siga a marcação no mapa.");
		 	SetPlayerCheckpoint(playerid, -90.2568,-1169.0557,2.4058, 4.0);
			return true;
			}
			SendClientMessage(playerid, COLOR_YELLOW, "Seu caminhão está sendo descarregado, aguarde!");
   			TogglePlayerControllable(playerid,0);
		}
		case 4:
		{
			if(!IsPlayerInRangeOfPoint(playerid, 20.0, 1459.3938,-1572.6710,13.5469))
			{
			SendClientMessage(playerid, COLOR_WHITE, "Você não está no posto correto. Siga a marcação no mapa.");
		 	SetPlayerCheckpoint(playerid, 1459.3938,-1572.6710,13.5469, 4.0);
			return true;
			}
			SendClientMessage(playerid, COLOR_YELLOW, "Seu caminhão está sendo descarregado, aguarde!");
   			TogglePlayerControllable(playerid,0);
		}
		case 5:
		{
			if(!IsPlayerInRangeOfPoint(playerid, 20.0, 35.3957,-260.3089,2.0210))
			{
			SendClientMessage(playerid, COLOR_WHITE, "Você não está no posto correto. Siga a marcação no mapa.");
		 	SetPlayerCheckpoint(playerid, 35.3957,-260.3089,2.0210, 4.0);
			return true;
			}
			SendClientMessage(playerid, COLOR_YELLOW, "Seu caminhão está sendo descarregado, aguarde!");
   			TogglePlayerControllable(playerid,0);
		}
	}
		SetTimerEx("fimdescarga", 20000, false, "i", playerid);
	}
	else
	{
    SendClientMessage(playerid, COLOR_WHITE, "Você deve estar em um caminhão da HQ.");
    return true;
	}
	
	return true;
}

//=========================================================
CMD:cortararvore(playerid)
{
	if(emprego[playerid] != 21)return SendClientMessage(playerid, COLOR_WHITE, "Você não é um lenhador.");
	if(trabalhandomadeira[playerid] == 0)return SendClientMessage(playerid, COLOR_WHITE, "Você não iniciou serviço na HQ.");
	// if(PlayerInfo[playerid][pEmprego] != 21) return SendClientMessage(playerid, COLOR_WHITE, "Você não é um lenhador.");
	new Float:x, Float:y, Float:z, Float:pz;
	new roll = 0;
	new i;
	GetPlayerPos(playerid, x,y,pz);
	for(i = 0; i<20; i++)
	{
	if(IsValidDynamicObject(arvore[i]))
	{
	GetDynamicObjectPos(arvore[i], x,y,z);
	if(IsPlayerInRangeOfPoint(playerid, 1.5, x,y,pz)) break;
	}
	roll++;
	}
	if(roll == 20) return SendClientMessage(playerid, COLOR_WHITE, "Você não está proximo a nenhuma arvore que esteja pronta para ser cortada.");
//	if(GetPlayerWeapon(playerid) != 9) return SendClientMessage(playerid, COLOR_WHITE, "Você não está segurando sua motoserra.");
	
	SetPlayerLookAt(playerid,x,y-0.25);
	SetPlayerAttachedObject(playerid, 1, 341, 6, 0.098, 0.046, 0.107, 169.29 ,151 ,11.39, -1); //Motoserra
 	ApplyAnimation(playerid, "CHAINSAW","csaw_part",4.1,1,0,0,1,15000,1);
 	TextDrawShowForPlayer(playerid, Cortando);
	
	SetTimerEx("AnimLenhador", 15000, false, "ii", playerid,i);
 	return true;
}

CMD:cortargalhos(playerid)
{
    if(trabalhandomadeira[playerid] == 0)return SendClientMessage(playerid, COLOR_WHITE, "Você não iniciou serviço na HQ.");
    new Float:x, Float:y, Float:z, Float:pz;
    GetPlayerPos(playerid, x,y,pz);
    new i = 0;
    new roll = 0;
    for(i = 0; i<20; i++)
	{
	GetDynamicObjectPos(arvore[i], x,y,z);
	if(IsPlayerInRangeOfPoint(playerid, 4, x,y-4.5,pz)) break;
	roll++;
	}
	if(roll == 20) return SendClientMessage(playerid, COLOR_WHITE, "Você não está proximo a nenhuma arvore derrubada.");
//	if(GetPlayerWeapon(playerid) != 9) return SendClientMessage(playerid, COLOR_WHITE, "Você não está segurando sua motoserra.");
	if(arvorederrubada[i] == 0) return SendClientMessage(playerid, COLOR_WHITE, "Essa arvore não esta derrubada.");
	SetPlayerLookAt(playerid,x,y-4.5);
	SetPlayerAttachedObject(playerid, 2, 19590, 6, 0.0759, 0.017, 0.004, -102.71 ,-103.40 ,2.3899, 1,1,0.7); //Facao
	ApplyAnimation(playerid, "SWORD","sword_4",4.1,1,0,0,1,15000,1);
	SetTimerEx("AnimGalhos", 15000, false, "ii", playerid,i);
    SetTimerEx("CairGalhos", 1000, false, "ii", playerid,i);
    TextDrawShowForPlayer(playerid, Limpando);
	return true;
}

CMD:carregararvore(playerid)
{
    if(trabalhandomadeira[playerid] == 0)return SendClientMessage(playerid, COLOR_WHITE, "Você não iniciou serviço na HQ.");
    new Float:x, Float:y, Float:z, Float:pz;
    new vehicleid;
    new i = 0;
    new roll = 0;
    GetPlayerPos(playerid, x,y,pz);
    for(i = 0; i<20; i++)
	{
	GetDynamicObjectPos(arvore[i], x,y,z);
	if(IsPlayerInRangeOfPoint(playerid, 4, x,y,pz) && arvorepronta[i] == 1) break;
	roll++;
	}
	if(roll == 20) return SendClientMessage(playerid, COLOR_WHITE, "Você não está proximo a uma árvore pronta.");
	vehicleid = GetClosestVehicle(playerid,10);
	if(GetVehicleModel(vehicleid) != 578) return SendClientMessage(playerid, COLOR_WHITE, "Você não está proximo ao caminhão DFT-30.");
	
	if(arvorecarro[vehicleid][0] == 0)
	{
	AttachDynamicObjectToVehicle(arvore[i], vehicleid, 0.9, -1.8, 0.1, 0.0, 0.0, 180.0);
	arvorecarro[vehicleid][0] = i+1;
	DestroyDynamic3DTextLabel(textarvore[i]);
	DestroyDynamicObject(galho[i][0]);
	DestroyDynamicObject(galho[i][1]);
	DestroyDynamicObject(galho[i][2]);
	Streamer_Update(playerid, 0);
	SendClientMessage(playerid, COLOR_WHITE, "Leve o caminhão para venda de madeira ou recolha mais 2 troncos.");
	}
	else if(arvorecarro[vehicleid][1] == 0)
	{
	AttachDynamicObjectToVehicle(arvore[i], vehicleid, -0.9, -1.8, 0.1, 0.0, 0.0, 0.0);
	arvorecarro[vehicleid][1] = i+1;
	DestroyDynamic3DTextLabel(textarvore[i]);
	DestroyDynamicObject(galho[i][0]);
	DestroyDynamicObject(galho[i][1]);
	DestroyDynamicObject(galho[i][2]);
	Streamer_Update(playerid, 0);
	SendClientMessage(playerid, COLOR_WHITE, "Leve o caminhão para venda de madeira ou recolha mais 1 tronco.");
	}
	else if(arvorecarro[vehicleid][2] == 0)
	{
	AttachDynamicObjectToVehicle(arvore[i], vehicleid, 0.0, -1.8, 0.1, 0.0, 0.0, 180.0);
	arvorecarro[vehicleid][2] = i+1;
	DestroyDynamic3DTextLabel(textarvore[i]);
	DestroyDynamicObject(galho[i][0]);
	DestroyDynamicObject(galho[i][1]);
	DestroyDynamicObject(galho[i][2]);
	Streamer_Update(playerid, 0);
	SendClientMessage(playerid, COLOR_WHITE, "Leve o caminhão para venda de madeira.");
	}
	else return SendClientMessage(playerid, COLOR_WHITE, "Esse caminhão não consegue carregar mais árvores. Venda a madeira para descarrega-lo.");
	SetPlayerCheckpoint(playerid, -760.7987,-106.9411,65.9084, 10.0);
	return true;
}

CMD:vendermadeira(playerid)
{
    if(IsPlayerInRangeOfPoint(playerid, 8, -760.7987,-106.9411,65.9084))
	{
	arvoresvendidas[playerid] = 0;
	SetTimerEx("VenderMadeiraAll", 3000, false, "i", playerid);
	SendClientMessage(playerid, COLOR_WHITE, "O caminhão está sendo descarregado, aguarde.");
	TogglePlayerControllable(playerid,0);
	}
	else return SendClientMessage(playerid, COLOR_WHITE, "Você não está na madeireira.");
	
	return true;
}

CMD:trabalhar(playerid)
{
//	new ChaveCaminhao[MAX_VEHICLES];
//	new vehid;
	if(emprego[playerid] == 21)
	{
	if(!IsPlayerInRangeOfPoint(playerid, 1.5, -748.0559,-128.6658,65.8281))return SendClientMessage(playerid, COLOR_WHITE, "Você não está nos armarios.");
	if(trabalhandomadeira[playerid] == 0)
	{
	oldskinmadeira[playerid] = GetPlayerSkin(playerid);
	SetPlayerSkin(playerid, 202);
	trabalhandomadeira[playerid] = 1;
	SetPlayerCheckpoint(playerid, 797.8350,-285.3404,18.2998, 10.0);
	SendClientMessage(playerid, COLOR_YELLOW, "Você pegou o uniforme e as ferramentas de trabalho no armário.");
	SendClientMessage(playerid, COLOR_WHITE_BLUE, "Vá até a marcação no GPS para chegar na área de desmatamento.");
	if(IsPlayerAttachedObjectSlotUsed(playerid, 1)) RemovePlayerAttachedObject(playerid, 1);
	if(IsPlayerAttachedObjectSlotUsed(playerid, 2)) RemovePlayerAttachedObject(playerid, 2);
	SetPlayerAttachedObject(playerid, 1, 341, 1, -0.01, 0.1, 0.23, -100 ,-10 ,0, -1,1,1); //Motoserra
	SetPlayerAttachedObject(playerid, 2, 19590, 1, -0.14, 0, -0.20, 96.29 ,-179.20 ,77.59, 1,1,0.7); //Facao
	//chavemadeira[playerid] = CreateVehicle(578, -771.8084,-119.1719,65.9564+3,20.5159, -1, -1, -1); //Criar veiculos HQ
	//chavemadeira[playerid] = ChaveCaminhao[vehid];
	}
	else if(trabalhandomadeira[playerid] == 1)
	{
	if(IsPlayerAttachedObjectSlotUsed(playerid, 1)) RemovePlayerAttachedObject(playerid, 1);
	if(IsPlayerAttachedObjectSlotUsed(playerid, 2)) RemovePlayerAttachedObject(playerid, 2);
	SendClientMessage(playerid, COLOR_YELLOW, "Você guardou o uniforme e as ferramentas de trabalho no armário.");
	SendClientMessage(playerid, COLOR_WHITE_BLUE, "Você encerrou seu expediente.");
	SetPlayerSkin(playerid, oldskinmadeira[playerid]);
	trabalhandomadeira[playerid] = 0;
	//DestroyVehicle(chavemadeira[playerid]);
	}
	}
	else if(emprego[playerid] == 20)
	{
	if(!IsPlayerInRangeOfPoint(playerid, 5.0, -907.0831,-513.5067,26.1229))return SendClientMessage(playerid, COLOR_WHITE, "Você não está nos armarios.");
	if(trabalhandomadeira[playerid] == 0)
	{
	oldskinmadeira[playerid] = GetPlayerSkin(playerid);
	//SetPlayerSkin(playerid, 202);
	trabalhandomadeira[playerid] = 1;
	SetPlayerCheckpoint(playerid, 797.8350,-285.3404,18.2998, 10.0);
//	GivePlayerWeapon(playerid, 9,1);
	SendClientMessage(playerid, COLOR_YELLOW, "Você pegou as ferramentas de trabalho no armário.");
	SendClientMessage(playerid, COLOR_WHITE_BLUE, "Vá até a area de abastecimento.");
	}
	else if(trabalhandomadeira[playerid] == 1)
	{
	SendClientMessage(playerid, COLOR_YELLOW, "Você guardou o uniforme e as ferramentas de trabalho no armário.");
	SendClientMessage(playerid, COLOR_WHITE_BLUE, "Você encerrou seu expediente.");
	SetPlayerSkin(playerid, oldskinmadeira[playerid]);
	trabalhandomadeira[playerid] = 0;
	}
	}
	else return SendClientMessage(playerid, COLOR_WHITE, "Você não trabalha aqui.");
	
	
 	return true;
}

CMD:dialogteste(playerid, params[])
{
	ShowPlayerDialog(playerid, DIALOG_TESTE, DIALOG_STYLE_LIST, "Teste", "Item 0\n{FFFF00}Item 1\nItem 2", "Button 1", "Button 2");
	return true;
}*/


