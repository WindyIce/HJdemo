//Maya ASCII 2018ff09 scene
//Name: Animation_Leg.ma
//Last modified: Sun, Mar 03, 2019 11:35:12 AM
//Codeset: 936
requires maya "2018ff09";
requires "mtoa" "3.1.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201811122215-49253d42f6";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "82AD59CD-45A4-2BA8-98BE-71BDFF6C1114";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.3781108243244597 1.9784854062245352 -0.066663163134047743 ;
	setAttr ".r" -type "double3" 0.26164727040058899 148.99999999997962 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "28DCC0BB-4EBA-C0B3-EAC7-D4A38BCE61B3";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 3.2857570145815043;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 2.3625977589306313 1.4555000066757202 2.6747483960639258 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "3F6689A8-48D5-B482-A058-75A71CF7C331";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4CBADA34-4CCC-230E-5045-A1BB76852C42";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "5495F6A1-464F-5503-641C-739F2C9B1D25";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.3391843972039457 1.5481310410331242 1000.1012308468419 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8B0DEE0D-4378-40AA-0FA3-E8AF8DB58D3D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 997.42648254533583;
	setAttr ".ow" 0.99883524286337266;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 2.3675976991653442 1.4304999709129333 2.6747483015060425 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "B8BFCE34-4A7E-8A97-A0C8-DDA79A1BF198";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BB7B5306-441F-A7A1-2F1B-CEB1335CC97E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "character:Default";
	rename -uid "DCAF8092-466A-1F80-FCAA-C4A1B9FF3AB6";
	setAttr ".t" -type "double3" -0.62720221741824567 0 1.9287484041701575 ;
	setAttr ".rp" -type "double3" 2.9510499238967896 1.9041499495506287 0.85339997708797455 ;
	setAttr ".sp" -type "double3" 2.9510499238967896 1.9041499495506287 0.85339997708797455 ;
createNode transform -n "polySurface1" -p "character:Default";
	rename -uid "AE89C497-4ED2-E15C-4B0C-C1B3257AB921";
createNode mesh -n "polySurfaceShape1" -p "polySurface1";
	rename -uid "484C8ED4-4E68-99CF-7880-EFBA9C11AE24";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.96740007 1.60595 0.6455 3.017400026 1.60595 0.6455
		 3.017400026 1.60595 0.69550002 2.96740007 1.60595 0.69550002 2.96740007 1.65594995 0.6455
		 3.017400026 1.65594995 0.6455 3.017400026 1.65594995 0.69550002 2.96740007 1.65594995 0.69550002;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0
		 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 -0.050000001 0 0
		 -0.050000001 0 0 -0.050000001 0 0 -0.050000001 0 0 0 0.050000001 0 0 0.050000001
		 0 0 0.050000001 0 0 0.050000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface2" -p "character:Default";
	rename -uid "AD44FC06-482C-C215-7E03-6D84B889E046";
createNode mesh -n "polySurfaceShape2" -p "polySurface2";
	rename -uid "66E6861D-4833-6EBA-7861-D5B1F84799D0";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.93980002 1.65480006 0.99540001 3.039799929 1.65480006 0.99540001
		 3.039799929 1.65480006 1.045400023 2.93980002 1.65480006 1.045400023 2.93980002 1.85479999 0.99540001
		 3.039799929 1.85479999 0.99540001 3.039799929 1.85479999 1.045400023 2.93980002 1.85479999 1.045400023;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.2 0 0 -0.2 0 0 -0.2 0
		 0 -0.2 0 0 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001 0.1
		 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001
		 -0.1 0 0 -0.1 0 0 -0.1 0 0 -0.1 0 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0.2 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface3" -p "character:Default";
	rename -uid "8694900B-42D5-3C47-03B0-809CC2CE55BA";
createNode mesh -n "polySurfaceShape3" -p "polySurface3";
	rename -uid "74639A9D-40A4-6780-3263-8DA8CA541387";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  3.21309996 2.057499886 0.94389999 3.24309993 2.057499886 0.94389999
		 3.24309993 2.057499886 1.043900013 3.21309996 2.057499886 1.043900013 3.21309996 2.10750008 0.94389999
		 3.24309993 2.10750008 0.94389999 3.24309993 2.10750008 1.043900013 3.21309996 2.10750008 1.043900013;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 -0.1 0 0 -0.1 0 0 -0.1 0 0 -0.1 0.029999999
		 0 0 0.029999999 0 0 0.029999999 0 0 0.029999999 0 0 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0.1
		 -0.029999999 0 0 -0.029999999 0 0 -0.029999999 0 0 -0.029999999 0 0 0 0.050000001
		 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface6" -p "character:Default";
	rename -uid "0F7F7551-4CBA-0E56-57B5-47A84FF5E2E8";
createNode mesh -n "polySurfaceShape6" -p "polySurface6";
	rename -uid "48F8E6B5-4CA4-1326-B9A6-DBB8CC614171";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.68980002 1.64999998 0.67989999 2.73979998 1.64999998 0.67989999
		 2.73979998 1.64999998 0.9799 2.68980002 1.64999998 0.9799 2.68980002 1.95000005 0.67989999
		 2.73979998 1.95000005 0.67989999 2.73979998 1.95000005 0.9799 2.68980002 1.95000005 0.9799;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.30000001 0 0 -0.30000001
		 0 0 -0.30000001 0 0 -0.30000001 0 0 0 -0.30000001 0 0 -0.30000001 0 0 -0.30000001
		 0 0 -0.30000001 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0
		 0 0.30000001 0 0 0.30000001 0 0 0.30000001 0 0 0.30000001 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 0.30000001 0 0 0.30000001 0 0 0.30000001
		 0 0 0.30000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface7" -p "character:Default";
	rename -uid "2D745E2D-4F99-48B4-EFCE-A2BC0DF7D996";
createNode mesh -n "polySurfaceShape7" -p "polySurface7";
	rename -uid "41521040-4128-F0B1-5EF8-9AA424C477A2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.96740007 1.60529995 0.99540001 3.017400026 1.60529995 0.99540001
		 3.017400026 1.60529995 1.045400023 2.96740007 1.60529995 1.045400023 2.96740007 1.65530002 0.99540001
		 3.017400026 1.65530002 0.99540001 3.017400026 1.65530002 1.045400023 2.96740007 1.65530002 1.045400023;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0
		 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 -0.050000001 0 0
		 -0.050000001 0 0 -0.050000001 0 0 -0.050000001 0 0 0 0.050000001 0 0 0.050000001
		 0 0 0.050000001 0 0 0.050000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface8" -p "character:Default";
	rename -uid "7A748FF3-42C6-C59C-43F8-63A63BC3B53E";
createNode mesh -n "polySurfaceShape8" -p "polySurface8";
	rename -uid "6C39827E-45D4-7EF7-F8F3-BFA1C12EB747";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.89280009 2.16000009 1.15740001 3.092799902 2.16000009 1.15740001
		 3.092799902 2.16000009 1.21739995 2.89280009 2.16000009 1.21739995 2.89280009 2.25999999 1.15740001
		 3.092799902 2.25999999 1.15740001 3.092799902 2.25999999 1.21739995 2.89280009 2.25999999 1.21739995;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.1 0 0 -0.1 0 0 -0.1 0
		 0 -0.1 0 0 0 -0.059999999 0 0 -0.059999999 0 0 -0.059999999 0 0 -0.059999999 0.2
		 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0 0 0.059999999 0 0 0.059999999 0 0 0.059999999 0 0 0.059999999
		 -0.2 0 0 -0.2 0 0 -0.2 0 0 -0.2 0 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0.1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface11" -p "character:Default";
	rename -uid "8C481C4D-4725-51B0-99BE-2AA34EB8537C";
createNode mesh -n "polySurfaceShape11" -p "polySurface11";
	rename -uid "BD8D8FD0-4D65-D1F8-76BA-3A8CCC716B48";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.93980002 1.65579998 0.64560002 3.039799929 1.65579998 0.64560002
		 3.039799929 1.65579998 0.69559997 2.93980002 1.65579998 0.69559997 2.93980002 1.85580003 0.64560002
		 3.039799929 1.85580003 0.64560002 3.039799929 1.85580003 0.69559997 2.93980002 1.85580003 0.69559997;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.2 0 0 -0.2 0 0 -0.2 0
		 0 -0.2 0 0 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001 0.1
		 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001
		 -0.1 0 0 -0.1 0 0 -0.1 0 0 -0.1 0 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0.2 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface12" -p "character:Default";
	rename -uid "7DDEE00F-42A9-0305-E6F3-F99F1D26E106";
createNode mesh -n "polySurfaceShape12" -p "polySurface12";
	rename -uid "F17C645A-4BDE-56BA-F7CB-529B9E87B44C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.63879991 1.70099998 0.7299 2.6888001 1.70099998 0.7299
		 2.6888001 1.70099998 0.92989999 2.63879991 1.70099998 0.92989999 2.63879991 1.90100002 0.7299
		 2.6888001 1.90100002 0.7299 2.6888001 1.90100002 0.92989999 2.63879991 1.90100002 0.92989999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.2 0 0 -0.2 0 0 -0.2 0
		 0 -0.2 0 0 0 -0.2 0 0 -0.2 0 0 -0.2 0 0 -0.2 0.050000001 0 0 0.050000001 0 0 0.050000001
		 0 0 0.050000001 0 0 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0.2 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0.2 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface13" -p "character:Default";
	rename -uid "0B469987-483D-0360-8003-3A807B13DE3A";
createNode mesh -n "polySurfaceShape13" -p "polySurface13";
	rename -uid "14D0C401-4CE2-1DF7-1294-8AA1F65DBF83";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  3.14229989 1.64489996 0.73584998 3.19230008 1.64489996 0.73584998
		 3.19230008 1.64489996 0.93585002 3.14229989 1.64489996 0.93585002 3.14229989 1.84490001 0.73584998
		 3.19230008 1.84490001 0.73584998 3.19230008 1.84490001 0.93585002 3.14229989 1.84490001 0.93585002;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.2 0 0 -0.2 0 0 -0.2 0
		 0 -0.2 0 0 0 -0.2 0 0 -0.2 0 0 -0.2 0 0 -0.2 0.050000001 0 0 0.050000001 0 0 0.050000001
		 0 0 0.050000001 0 0 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0.2 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0.2 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface14" -p "character:Default";
	rename -uid "2BD97293-4131-A296-2FCA-9D9683C81A33";
createNode mesh -n "polySurfaceShape14" -p "polySurface14";
	rename -uid "F45F1C9B-4D01-878D-DFE1-C498819435CF";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  3.21259999 2.15709996 0.74010003 3.24259996 2.15709996 0.74010003
		 3.24259996 2.15709996 0.79009998 3.21259999 2.15709996 0.79009998 3.21259999 2.20709991 0.74010003
		 3.24259996 2.20709991 0.74010003 3.24259996 2.20709991 0.79009998 3.21259999 2.20709991 0.79009998;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0.029999999 0 0 0.029999999 0 0 0.029999999 0 0 0.029999999 0 0
		 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 -0.029999999 0 0
		 -0.029999999 0 0 -0.029999999 0 0 -0.029999999 0 0 0 0.050000001 0 0 0.050000001
		 0 0 0.050000001 0 0 0.050000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface15" -p "character:Default";
	rename -uid "D6E5127F-42B0-3992-3A4A-29A34750E9D7";
createNode mesh -n "polySurfaceShape15" -p "polySurface15";
	rename -uid "E5B77FFD-469B-8370-9EB2-5DBE5C402130";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.89429998 2.09649992 1.10140002 3.094300032 2.09649992 1.10140002
		 3.094300032 2.09649992 1.16139996 2.89429998 2.09649992 1.16139996 2.89429998 2.29649997 1.10140002
		 3.094300032 2.29649997 1.10140002 3.094300032 2.29649997 1.16139996 2.89429998 2.29649997 1.16139996;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.2 0 0 -0.2 0 0 -0.2 0
		 0 -0.2 0 0 0 -0.059999999 0 0 -0.059999999 0 0 -0.059999999 0 0 -0.059999999 0.2
		 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0 0 0.059999999 0 0 0.059999999 0 0 0.059999999 0 0 0.059999999
		 -0.2 0 0 -0.2 0 0 -0.2 0 0 -0.2 0 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0.2 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface16" -p "character:Default";
	rename -uid "1F5C34F1-4B4E-5DD1-C8B5-E88ADE11391F";
createNode mesh -n "polySurfaceShape16" -p "polySurface16";
	rename -uid "FCD8224C-42D6-42F2-BC18-8A9D7F84B4AF";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.93980002 1.85529995 0.99540001 3.039799929 1.85529995 0.99540001
		 3.039799929 1.85529995 1.045400023 2.93980002 1.85529995 1.045400023 2.93980002 1.90530002 0.99540001
		 3.039799929 1.90530002 0.99540001 3.039799929 1.90530002 1.045400023 2.93980002 1.90530002 1.045400023;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0.1 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0 0 0.050000001 0 0 0.050000001
		 0 0 0.050000001 0 0 0.050000001 -0.1 0 0 -0.1 0 0 -0.1 0 0 -0.1 0 0 0 0.050000001
		 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface17" -p "character:Default";
	rename -uid "4FDBEFF0-47EE-255D-E60E-7C8049200E79";
createNode mesh -n "polySurfaceShape17" -p "polySurface17";
	rename -uid "1E352C52-4C9C-A7BC-9B1F-ACA2D5FE1F2D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  3.21259999 2.067600012 0.64990002 3.24259996 2.067600012 0.64990002
		 3.24259996 2.067600012 0.74989998 3.21259999 2.067600012 0.74989998 3.21259999 2.11759996 0.64990002
		 3.24259996 2.11759996 0.64990002 3.24259996 2.11759996 0.74989998 3.21259999 2.11759996 0.74989998;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 -0.1 0 0 -0.1 0 0 -0.1 0 0 -0.1 0.029999999
		 0 0 0.029999999 0 0 0.029999999 0 0 0.029999999 0 0 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0.1
		 -0.029999999 0 0 -0.029999999 0 0 -0.029999999 0 0 -0.029999999 0 0 0 0.050000001
		 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface18" -p "character:Default";
	rename -uid "83025C6C-42AA-E639-4B2E-62A543DC997B";
createNode mesh -n "polySurfaceShape18" -p "polySurface18";
	rename -uid "F9B980E2-4D25-5DEC-6237-FB91E80B9C67";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.93980002 1.85529995 0.64639997 3.039799929 1.85529995 0.64639997
		 3.039799929 1.85529995 0.69639999 2.93980002 1.85529995 0.69639999 2.93980002 1.90530002 0.64639997
		 3.039799929 1.90530002 0.64639997 3.039799929 1.90530002 0.69639999 2.93980002 1.90530002 0.69639999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0.1 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0 0 0.050000001 0 0 0.050000001
		 0 0 0.050000001 0 0 0.050000001 -0.1 0 0 -0.1 0 0 -0.1 0 0 -0.1 0 0 0 0.050000001
		 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface19" -p "character:Default";
	rename -uid "F8A0BD3C-4942-18AF-6F07-FC8AA14C60F7";
createNode mesh -n "polySurfaceShape19" -p "polySurface19";
	rename -uid "EC3FB904-4EA4-86A1-E8B2-9EBBD1725C95";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.96479988 2.40840006 0.80599999 3.014800072 2.40840006 0.80599999
		 3.014800072 2.40840006 0.85600001 2.96479988 2.40840006 0.85600001 2.96479988 2.45840001 0.80599999
		 3.014800072 2.45840001 0.80599999 3.014800072 2.45840001 0.85600001 2.96479988 2.45840001 0.85600001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0
		 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 -0.050000001 0 0
		 -0.050000001 0 0 -0.050000001 0 0 -0.050000001 0 0 0 0.050000001 0 0 0.050000001
		 0 0 0.050000001 0 0 0.050000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface20" -p "character:Default";
	rename -uid "A56FE565-4C44-1C66-6D34-409917DA36DC";
createNode mesh -n "polySurfaceShape20" -p "polySurface20";
	rename -uid "69DFAD5F-40B6-7126-4641-A2ADD97B841B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.89280009 2.09649992 0.54339999 3.092799902 2.09649992 0.54339999
		 3.092799902 2.09649992 0.60339999 2.89280009 2.09649992 0.60339999 2.89280009 2.29649997 0.54339999
		 3.092799902 2.29649997 0.54339999 3.092799902 2.29649997 0.60339999 2.89280009 2.29649997 0.60339999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.2 0 0 -0.2 0 0 -0.2 0
		 0 -0.2 0 0 0 -0.059999999 0 0 -0.059999999 0 0 -0.059999999 0 0 -0.059999999 0.2
		 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0 0 0.059999999 0 0 0.059999999 0 0 0.059999999 0 0 0.059999999
		 -0.2 0 0 -0.2 0 0 -0.2 0 0 -0.2 0 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0.2 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface21" -p "character:Default";
	rename -uid "68FB5828-4F42-12A4-C582-2BAC7698B283";
createNode mesh -n "polySurfaceShape21" -p "polySurface21";
	rename -uid "B8FB88B2-4671-8CE5-E772-E48EB2E50C15";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.96479988 2.50329995 0.74349999 3.014800072 2.50329995 0.74349999
		 3.014800072 2.50329995 0.79350001 2.96479988 2.50329995 0.79350001 2.96479988 2.5532999 0.74349999
		 3.014800072 2.5532999 0.74349999 3.014800072 2.5532999 0.79350001 2.96479988 2.5532999 0.79350001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0
		 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 -0.050000001 0 0
		 -0.050000001 0 0 -0.050000001 0 0 -0.050000001 0 0 0 0.050000001 0 0 0.050000001
		 0 0 0.050000001 0 0 0.050000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface22" -p "character:Default";
	rename -uid "53BC46F3-402B-ADD8-B389-23BB290846EA";
createNode mesh -n "polySurfaceShape22" -p "polySurface22";
	rename -uid "D5FBAD16-4D63-8E0B-5B2D-C9A90FF9546F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  3.21239996 2.20729995 0.69489998 3.26239991 2.20729995 0.69489998
		 3.26239991 2.20729995 0.99489999 3.21239996 2.20729995 0.99489999 3.21239996 2.2572999 0.69489998
		 3.26239991 2.2572999 0.69489998 3.26239991 2.2572999 0.99489999 3.21239996 2.2572999 0.99489999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 -0.30000001 0 0 -0.30000001 0 0 -0.30000001
		 0 0 -0.30000001 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0
		 0 0.30000001 0 0 0.30000001 0 0 0.30000001 0 0 0.30000001 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001
		 0 0 0.050000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface23" -p "character:Default";
	rename -uid "C7413C8E-42E7-0DCF-8FA9-7FBC16F5B4CC";
createNode mesh -n "polySurfaceShape23" -p "polySurface23";
	rename -uid "B1FF53F8-42F8-8DC0-BB9B-79AA622E0EFA";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.89280009 2.14750004 0.4894 3.092799902 2.14750004 0.4894
		 3.092799902 2.14750004 0.54939997 2.89280009 2.14750004 0.54939997 2.89280009 2.24749994 0.4894
		 3.092799902 2.24749994 0.4894 3.092799902 2.24749994 0.54939997 2.89280009 2.24749994 0.54939997;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.1 0 0 -0.1 0 0 -0.1 0
		 0 -0.1 0 0 0 -0.059999999 0 0 -0.059999999 0 0 -0.059999999 0 0 -0.059999999 0.2
		 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0 0 0.059999999 0 0 0.059999999 0 0 0.059999999 0 0 0.059999999
		 -0.2 0 0 -0.2 0 0 -0.2 0 0 -0.2 0 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0.1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface24" -p "character:Default";
	rename -uid "6FF79407-41B8-E3F3-D186-3B9587DF9D85";
createNode mesh -n "polySurfaceShape24" -p "polySurface24";
	rename -uid "654886E5-42B1-F267-B988-2D8E02E17DE5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.96444988 2.4533999 0.945912 3.014450073 2.4533999 0.946087
		 3.014450073 2.50340009 0.946087 2.96444988 2.50340009 0.945912 2.96515012 2.4533999 0.74591303
		 3.01515007 2.4533999 0.74608803 3.01515007 2.50340009 0.74608803 2.96515012 2.50340009 0.74591303;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  -0.00069813 8.7422798e-09 0.199999
		 -0.00069813 8.7422798e-09 0.199999 -0.00069813 8.7422798e-09 0.199999 -0.00069813
		 8.7422798e-09 0.199999 -7.6290597e-12 -0.050000001 2.18556e-09 -7.6290597e-12 -0.050000001
		 2.18556e-09 -7.6290597e-12 -0.050000001 2.18556e-09 -7.6290597e-12 -0.050000001 2.18556e-09
		 0.049999699 0 0.00017453299 0.049999699 0 0.00017453299 0.049999699 0 0.00017453299
		 0.049999699 0 0.00017453299 7.6290597e-12 0.050000001 -2.18556e-09 7.6290597e-12
		 0.050000001 -2.18556e-09 7.6290597e-12 0.050000001 -2.18556e-09 7.6290597e-12 0.050000001
		 -2.18556e-09 -0.049999699 0 -0.00017453299 -0.049999699 0 -0.00017453299 -0.049999699
		 0 -0.00017453299 -0.049999699 0 -0.00017453299 0.00069813 -8.7422798e-09 -0.199999
		 0.00069813 -8.7422798e-09 -0.199999 0.00069813 -8.7422798e-09 -0.199999 0.00069813
		 -8.7422798e-09 -0.199999;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface25" -p "character:Default";
	rename -uid "97B0820D-4431-1523-6C7E-47AA9E470DE1";
createNode mesh -n "polySurfaceShape25" -p "polySurface25";
	rename -uid "2FDA2B95-4F39-17F4-632C-379AB2F495B3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.83979988 1.60500002 0.69590002 3.13980007 1.60500002 0.69590002
		 3.13980007 1.60500002 0.99589998 2.83979988 1.60500002 0.99589998 2.83979988 1.90499997 0.69590002
		 3.13980007 1.90499997 0.69590002 3.13980007 1.90499997 0.99589998 2.83979988 1.90499997 0.99589998;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.30000001 0 0 -0.30000001
		 0 0 -0.30000001 0 0 -0.30000001 0 0 0 -0.30000001 0 0 -0.30000001 0 0 -0.30000001
		 0 0 -0.30000001 0.30000001 0 0 0.30000001 0 0 0.30000001 0 0 0.30000001 0 0 0 0 0.30000001
		 0 0 0.30000001 0 0 0.30000001 0 0 0.30000001 -0.30000001 0 0 -0.30000001 0 0 -0.30000001
		 0 0 -0.30000001 0 0 0 0.30000001 0 0 0.30000001 0 0 0.30000001 0 0 0.30000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface26" -p "character:Default";
	rename -uid "6ECFCACC-46B2-87DE-D938-5AAC100104B2";
createNode mesh -n "polySurfaceShape26" -p "polySurface26";
	rename -uid "DDF967B3-4097-B4AB-AA00-B6B804AB51F1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.74040008 1.60500002 0.64789999 2.84039998 1.60500002 0.64789999
		 2.84039998 1.60500002 1.047899961 2.74040008 1.60500002 1.047899961 2.74040008 2.0050001144 0.64789999
		 2.84039998 2.0050001144 0.64789999 2.84039998 2.0050001144 1.047899961 2.74040008 2.0050001144 1.047899961;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.40000001 0 0 -0.40000001
		 0 0 -0.40000001 0 0 -0.40000001 0 0 0 -0.40000001 0 0 -0.40000001 0 0 -0.40000001
		 0 0 -0.40000001 0.1 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0 0 0.40000001 0 0 0.40000001 0 0
		 0.40000001 0 0 0.40000001 -0.1 0 0 -0.1 0 0 -0.1 0 0 -0.1 0 0 0 0.40000001 0 0 0.40000001
		 0 0 0.40000001 0 0 0.40000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface27" -p "character:Default";
	rename -uid "1A7EA01B-46BD-8082-1EB6-D3819E047F0A";
createNode mesh -n "polySurfaceShape27" -p "polySurface27";
	rename -uid "30A15072-4D96-BB67-FF41-9FAC1D73D3B9";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  3.012799978 1.90569997 0.69590002 3.21280003 1.90569997 0.69590002
		 3.21280003 1.90569997 0.99589998 3.012799978 1.90569997 0.99589998 3.012799978 2.30570006 0.69590002
		 3.21280003 2.30570006 0.69590002 3.21280003 2.30570006 0.99589998 3.012799978 2.30570006 0.99589998;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.40000001 0 0 -0.40000001
		 0 0 -0.40000001 0 0 -0.40000001 0 0 0 -0.30000001 0 0 -0.30000001 0 0 -0.30000001
		 0 0 -0.30000001 0.2 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0 0 0.30000001 0 0 0.30000001 0 0
		 0.30000001 0 0 0.30000001 -0.2 0 0 -0.2 0 0 -0.2 0 0 -0.2 0 0 0 0.40000001 0 0 0.40000001
		 0 0 0.40000001 0 0 0.40000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface28" -p "character:Default";
	rename -uid "2957B762-4585-4E59-E313-EA84AEC0462D";
createNode mesh -n "polySurfaceShape28" -p "polySurface28";
	rename -uid "BA49AE14-4FC2-F632-61E5-949E3F158D62";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  3.21329999 2.056999922 0.7899 3.26329994 2.056999922 0.7899
		 3.26329994 2.056999922 0.88990003 3.21329999 2.056999922 0.88990003 3.21329999 2.20700002 0.7899
		 3.26329994 2.20700002 0.7899 3.26329994 2.20700002 0.88990003 3.21329999 2.20700002 0.88990003;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.15000001 0 0 -0.15000001
		 0 0 -0.15000001 0 0 -0.15000001 0 0 0 -0.1 0 0 -0.1 0 0 -0.1 0 0 -0.1 0.050000001
		 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0.1
		 -0.050000001 0 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001 0 0 0 0.15000001
		 0 0 0.15000001 0 0 0.15000001 0 0 0.15000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface29" -p "character:Default";
	rename -uid "EB3E5AEF-409C-FB07-9A84-0CB59A096E1F";
createNode mesh -n "polySurfaceShape29" -p "polySurface29";
	rename -uid "B9E95D38-4075-8865-61CF-768FF787A520";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.78979993 1.90390003 0.60140002 3.18980002 1.90390003 0.60140002
		 3.18980002 1.90390003 1.10140002 2.78979993 1.90390003 1.10140002 2.78979993 2.40389991 0.60140002
		 3.18980002 2.40389991 0.60140002 3.18980002 2.40389991 1.10140002 2.78979993 2.40389991 1.10140002;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.5 0 0 -0.5 0 0 -0.5 0
		 0 -0.5 0 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0.40000001 0 0 0.40000001 0 0 0.40000001
		 0 0 0.40000001 0 0 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 -0.40000001 0 0 -0.40000001 0
		 0 -0.40000001 0 0 -0.40000001 0 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface30" -p "character:Default";
	rename -uid "D87D77FD-44EA-2B38-EBF5-42A7E5905DF0";
createNode mesh -n "polySurfaceShape30" -p "polySurface30";
	rename -uid "2124EAC8-42EA-B0B6-B87F-D4B5B1CBF2A1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  3.012799978 1.95490003 1.045899987 3.21280003 1.95490003 1.045899987
		 3.21280003 2.25489998 1.045899987 3.012799978 2.25489998 1.045899987 3.012799978 1.95490003 0.64590001
		 3.21280003 1.95490003 0.64590001 3.21280003 2.25489998 0.64590001 3.012799978 2.25489998 0.64590001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 1.74846e-08 0.40000001 0
		 1.74846e-08 0.40000001 0 1.74846e-08 0.40000001 0 1.74846e-08 0.40000001 0 -0.30000001
		 1.31134e-08 0 -0.30000001 1.31134e-08 0 -0.30000001 1.31134e-08 0 -0.30000001 1.31134e-08
		 0.2 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0 0.30000001 -1.31134e-08 0 0.30000001 -1.31134e-08
		 0 0.30000001 -1.31134e-08 0 0.30000001 -1.31134e-08 -0.2 0 0 -0.2 0 0 -0.2 0 0 -0.2
		 0 0 0 -1.74846e-08 -0.40000001 0 -1.74846e-08 -0.40000001 0 -1.74846e-08 -0.40000001
		 0 -1.74846e-08 -0.40000001;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface31" -p "character:Default";
	rename -uid "32D6EE0E-4EB1-4842-8643-AA812D3E938E";
createNode mesh -n "polySurfaceShape31" -p "polySurface31";
	rename -uid "D762CB5E-4E6B-C4AA-1EF8-EDBD604E5869";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2.96479988 2.50329995 0.89359999 3.014800072 2.50329995 0.89359999
		 3.014800072 2.50329995 0.9436 2.96479988 2.50329995 0.9436 2.96479988 2.5532999 0.89359999
		 3.014800072 2.5532999 0.89359999 3.014800072 2.5532999 0.9436 2.96479988 2.5532999 0.9436;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0
		 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 -0.050000001 0 0
		 -0.050000001 0 0 -0.050000001 0 0 -0.050000001 0 0 0 0.050000001 0 0 0.050000001
		 0 0 0.050000001 0 0 0.050000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface32" -p "character:Default";
	rename -uid "8A16F0F3-48B5-2130-8801-D9A1248D9007";
createNode mesh -n "polySurfaceShape32" -p "polySurface32";
	rename -uid "16CA1691-4D99-035A-6FC2-AC9C3F4BEA0E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  3.21309996 2.15709996 0.89039999 3.24309993 2.15709996 0.89039999
		 3.24309993 2.15709996 0.9404 3.21309996 2.15709996 0.9404 3.21309996 2.20709991 0.89039999
		 3.24309993 2.20709991 0.89039999 3.24309993 2.20709991 0.9404 3.21309996 2.20709991 0.9404;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0.029999999 0 0 0.029999999 0 0 0.029999999 0 0 0.029999999 0 0
		 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 -0.029999999 0 0
		 -0.029999999 0 0 -0.029999999 0 0 -0.029999999 0 0 0 0.050000001 0 0 0.050000001
		 0 0 0.050000001 0 0 0.050000001 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface5";
	rename -uid "8787D1E5-4B27-7EB5-8B3C-598E0F48DE29";
	setAttr ".rp" -type "double3" 2.3675977541622597 1.6054999828338623 2.6747483960639258 ;
	setAttr ".sp" -type "double3" 2.3675977541622597 1.6054999828338623 2.6747483960639258 ;
createNode mesh -n "polySurface5Shape" -p "polySurface5";
	rename -uid "68D77D40-495A-1F1A-D74D-48BCF6802F6D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[6:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1 0.25 0 0.5
		 0 0.5 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  2.26759768 1.25549996 2.62474823 2.46759772 1.25549996 2.62474823
		 2.46759772 1.25549996 2.72474837 2.26759768 1.25549996 2.72474837 2.26759768 1.30550003 2.62474823
		 2.46759772 1.30550003 2.62474823 2.46759772 1.30550003 2.72474837 2.26759768 1.30550003 2.72474837
		 2.31259775 1.30550003 2.62474823 2.41259766 1.30550003 2.62474823 2.41259766 1.30550003 2.72474837
		 2.31259775 1.30550003 2.72474837 2.31259775 1.60549998 2.62474823 2.41259766 1.60549998 2.62474823
		 2.41259766 1.60549998 2.72474837 2.31259775 1.60549998 2.72474837;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 9 0 8 12 0 13 14 0
		 14 10 0 14 15 0 15 11 0 15 12 0;
	setAttr -s 48 ".n[0:47]" -type "float3"  0 -0.050000001 0 0 -0.050000001
		 0 0 -0.050000001 0 0 -0.050000001 0 0 0 -0.1 0 0 -0.1 0 0 -0.1 0 0 -0.1 0.2 0 0 0.2
		 0 0 0.2 0 0 0.2 0 0 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0.1 -0.2 0 0 -0.2 0 0 -0.2 0 0 -0.2
		 0 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 -0.30000001
		 0 0 -0.30000001 0 0 -0.30000001 0 0 -0.30000001 0 0 0 -0.1 0 0 -0.1 0 0 -0.1 0 0
		 -0.1 0.1 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0.1 -0.1 0 0 -0.1
		 0 0 -0.1 0 0 -0.1 0 0 0 0.30000001 0 0 0.30000001 0 0 0.30000001 0 0 0.30000001 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13
		f 4 12 13 14 15
		mu 0 4 14 15 16 17
		f 4 16 17 -13 18
		mu 0 4 18 19 20 21
		f 4 19 20 -14 -18
		mu 0 4 19 22 16 20
		f 4 21 22 -15 -21
		mu 0 4 22 23 17 16
		f 4 23 -19 -16 -23
		mu 0 4 23 24 25 17
		f 4 -24 -22 -20 -17
		mu 0 4 26 23 22 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface9";
	rename -uid "51ED5D1C-4CC3-D6CF-4DB0-C0BBE4AE380F";
	setAttr ".rp" -type "double3" 2.3675977541622597 1.6054999828338623 2.8727484098922034 ;
	setAttr ".sp" -type "double3" 2.3675977541622597 1.6054999828338623 2.8727484098922034 ;
createNode mesh -n "polySurface9Shape" -p "polySurface9";
	rename -uid "AAB7B429-4F05-4FE4-48D8-9D9C40114739";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[6:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.25 0 0.5 0 0.5
		 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1 0.25 0 0.5
		 0 0.5 0.33333299 0.25 0.33333299 1 0.66666698 0.75 0.66666698 0.75 0.33333299 1 0.33333299
		 0.5 0.66666698 0.25 0.66666698 0 0.66666698 0 0.33333299 0.25 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  2.31259775 1.30550003 2.82274842 2.41259766 1.30550003 2.82274842
		 2.41259766 1.30550003 2.92274833 2.31259775 1.30550003 2.92274833 2.31259775 1.60549998 2.82274842
		 2.41259766 1.60549998 2.82274842 2.41259766 1.60549998 2.92274833 2.31259775 1.60549998 2.92274833
		 2.26759768 1.255 2.82274842 2.46759772 1.255 2.82274842 2.46759772 1.255 2.92274833
		 2.26759768 1.255 2.92274833 2.26759768 1.30499995 2.82274842 2.46759772 1.30499995 2.82274842
		 2.46759772 1.30499995 2.92274833 2.26759768 1.30499995 2.92274833;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 6 7 0 7 3 0 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 9 0 8 12 0 13 14 0
		 14 10 0 14 15 0 15 11 0 15 12 0;
	setAttr -s 48 ".n[0:47]" -type "float3"  0 -0.30000001 0 0 -0.30000001
		 0 0 -0.30000001 0 0 -0.30000001 0 0 0 -0.1 0 0 -0.1 0 0 -0.1 0 0 -0.1 0.1 0 0 0.1
		 0 0 0.1 0 0 0.1 0 0 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0.1 -0.1 0 0 -0.1 0 0 -0.1 0 0 -0.1
		 0 0 0 0.30000001 0 0 0.30000001 0 0 0.30000001 0 0 0.30000001 0 0 -0.050000001 0
		 0 -0.050000001 0 0 -0.050000001 0 0 -0.050000001 0 0 0 -0.1 0 0 -0.1 0 0 -0.1 0 0
		 -0.1 0.2 0 0 0.2 0 0 0.2 0 0 0.2 0 0 0 0 0.1 0 0 0.1 0 0 0.1 0 0 0.1 -0.2 0 0 -0.2
		 0 0 -0.2 0 0 -0.2 0 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001 0 0 0.050000001
		 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 -2 -6
		mu 0 4 5 8 2 6
		f 4 9 10 -3 -9
		mu 0 4 8 9 3 2
		f 4 11 -7 -4 -11
		mu 0 4 9 10 11 3
		f 4 -12 -10 -8 -5
		mu 0 4 12 9 8 13
		f 4 12 13 14 15
		mu 0 4 14 15 16 17
		f 4 16 17 -13 18
		mu 0 4 18 19 20 21
		f 4 19 20 -14 -18
		mu 0 4 19 22 16 20
		f 4 21 22 -15 -21
		mu 0 4 22 23 17 16
		f 4 23 -19 -16 -23
		mu 0 4 23 24 25 17
		f 4 -24 -22 -20 -17
		mu 0 4 26 23 22 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E2523410-4AF6-45E9-D46C-EC9B636820CE";
	setAttr -s 14 ".lnk";
	setAttr -s 14 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3778FE52-40F4-EC86-B341-26B9073CD3ED";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6C5A0780-4D53-91B3-6FC1-60A491369623";
createNode displayLayerManager -n "layerManager";
	rename -uid "0202679A-42BC-E982-2CA0-90A94912BF86";
createNode displayLayer -n "defaultLayer";
	rename -uid "5006F69A-4160-77A1-5AE6-BDBA3D23812C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "43E3A197-43AD-052A-E0B8-3B9F9BC83BF8";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FFF2C071-43EA-36C2-81C0-1189598A3C9C";
	setAttr ".g" yes;
createNode shadingEngine -n "character:character_032skin";
	rename -uid "6131BF6C-44DE-06D4-7F3D-40AC0C19BB03";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "character:materialInfo1";
	rename -uid "B5B7D6F5-4232-9222-A993-0EBA378779DE";
createNode phong -n "character:character_032skin1";
	rename -uid "2822740B-420F-3FD0-0FB1-E391880263AF";
	setAttr ".c" -type "float3" 0.71033901 0.178582 0.0092898002 ;
	setAttr ".sc" -type "float3" 0.039999999 0.039999999 0.039999999 ;
	setAttr ".cp" 258;
createNode shadingEngine -n "character:character_skin_dark";
	rename -uid "B8A6B534-409A-5058-3B7F-1ABBE555AA1F";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 8 ".gn";
createNode materialInfo -n "character:materialInfo2";
	rename -uid "C7B7EEB6-4482-194E-6EFC-E2BDD2D2B119";
createNode phong -n "character:character_skin_dark1";
	rename -uid "1B4980E2-403B-0DCC-818C-56BF1190DB41";
	setAttr ".c" -type "float3" 0 0.17268801 0 ;
	setAttr ".sc" -type "float3" 0.039999999 0.039999999 0.039999999 ;
	setAttr ".cp" 258;
createNode shadingEngine -n "character:character_blush";
	rename -uid "9458591C-435A-2A39-9CB4-598F31A47A0C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "character:materialInfo3";
	rename -uid "E96D58A7-484C-71B7-2BA4-A78C985AE494";
createNode phong -n "character:character_blush1";
	rename -uid "8E02A2BC-40EF-CEFD-903B-9997F837963E";
	setAttr ".c" -type "float3" 0.71701503 0.037332099 0.00169975 ;
	setAttr ".sc" -type "float3" 0.039999999 0.039999999 0.039999999 ;
	setAttr ".cp" 258;
createNode shadingEngine -n "character:character_032brown_043LIGHT";
	rename -uid "A8E7E7AA-4C02-FC2D-0FC0-7A9D9BCEFEDB";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "character:materialInfo4";
	rename -uid "68CECF9F-4374-E98F-DE7C-04AF1785B84E";
createNode phong -n "character:character_032brown_043LIGHT1";
	rename -uid "DD05EA87-412D-8A52-03EC-12B1B178801B";
	setAttr ".c" -type "float3" 0.14758 0.036148999 0 ;
	setAttr ".sc" -type "float3" 0.039999999 0.039999999 0.039999999 ;
	setAttr ".cp" 258;
createNode shadingEngine -n "character:croal_deepyellow";
	rename -uid "6D815B6A-4A35-FC13-FA4C-8C8FDD70E67D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "character:materialInfo5";
	rename -uid "91379FD0-453F-3A0C-8674-338699A7A6E1";
createNode phong -n "character:croal_deepyellow1";
	rename -uid "530CDA56-45DF-6E06-1CCA-EE8EEC6BE564";
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0 ;
	setAttr ".sc" -type "float3" 0.039999999 0.039999999 0.039999999 ;
	setAttr ".cp" 258;
createNode shadingEngine -n "character:character_eye_balck";
	rename -uid "26FC2CB1-45CE-171E-6D6E-9CA01AB99C1C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "character:materialInfo6";
	rename -uid "12EB4AC2-4C8A-7C1F-93E1-59B54162F313";
createNode phong -n "character:character_eye_balck1";
	rename -uid "234351FD-4EBA-BB24-8C2C-069B5317EE44";
	setAttr ".c" -type "float3" 0 0 0 ;
	setAttr ".sc" -type "float3" 0.039999999 0.039999999 0.039999999 ;
	setAttr ".cp" 258;
createNode shadingEngine -n "character:character_skin_green2";
	rename -uid "75FD23FF-4E85-9F74-B63A-908F29EFB52A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "character:materialInfo7";
	rename -uid "AA071286-432E-D892-5634-79B13726C269";
createNode phong -n "character:character_skin_green3";
	rename -uid "5985C430-4BE7-8FAE-510B-B9A8E16D7477";
	setAttr ".c" -type "float3" 0.226519 0.80000001 0.226519 ;
	setAttr ".sc" -type "float3" 0.039999999 0.039999999 0.039999999 ;
	setAttr ".cp" 258;
createNode shadingEngine -n "character:character_032brown";
	rename -uid "B5AF41C6-4BEA-B195-564C-1598476420E3";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "character:materialInfo8";
	rename -uid "E2849CEA-4B4E-5931-5C68-D68C2AEAFE60";
createNode phong -n "character:character_032brown1";
	rename -uid "F4B3945B-4716-8CD5-24D3-FE9AB4EC0569";
	setAttr ".c" -type "float3" 0.062549897 0.0162309 0 ;
	setAttr ".sc" -type "float3" 0.039999999 0.039999999 0.039999999 ;
	setAttr ".cp" 258;
createNode shadingEngine -n "character:seedweed";
	rename -uid "983FEFD4-4CA4-6298-67A8-49964F07F812";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "character:materialInfo9";
	rename -uid "F1CEB61F-4272-6D48-DA71-709F7618A3BF";
createNode phong -n "character:seedweed1";
	rename -uid "665AD69E-4D33-158B-A3EF-7FAB2637E540";
	setAttr ".c" -type "float3" 0 0.17268801 0.041015599 ;
	setAttr ".sc" -type "float3" 0.039999999 0.039999999 0.039999999 ;
	setAttr ".cp" 258;
createNode shadingEngine -n "character:character_skin_green";
	rename -uid "DD45BBEA-4B5F-99E8-CD97-3887F39A3DEF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "character:materialInfo10";
	rename -uid "617A60E7-4389-DAAE-5F55-0DABE0228FAF";
createNode phong -n "character:character_skin_green4";
	rename -uid "19B886D1-4009-C19B-7731-718C519B13A7";
	setAttr ".c" -type "float3" 0 0.80000001 0 ;
	setAttr ".sc" -type "float3" 0.039999999 0.039999999 0.039999999 ;
	setAttr ".cp" 258;
createNode shadingEngine -n "character:character_032brwon";
	rename -uid "2377214D-409B-BC67-52E6-948A93A28306";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "character:materialInfo11";
	rename -uid "CF68FE2A-4AF8-BEDE-1023-1B8FCAB35DB2";
createNode phong -n "character:character_032brwon1";
	rename -uid "F2E5F188-4F86-0C10-6CDA-D48C93C42F0A";
	setAttr ".c" -type "float3" 0.730479 0.30506101 0.091548301 ;
	setAttr ".sc" -type "float3" 0.039999999 0.039999999 0.039999999 ;
	setAttr ".cp" 258;
createNode shadingEngine -n "character:character_bright";
	rename -uid "E816AEFA-4584-E166-42E8-A4830CF1CBC9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "character:materialInfo12";
	rename -uid "5D3A2459-4C98-6978-FE84-06B83903B496";
createNode phong -n "character:character_bright1";
	rename -uid "1C05BA95-4ACB-BDDF-DA31-9CB34B114BBC";
	setAttr ".c" -type "float3" 0.17268801 0.80000001 0 ;
	setAttr ".sc" -type "float3" 0.039999999 0.039999999 0.039999999 ;
	setAttr ".cp" 258;
createNode groupId -n "groupId37";
	rename -uid "E6657538-48A7-56FF-DCDA-3BBC14181BEB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	rename -uid "4360EDD9-47DE-E0F7-3C41-78AE22591E98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId39";
	rename -uid "2B93FF92-4C40-D73C-165F-D9A70C521BCC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	rename -uid "C006AF80-4AEF-5E35-89A8-0D880258AE69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId41";
	rename -uid "4C9895D2-4C54-DD48-CA0E-E6A3738F8E25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	rename -uid "B0254768-4631-5999-EB0C-B893F5227EB7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId43";
	rename -uid "2842984A-47A5-D768-C6B6-FC81E2444B20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	rename -uid "158ACFD3-46A6-9DD0-050D-968D8813AD25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId45";
	rename -uid "29BBBC10-4512-1E74-394C-50B55494297A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	rename -uid "77DB08D8-4C1F-C1F1-075C-6DBCB21A1E90";
	setAttr ".ihi" 0;
createNode groupId -n "groupId47";
	rename -uid "6992E756-4FDF-46EF-8BDA-AC94164891EC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	rename -uid "32C6AB4A-4E64-72B9-ACFB-C09BD34C38A3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId49";
	rename -uid "125C7998-4E3B-38BF-BBF2-D8B6F711E2DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId50";
	rename -uid "12A098D5-4405-F5E4-CC2D-438EC1CE85ED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId51";
	rename -uid "AC67188D-4113-BABB-903E-0AA5196EF66C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	rename -uid "0A08986E-4A67-1B5B-6C07-BEA7F2BF1FFE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId53";
	rename -uid "36E3DEA3-4098-0276-4225-FAA1980A1ADB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	rename -uid "74E2ADEE-47D5-C6E4-7DA9-ACAFCD9FC0CA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId55";
	rename -uid "87C3D6D2-48C0-696B-3130-5DBA66D02D88";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	rename -uid "03BD697E-4BC9-80D2-197D-FC863A455C0B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	rename -uid "B6B5081E-4B9E-5427-D4F4-219F3F0F6B30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	rename -uid "91C5EC12-4FFA-1B1B-EC9B-5B8B0EECD848";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	rename -uid "249C4414-4E52-1164-0765-E18B123BEA3D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	rename -uid "A399CEAA-4356-2BD3-1926-B589328C9A46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	rename -uid "D959D10D-4867-3B6A-4BC4-C19C78BB5256";
	setAttr ".ihi" 0;
createNode groupId -n "groupId62";
	rename -uid "4B471C5B-4F78-7667-7F0D-D1B99D5347A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId63";
	rename -uid "BC176C71-4F24-AD37-D790-39B651DAA974";
	setAttr ".ihi" 0;
createNode groupId -n "groupId64";
	rename -uid "F907E452-4FC9-FD01-EFD7-5ABD57A6D123";
	setAttr ".ihi" 0;
createNode groupId -n "groupId65";
	rename -uid "E0C1CB45-4AEA-746C-0FF5-00ABD280520E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId66";
	rename -uid "7479FA3D-4F34-1624-AA1E-F7B4E3B8FEB1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId67";
	rename -uid "61DEF0C4-4152-9605-22FA-37868FE01215";
	setAttr ".ihi" 0;
createNode groupId -n "groupId68";
	rename -uid "36DD3ED4-4C6C-7A69-6E11-7EA0ED2252F8";
	setAttr ".ihi" 0;
createNode animCurveTA -n "polySurface5_rotateX";
	rename -uid "681A28FD-4CF4-B282-69B1-73B80A6971CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 30 0 50 0 60 0;
createNode animCurveTA -n "polySurface5_rotateY";
	rename -uid "D72E8B3C-4171-B1D5-2DDF-A59525938E41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 30 0 50 0 60 0;
createNode animCurveTA -n "polySurface5_rotateZ";
	rename -uid "37351ECB-4E96-E1F5-0159-9BA3E4EEA8AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 45 30 -45 50 45 60 0;
createNode animCurveTU -n "polySurface5_visibility";
	rename -uid "3DF5952C-4677-6242-5EF2-DE925924A602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 30 1 50 1 60 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "polySurface5_translateX";
	rename -uid "590164A8-4E37-4DDC-C3CF-538F6D69DDB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 30 0 50 0 60 0;
createNode animCurveTL -n "polySurface5_translateY";
	rename -uid "8B3C2917-439B-A070-D344-4C8E25CD2339";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 30 0 50 0 60 0;
createNode animCurveTL -n "polySurface5_translateZ";
	rename -uid "5059A229-485C-B02D-E99A-0BA5B56C361B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 30 0 50 0 60 0;
createNode animCurveTU -n "polySurface5_scaleX";
	rename -uid "00930EBE-4F9C-CE56-CD10-28A8E2E5E5E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 30 1 50 1 60 1;
createNode animCurveTU -n "polySurface5_scaleY";
	rename -uid "5D7EB798-4842-F77E-B067-F693520192DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 30 1 50 1 60 1;
createNode animCurveTU -n "polySurface5_scaleZ";
	rename -uid "C32C7970-42C4-4534-0234-37AD976DD2D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 30 1 50 1 60 1;
createNode animCurveTA -n "polySurface9_rotateX";
	rename -uid "D93622D3-430B-ADA9-8454-6DAEC3250D81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 30 0 50 0 60 0;
createNode animCurveTA -n "polySurface9_rotateY";
	rename -uid "0555F6DB-4C6B-0195-CC78-638EABD307B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 30 0 50 0 60 0;
createNode animCurveTA -n "polySurface9_rotateZ";
	rename -uid "06DF523D-4A50-0F82-DAC6-EFBE37F8AB95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 -45 30 45 50 -45 60 0;
createNode animCurveTU -n "polySurface9_visibility";
	rename -uid "2970F7EE-4658-6425-F231-E6BAC23E7D0F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 30 1 50 1 60 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "polySurface9_translateX";
	rename -uid "354F9DC0-41F6-7EDF-7F39-F3AA20245F56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 30 0 50 0 60 0;
createNode animCurveTL -n "polySurface9_translateY";
	rename -uid "D9BCF7AE-4900-E820-B97B-B690ABAA6E95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 30 0 50 0 60 0;
createNode animCurveTL -n "polySurface9_translateZ";
	rename -uid "D62B96C7-42C7-ABD5-D05B-7DB5390FB0BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 30 0 50 0 60 0;
createNode animCurveTU -n "polySurface9_scaleX";
	rename -uid "E48CB199-412F-C7A8-0B34-548EA1FE47C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 30 1 50 1 60 1;
createNode animCurveTU -n "polySurface9_scaleY";
	rename -uid "EE6068F5-4A65-9A7B-5369-E1AD258BD81D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 30 1 50 1 60 1;
createNode animCurveTU -n "polySurface9_scaleZ";
	rename -uid "6E4AE12E-40FF-39FD-A888-E0B57765E999";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 30 1 50 1 60 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8A790449-4E32-9EB5-59D3-F38C19826350";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1582\n            -height 711\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1582\\n    -height 711\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1582\\n    -height 711\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6CC6B79E-49D0-55CD-DAC8-4E8B0A264A8C";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 14 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 16 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId68.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr "character:character_032skin.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupId64.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr "character:character_skin_dark.mwc" "polySurfaceShape2.iog.og[0].gco"
		;
connectAttr "groupId62.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr "character:character_blush.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupId59.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr "character:character_032brown_043LIGHT.mwc" "polySurfaceShape6.iog.og[0].gco"
		;
connectAttr "groupId61.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr "character:character_032skin.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupId58.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr "character:character_skin_dark.mwc" "polySurfaceShape8.iog.og[0].gco"
		;
connectAttr "groupId54.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr "character:character_skin_dark.mwc" "polySurfaceShape11.iog.og[0].gco"
		;
connectAttr "groupId66.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr "character:character_032brown_043LIGHT.mwc" "polySurfaceShape12.iog.og[0].gco"
		;
connectAttr "groupId53.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr "character:croal_deepyellow.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupId50.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr "character:character_eye_balck.mwc" "polySurfaceShape14.iog.og[0].gco"
		;
connectAttr "groupId57.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr "character:character_skin_dark.mwc" "polySurfaceShape15.iog.og[0].gco"
		;
connectAttr "groupId51.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr "character:character_skin_green2.mwc" "polySurfaceShape16.iog.og[0].gco"
		;
connectAttr "groupId49.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr "character:character_blush.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupId65.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr "character:character_skin_green2.mwc" "polySurfaceShape18.iog.og[0].gco"
		;
connectAttr "groupId52.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr "character:character_032brown.mwc" "polySurfaceShape19.iog.og[0].gco"
		;
connectAttr "groupId48.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr "character:character_skin_dark.mwc" "polySurfaceShape20.iog.og[0].gco"
		;
connectAttr "groupId45.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr "character:seedweed.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupId44.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr "character:character_032brown.mwc" "polySurfaceShape22.iog.og[0].gco"
		;
connectAttr "groupId47.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr "character:character_skin_dark.mwc" "polySurfaceShape23.iog.og[0].gco"
		;
connectAttr "groupId43.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr "character:seedweed.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupId41.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr "character:character_skin_green.mwc" "polySurfaceShape25.iog.og[0].gco"
		;
connectAttr "groupId40.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr "character:character_032brown.mwc" "polySurfaceShape26.iog.og[0].gco"
		;
connectAttr "groupId60.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr "character:character_032brwon.mwc" "polySurfaceShape27.iog.og[0].gco"
		;
connectAttr "groupId46.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr "character:character_032skin.mwc" "polySurfaceShape28.iog.og[0].gco"
		;
connectAttr "groupId67.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr "character:character_bright.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupId63.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr "character:character_032brwon.mwc" "polySurfaceShape30.iog.og[0].gco"
		;
connectAttr "groupId42.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr "character:seedweed.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupId39.id" "polySurfaceShape32.iog.og[0].gid";
connectAttr "character:character_eye_balck.mwc" "polySurfaceShape32.iog.og[0].gco"
		;
connectAttr "polySurface5_rotateX.o" "polySurface5.rx";
connectAttr "polySurface5_rotateY.o" "polySurface5.ry";
connectAttr "polySurface5_rotateZ.o" "polySurface5.rz";
connectAttr "polySurface5_visibility.o" "polySurface5.v";
connectAttr "polySurface5_translateX.o" "polySurface5.tx";
connectAttr "polySurface5_translateY.o" "polySurface5.ty";
connectAttr "polySurface5_translateZ.o" "polySurface5.tz";
connectAttr "polySurface5_scaleX.o" "polySurface5.sx";
connectAttr "polySurface5_scaleY.o" "polySurface5.sy";
connectAttr "polySurface5_scaleZ.o" "polySurface5.sz";
connectAttr "groupId37.id" "polySurface5Shape.iog.og[0].gid";
connectAttr "character:character_032skin.mwc" "polySurface5Shape.iog.og[0].gco";
connectAttr "groupId38.id" "polySurface5Shape.iog.og[1].gid";
connectAttr "character:character_skin_dark.mwc" "polySurface5Shape.iog.og[1].gco"
		;
connectAttr "polySurface9_rotateX.o" "polySurface9.rx";
connectAttr "polySurface9_rotateY.o" "polySurface9.ry";
connectAttr "polySurface9_rotateZ.o" "polySurface9.rz";
connectAttr "polySurface9_visibility.o" "polySurface9.v";
connectAttr "polySurface9_translateX.o" "polySurface9.tx";
connectAttr "polySurface9_translateY.o" "polySurface9.ty";
connectAttr "polySurface9_translateZ.o" "polySurface9.tz";
connectAttr "polySurface9_scaleX.o" "polySurface9.sx";
connectAttr "polySurface9_scaleY.o" "polySurface9.sy";
connectAttr "polySurface9_scaleZ.o" "polySurface9.sz";
connectAttr "groupId55.id" "polySurface9Shape.iog.og[0].gid";
connectAttr "character:character_skin_dark.mwc" "polySurface9Shape.iog.og[0].gco"
		;
connectAttr "groupId56.id" "polySurface9Shape.iog.og[1].gid";
connectAttr "character:character_032skin.mwc" "polySurface9Shape.iog.og[1].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "character:character_032skin.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "character:character_skin_dark.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "character:character_blush.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "character:character_032brown_043LIGHT.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "character:croal_deepyellow.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "character:character_eye_balck.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "character:character_skin_green2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "character:character_032brown.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "character:seedweed.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "character:character_skin_green.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "character:character_032brwon.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "character:character_bright.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "character:character_032skin.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "character:character_skin_dark.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "character:character_blush.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "character:character_032brown_043LIGHT.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "character:croal_deepyellow.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "character:character_eye_balck.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "character:character_skin_green2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "character:character_032brown.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "character:seedweed.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "character:character_skin_green.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "character:character_032brwon.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "character:character_bright.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "character:character_032skin1.oc" "character:character_032skin.ss";
connectAttr "groupId37.msg" "character:character_032skin.gn" -na;
connectAttr "groupId46.msg" "character:character_032skin.gn" -na;
connectAttr "groupId56.msg" "character:character_032skin.gn" -na;
connectAttr "groupId61.msg" "character:character_032skin.gn" -na;
connectAttr "groupId68.msg" "character:character_032skin.gn" -na;
connectAttr "polySurface5Shape.iog.og[0]" "character:character_032skin.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" "character:character_032skin.dsm" -na
		;
connectAttr "polySurface9Shape.iog.og[1]" "character:character_032skin.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" "character:character_032skin.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" "character:character_032skin.dsm" -na;
connectAttr "character:character_032skin.msg" "character:materialInfo1.sg";
connectAttr "character:character_032skin1.msg" "character:materialInfo1.m";
connectAttr "character:character_skin_dark1.oc" "character:character_skin_dark.ss"
		;
connectAttr "groupId38.msg" "character:character_skin_dark.gn" -na;
connectAttr "groupId47.msg" "character:character_skin_dark.gn" -na;
connectAttr "groupId48.msg" "character:character_skin_dark.gn" -na;
connectAttr "groupId54.msg" "character:character_skin_dark.gn" -na;
connectAttr "groupId55.msg" "character:character_skin_dark.gn" -na;
connectAttr "groupId57.msg" "character:character_skin_dark.gn" -na;
connectAttr "groupId58.msg" "character:character_skin_dark.gn" -na;
connectAttr "groupId64.msg" "character:character_skin_dark.gn" -na;
connectAttr "polySurface5Shape.iog.og[1]" "character:character_skin_dark.dsm" -na
		;
connectAttr "polySurfaceShape23.iog.og[0]" "character:character_skin_dark.dsm" -na
		;
connectAttr "polySurfaceShape20.iog.og[0]" "character:character_skin_dark.dsm" -na
		;
connectAttr "polySurfaceShape11.iog.og[0]" "character:character_skin_dark.dsm" -na
		;
connectAttr "polySurface9Shape.iog.og[0]" "character:character_skin_dark.dsm" -na
		;
connectAttr "polySurfaceShape15.iog.og[0]" "character:character_skin_dark.dsm" -na
		;
connectAttr "polySurfaceShape8.iog.og[0]" "character:character_skin_dark.dsm" -na
		;
connectAttr "polySurfaceShape2.iog.og[0]" "character:character_skin_dark.dsm" -na
		;
connectAttr "character:character_skin_dark.msg" "character:materialInfo2.sg";
connectAttr "character:character_skin_dark1.msg" "character:materialInfo2.m";
connectAttr "character:character_blush1.oc" "character:character_blush.ss";
connectAttr "groupId49.msg" "character:character_blush.gn" -na;
connectAttr "groupId62.msg" "character:character_blush.gn" -na;
connectAttr "polySurfaceShape17.iog.og[0]" "character:character_blush.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" "character:character_blush.dsm" -na;
connectAttr "character:character_blush.msg" "character:materialInfo3.sg";
connectAttr "character:character_blush1.msg" "character:materialInfo3.m";
connectAttr "character:character_032brown_043LIGHT1.oc" "character:character_032brown_043LIGHT.ss"
		;
connectAttr "groupId59.msg" "character:character_032brown_043LIGHT.gn" -na;
connectAttr "groupId66.msg" "character:character_032brown_043LIGHT.gn" -na;
connectAttr "polySurfaceShape6.iog.og[0]" "character:character_032brown_043LIGHT.dsm"
		 -na;
connectAttr "polySurfaceShape12.iog.og[0]" "character:character_032brown_043LIGHT.dsm"
		 -na;
connectAttr "character:character_032brown_043LIGHT.msg" "character:materialInfo4.sg"
		;
connectAttr "character:character_032brown_043LIGHT1.msg" "character:materialInfo4.m"
		;
connectAttr "character:croal_deepyellow1.oc" "character:croal_deepyellow.ss";
connectAttr "groupId53.msg" "character:croal_deepyellow.gn" -na;
connectAttr "polySurfaceShape13.iog.og[0]" "character:croal_deepyellow.dsm" -na;
connectAttr "character:croal_deepyellow.msg" "character:materialInfo5.sg";
connectAttr "character:croal_deepyellow1.msg" "character:materialInfo5.m";
connectAttr "character:character_eye_balck1.oc" "character:character_eye_balck.ss"
		;
connectAttr "groupId39.msg" "character:character_eye_balck.gn" -na;
connectAttr "groupId50.msg" "character:character_eye_balck.gn" -na;
connectAttr "polySurfaceShape32.iog.og[0]" "character:character_eye_balck.dsm" -na
		;
connectAttr "polySurfaceShape14.iog.og[0]" "character:character_eye_balck.dsm" -na
		;
connectAttr "character:character_eye_balck.msg" "character:materialInfo6.sg";
connectAttr "character:character_eye_balck1.msg" "character:materialInfo6.m";
connectAttr "character:character_skin_green3.oc" "character:character_skin_green2.ss"
		;
connectAttr "groupId51.msg" "character:character_skin_green2.gn" -na;
connectAttr "groupId65.msg" "character:character_skin_green2.gn" -na;
connectAttr "polySurfaceShape16.iog.og[0]" "character:character_skin_green2.dsm"
		 -na;
connectAttr "polySurfaceShape18.iog.og[0]" "character:character_skin_green2.dsm"
		 -na;
connectAttr "character:character_skin_green2.msg" "character:materialInfo7.sg";
connectAttr "character:character_skin_green3.msg" "character:materialInfo7.m";
connectAttr "character:character_032brown1.oc" "character:character_032brown.ss"
		;
connectAttr "groupId40.msg" "character:character_032brown.gn" -na;
connectAttr "groupId44.msg" "character:character_032brown.gn" -na;
connectAttr "groupId52.msg" "character:character_032brown.gn" -na;
connectAttr "polySurfaceShape26.iog.og[0]" "character:character_032brown.dsm" -na
		;
connectAttr "polySurfaceShape22.iog.og[0]" "character:character_032brown.dsm" -na
		;
connectAttr "polySurfaceShape19.iog.og[0]" "character:character_032brown.dsm" -na
		;
connectAttr "character:character_032brown.msg" "character:materialInfo8.sg";
connectAttr "character:character_032brown1.msg" "character:materialInfo8.m";
connectAttr "character:seedweed1.oc" "character:seedweed.ss";
connectAttr "groupId42.msg" "character:seedweed.gn" -na;
connectAttr "groupId43.msg" "character:seedweed.gn" -na;
connectAttr "groupId45.msg" "character:seedweed.gn" -na;
connectAttr "polySurfaceShape31.iog.og[0]" "character:seedweed.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" "character:seedweed.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" "character:seedweed.dsm" -na;
connectAttr "character:seedweed.msg" "character:materialInfo9.sg";
connectAttr "character:seedweed1.msg" "character:materialInfo9.m";
connectAttr "character:character_skin_green4.oc" "character:character_skin_green.ss"
		;
connectAttr "groupId41.msg" "character:character_skin_green.gn" -na;
connectAttr "polySurfaceShape25.iog.og[0]" "character:character_skin_green.dsm" 
		-na;
connectAttr "character:character_skin_green.msg" "character:materialInfo10.sg";
connectAttr "character:character_skin_green4.msg" "character:materialInfo10.m";
connectAttr "character:character_032brwon1.oc" "character:character_032brwon.ss"
		;
connectAttr "groupId60.msg" "character:character_032brwon.gn" -na;
connectAttr "groupId63.msg" "character:character_032brwon.gn" -na;
connectAttr "polySurfaceShape27.iog.og[0]" "character:character_032brwon.dsm" -na
		;
connectAttr "polySurfaceShape30.iog.og[0]" "character:character_032brwon.dsm" -na
		;
connectAttr "character:character_032brwon.msg" "character:materialInfo11.sg";
connectAttr "character:character_032brwon1.msg" "character:materialInfo11.m";
connectAttr "character:character_bright1.oc" "character:character_bright.ss";
connectAttr "groupId67.msg" "character:character_bright.gn" -na;
connectAttr "polySurfaceShape29.iog.og[0]" "character:character_bright.dsm" -na;
connectAttr "character:character_bright.msg" "character:materialInfo12.sg";
connectAttr "character:character_bright1.msg" "character:materialInfo12.m";
connectAttr "character:character_032skin.pa" ":renderPartition.st" -na;
connectAttr "character:character_skin_dark.pa" ":renderPartition.st" -na;
connectAttr "character:character_blush.pa" ":renderPartition.st" -na;
connectAttr "character:character_032brown_043LIGHT.pa" ":renderPartition.st" -na
		;
connectAttr "character:croal_deepyellow.pa" ":renderPartition.st" -na;
connectAttr "character:character_eye_balck.pa" ":renderPartition.st" -na;
connectAttr "character:character_skin_green2.pa" ":renderPartition.st" -na;
connectAttr "character:character_032brown.pa" ":renderPartition.st" -na;
connectAttr "character:seedweed.pa" ":renderPartition.st" -na;
connectAttr "character:character_skin_green.pa" ":renderPartition.st" -na;
connectAttr "character:character_032brwon.pa" ":renderPartition.st" -na;
connectAttr "character:character_bright.pa" ":renderPartition.st" -na;
connectAttr "character:character_032skin1.msg" ":defaultShaderList1.s" -na;
connectAttr "character:character_skin_dark1.msg" ":defaultShaderList1.s" -na;
connectAttr "character:character_blush1.msg" ":defaultShaderList1.s" -na;
connectAttr "character:character_032brown_043LIGHT1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "character:croal_deepyellow1.msg" ":defaultShaderList1.s" -na;
connectAttr "character:character_eye_balck1.msg" ":defaultShaderList1.s" -na;
connectAttr "character:character_skin_green3.msg" ":defaultShaderList1.s" -na;
connectAttr "character:character_032brown1.msg" ":defaultShaderList1.s" -na;
connectAttr "character:seedweed1.msg" ":defaultShaderList1.s" -na;
connectAttr "character:character_skin_green4.msg" ":defaultShaderList1.s" -na;
connectAttr "character:character_032brwon1.msg" ":defaultShaderList1.s" -na;
connectAttr "character:character_bright1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Animation_Leg.ma
