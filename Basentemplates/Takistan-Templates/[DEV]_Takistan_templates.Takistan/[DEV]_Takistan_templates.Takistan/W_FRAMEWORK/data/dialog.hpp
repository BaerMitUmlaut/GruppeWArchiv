﻿#define LEADER_PIC				"W_FRAMEWORK\data\isLeader.paa"
#define VEHICLE_PIC 			"W_FRAMEWORK\data\isInVehicle.paa"

#define IDC_CB		2500
#define IDC_CB_1	2501
#define IDC_CB_2	2502
#define IDC_CB_3	2503

#define IDC_LB		1500
#define IDC_LB_1	1501

class W_RscTeleportDialog {
	idd = -1;
	movingEnable = 0;
	onLoad = "['init',_this] call FETT_fnc_W_RscTeleportInit;";

	class controls {
		class back
		{
			colorBackground[] = {-1,-1,-1,0.6};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			idc = -1;
			shadow = 0;
			sizeEx = 0;
			style = 128;
			text = "";
			type = 0;

			x = 0.427786 * safezoneW + safezoneX;
			y = 0.295461 * safezoneH + safezoneY;
			w = 0.144428 * safezoneW;
			h = 0.239728 * safezoneH;
		};
		class back_1: back
		{
			idc = -1;

			x = 0.324623 * safezoneW + safezoneX;
			y = 0.295461 * safezoneH + safezoneY;
			w = 0.101099 * safezoneW;
			h = 0.239728 * safezoneH;
		};
		class back_2: back
		{
			idc = -1;

			x = 0.574277 * safezoneW + safezoneX;
			y = 0.295461 * safezoneH + safezoneY;
			w = 0.101099 * safezoneW;
			h = 0.239728 * safezoneH;
		};
		class back_3: back
		{
			idc = -1;

			x = 0.427786 * safezoneW + safezoneX;
			y = 0.576977 * safezoneH + safezoneY;
			w = 0.144428 * safezoneW;
			h = 0.076977 * safezoneH;
		};
		class title
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",0.8};
			colorText[] = {1,1,1,1};
			colorShadow[] = {0,0,0,0.5};
			fixedWidth = 0;
			font = "PuristaMedium";
			idc = -1;
			linespacing = 1;
			shadow = 1;
			SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			style = 0;
			text = "Teleport";
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			type = 0;

			x = 0.324623 * safezoneW + safezoneX;
			y = 0.269069 * safezoneH + safezoneY;
			w = 0.2679 * safezoneW;
			h = 0.0219934 * safezoneH;
		};
		class title_1: title
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",0.8};
			idc = -1;

			text = "by [W] Fett_Li";
			x = 0.591815 * safezoneW + safezoneX;
			y = 0.269069 * safezoneH + safezoneY;
			w = 0.0835619 * safezoneW;
			h = 0.0219934 * safezoneH;
		};
		class title_2: title
		{
			colorBackground[] = {0,0,0,0};
			idc = -1;

			text = "Players";
			x = 0.433976 * safezoneW + safezoneX;
			y = 0.302059 * safezoneH + safezoneY;
			w = 0.134112 * safezoneW;
			h = 0.0219934 * safezoneH;
		};
		class title_3: title
		{
			colorBackground[] = {0,0,0,0};
			idc = -1;

			text = "Side";
			x = 0.32875 * safezoneW + safezoneX;
			y = 0.302059 * safezoneH + safezoneY;
			w = 0.0928466 * safezoneW;
			h = 0.0219934 * safezoneH;
		};
		class title_4: title
		{
			colorBackground[] = {0,0,0,0};
			idc = -1;

			text = "Teleport to";
			x = 0.578404 * safezoneW + safezoneX;
			y = 0.302059 * safezoneH + safezoneY;
			w = 0.0928466 * safezoneW;
			h = 0.0219934 * safezoneH;
		};
		class title_5: title
		{
			colorBackground[] = {0,0,0,0};
			idc = -1;

			text = "is groupleader";
			x = 0.458735 * safezoneW + safezoneX;
			y = 0.587974 * safezoneH + safezoneY;
			w = 0.103163 * safezoneW;
			h = 0.0219934 * safezoneH;
		};
		class title_6: title
		{
			colorBackground[] = {0,0,0,0};
			idc = -1;

			text = "is in vehicle";
			x = 0.458735 * safezoneW + safezoneX;
			y = 0.620964 * safezoneH + safezoneY;
			w = 0.103163 * safezoneW;
			h = 0.0219934 * safezoneH;
		};
		class ok
		{
			onButtonClick = "['teleport',_this] call FETT_fnc_W_RscTeleportInit;";
			animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
			animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1)";
			animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
			animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)";
			animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
			animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
			colorBackground[] = {0,0,0,0.6};
			colorBackground2[] = {0.75,0.75,0.75,1};
			colorBackgroundFocused[] = {1,1,1,1};
			color[] = {1,1,1,1};
			color2[] = {0,0,0,1};
			colorDisabled[] = {1,1,1,0.25};
			colorFocused[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			default = 1;
			font = "PuristaMedium";
			idc = 1;
			period = 1.2;
			periodFocus = 1.2;
			periodOver = 1.2;
			shadow = 0;
			shortcuts[] = {"0x00050000 + 0",28,57,156};
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			soundClick[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundClick",0.09,1};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",0.09,1};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",0.09,1};
			soundPush[] = {"\A3\ui_f\data\sound\RscButtonMenuOK\soundPush",0.09,1};
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			style = "0x02 + 0xC0";
			text = "TELEPORT";
			textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			tooltipColorText[] = {1,1,1,1};
			type = 16;
			class AttributesImage {
				font = "PuristaMedium";
				color = "#E5E5E5";
				align = "left";
			};
			class HitZone {
				left = 0;
				top = 0;
				right = 0;
				bottom = 0;
			};
			class TextPos {
				left = "0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
				top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
				right = 0.005;
				bottom = 0;
			};
			class Attributes {
				font = "PuristaLight";
				color = "#E5E5E5";
				align = "left";
				shadow = "false";
			};
			class ShortcutPos {
				left = "(6.25 * (((safezoneW / safezoneH) min 1.2) / 40)) - 0.0225 - 0.005";
				top = 0.005;
				w = 0.0225;
				h = 0.03;
			};

			x = 0.618637 * safezoneW + safezoneX;
			y = 0.537389 * safezoneH + safezoneY;
			w = 0.0567396 * safezoneW;
			h = 0.0219934 * safezoneH;
		};
		class cancel: ok
		{
			onButtonClick = "";
			idc = 2;
			shortcuts[] = {"0x00050000 + 1"};
			text = "Cancel";

			x = 0.324623 * safezoneW + safezoneX;
			y = 0.537389 * safezoneH + safezoneY;
			w = 0.0567396 * safezoneW;
			h = 0.0219934 * safezoneH;
		};
		class lb
		{
			arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
			arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
			autoScrollDelay = 5;
			autoScrollRewind = 0;
			autoScrollSpeed = -1;
			colorBackground[] = {0,0,0,0.3};
			colorDisabled[] = {1,1,1,0.25};
			colorScrollbar[] = {1,0,0,0};
			colorSelect[] = {0,0,0,1};
			colorSelect2[] = {0,0,0,1};
			colorSelectBackground[] = {0.95,0.95,0.95,1};
			colorSelectBackground2[] = {1,1,1,0.5};
			colorShadow[] = {0,0,0,0.5};
			colorText[] = {1,1,1,1};
			colorPicture[] = {1,1,1,1};
			colorPictureDisabled[] = {1,1,1,1};
			colorPictureSelected[] = {1,1,1,1};
			font = "PuristaMedium";
			idc = IDC_LB;
			maxHistoryDelay = 1;
			period = 1.2;
			rowHeight = 0;
			shadow = 0;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1};
			style = 16;
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			type = 5;
			class ListScrollBar {
				autoScrollEnabled = 1;
				color[] = {0.5,0.5,0.5,0.8};
			};

			x = 0.438102 * safezoneW + safezoneX;
			y = 0.335049 * safezoneH + safezoneY;
			w = 0.123795 * safezoneW;
			h = 0.175947 * safezoneH;

			onLBSelChanged = "['lb',_this] call FETT_fnc_W_RscTeleportInit;";
		};
		class lb_1: lb
		{
			idc = IDC_LB_1;

			x = 0.58253 * safezoneW + safezoneX;
			y = 0.335049 * safezoneH + safezoneY;
			w = 0.0825303 * safezoneW;
			h = 0.175947 * safezoneH;

			onLBSelChanged = "";
		};
		class cb
		{
			checked_strings[] = {"WEST"};
			color[] = {0,0,0,0};
			colorBackground[] = {0.1,0.1,0.1,1};
			colorDisable[] = {0.4,0.4,0.4,1};
			colorSelect[] = {0,0,0,1};
			colorSelectedBg[] = {0,0,0,0.3};
			colorText[] = {1,1,1,0.5};
			colorTextDisable[] = {0.4,0.4,0.4,1};
			colorTextSelect[] = {1,1,1,1};
			columns = 1;
			font = "PuristaMedium";
			idc = IDC_CB;
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			tooltipColorText[] = {1,1,1,1};
			rows = 1;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			strings[] = {"WEST"};
			style = 2;
			type = 7;

			x = 0.355572 * safezoneW + safezoneX;
			y = 0.346046 * safezoneH + safezoneY;
			w = 0.0412652 * safezoneW;
			h = 0.0285914 * safezoneH;

			onCheckBoxesSelChanged = "['cb',_this] call FETT_fnc_W_RscTeleportInit;";
		};
		class cb_1: cb
		{
			checked_strings[] = {"GUER"};
			idc = IDC_CB_1;
			strings[] = {"GUER"};

			x = 0.355572 * safezoneW + safezoneX;
			y = 0.390033 * safezoneH + safezoneY;
			w = 0.0412652 * safezoneW;
			h = 0.0285914 * safezoneH;

			onCheckBoxesSelChanged = "['cb',_this] call FETT_fnc_W_RscTeleportInit;";
		};
		class cb_2: cb
		{
			checked_strings[] = {"EAST"};
			idc = IDC_CB_2;
			strings[] = {"EAST"};

			x = 0.355572 * safezoneW + safezoneX;
			y = 0.43402 * safezoneH + safezoneY;
			w = 0.0412652 * safezoneW;
			h = 0.0285914 * safezoneH;

			onCheckBoxesSelChanged = "['cb',_this] call FETT_fnc_W_RscTeleportInit;";
		};
		class cb_3: cb
		{
			checked_strings[] = {"CIV"};
			idc = IDC_CB_3;
			strings[] = {"CIV"};

			x = 0.355572 * safezoneW + safezoneX;
			y = 0.478007 * safezoneH + safezoneY;
			w = 0.0412652 * safezoneW;
			h = 0.0285914 * safezoneH;

			onCheckBoxesSelChanged = "['cb',_this] call FETT_fnc_W_RscTeleportInit;";
		};
		class pic
		{
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			fixedWidth = 0;
			font = "TahomaB";
			idc = -1;
			lineSpacing = 0;
			shadow = 0;
			sizeEx = 0;
			style = 48;
			text = LEADER_PIC;
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			type = 0;

			x = 0.438102 * safezoneW + safezoneX;
			y = 0.587974 * safezoneH + safezoneY;
			w = 0.0103163 * safezoneW;
			h = 0.0219934 * safezoneH;
		};
		class pic_1: pic
		{
			idc = -1;
			text = VEHICLE_PIC;

			x = 0.438102 * safezoneW + safezoneX;
			y = 0.620964 * safezoneH + safezoneY;
			w = 0.0103163 * safezoneW;
			h = 0.0219934 * safezoneH;
		};
	};
};

#define IDC_TITLE		100
#define IDC_SLIDER		101
#define IDC_TITLE_1		102
#define IDC_SLIDER_1	103
#define IDC_XLISTBOX	104

class W_RscVDDialog {
	idd = -1;
	movingEnable = 0;
	onLoad = "['init',_this] call FETT_fnc_W_RscVDInit;";
	class controls {
		class group {
			idc = -1;
			x = 0.432969 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.134062 * safezoneW;
			h = 0.209 * safezoneH;
			class VScrollbar {
				color[] = {1,1,1,0.6};
				colorActive[] = {1,1,1,1};
				colorDisabled[] = {1,1,1,0.3};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				shadow = 0;
				scrollSpeed = 0.06;
				width = 0;
				autoScrollEnabled = 1;
				autoScrollSpeed = -1;
				autoScrollDelay = 5;
				autoScrollRewind = 0;
			};
			class HScrollbar {
				color[] = {1,1,1,0.6};
				colorActive[] = {1,1,1,1};
				colorDisabled[] = {1,1,1,0.3};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				shadow = 0;
				scrollSpeed = 0.06;
				height = 0;
				autoScrollEnabled = 0;
				autoScrollSpeed = -1;
				autoScrollDelay = 5;
				autoScrollRewind = 0;
			};
			type = 15;
			shadow = 0;
			style = 16;
			class controls {
				class Title
				{
					idc = IDC_TITLE;
					text = "Sichtweite";
					style = 2;
					x = 0.005156 * safezoneW;
					y = 0.011 * safezoneH;
					w = 0.12375 * safezoneW;
					h = 0.022 * safezoneH;
					type = 0;
					colorBackground[] = {0,0,0,0};
					colorText[] = {1,1,1,1};
					fixedWidth = 0;
					shadow = 1;
					colorShadow[] = {0,0,0,0.5};
					font = "PuristaMedium";
					SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
					linespacing = 1;
					tooltipColorText[] = {1,1,1,1};
					tooltipColorBox[] = {1,1,1,1};
					tooltipColorShade[] = {0,0,0,0.65};
				};
				class Slider
				{
					idc = IDC_SLIDER;
					x = 0.005156 * safezoneW;
					y = 0.044 * safezoneH;
					w = 0.12375 * safezoneW;
					h = 0.022 * safezoneH;
					type = 3;
					style = 1024;
					color[] = {1,1,1,1};
					colorActive[] = {1,1,1,1};
					shadow = 0;
					onSliderPosChanged = "['vd',_this] call FETT_fnc_W_RscVDInit;";
				};
				class Title_1
				{
					idc = IDC_TITLE_1;
					text = "Objektsichtweite";
					style = 2;
					x = 0.005156 * safezoneW;
					y = 0.077 * safezoneH;
					w = 0.12375 * safezoneW;
					h = 0.022 * safezoneH;
					type = 0;
					colorBackground[] = {0,0,0,0};
					colorText[] = {1,1,1,1};
					fixedWidth = 0;
					shadow = 1;
					colorShadow[] = {0,0,0,0.5};
					font = "PuristaMedium";
					SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
					linespacing = 1;
					tooltipColorText[] = {1,1,1,1};
					tooltipColorBox[] = {1,1,1,1};
					tooltipColorShade[] = {0,0,0,0.65};
				};
				class Slider_1
				{
					idc = IDC_SLIDER_1;
					x = 0.005156 * safezoneW;
					y = 0.11 * safezoneH;
					w = 0.12375 * safezoneW;
					h = 0.022 * safezoneH;
					type = 3;
					style = 1024;
					color[] = {1,1,1,1};
					colorActive[] = {1,1,1,1};
					shadow = 0;
					onSliderPosChanged = "['ovd',_this] call FETT_fnc_W_RscVDInit;";
				};
				class Title_2
				{
					idc = -1;
					text = "Graseinstellungen";
					style = 2;
					x = 0.005156 * safezoneW;
					y = 0.143 * safezoneH;
					w = 0.12375 * safezoneW;
					h = 0.022 * safezoneH;
					type = 0;
					colorBackground[] = {0,0,0,0};
					colorText[] = {1,1,1,1};
					fixedWidth = 0;
					shadow = 1;
					colorShadow[] = {0,0,0,0.5};
					font = "PuristaMedium";
					SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
					linespacing = 1;
					tooltipColorText[] = {1,1,1,1};
					tooltipColorBox[] = {1,1,1,1};
					tooltipColorShade[] = {0,0,0,0.65};
				};
				class Toolbox
				{
					idc = IDC_XLISTBOX;
					x = 0.005156 * safezoneW;
					y = 0.176 * safezoneH;
					w = 0.12375 * safezoneW;
					h = 0.022 * safezoneH;

					style = "0x400 + 0x00 +	0x10";
					shadow = 2;
					type = 42;
					arrowEmpty = "\A3\ui_f\data\gui\cfg\slider\arrowEmpty_ca.paa";
					arrowFull = "\A3\ui_f\data\gui\cfg\slider\arrowFull_ca.paa";
					border = "\A3\ui_f\data\gui\cfg\slider\border_ca.paa";
					color[] = {1,1,1,0.6};
					colorActive[] = {1,1,1,1};
					colorDisabled[] = {1,1,1,0.25};
					colorPictudeDisabled[] = {1,1,1,0.25};
					colorPicture[] = {1,1,1,1};
					colorPictureDisabled[] = {1,1,1,1};
					colorSelect[] = {0.95,0.95,0.95,1};
					colorText[] = {1,1,1,1.0};
					deletable = 0;
					fade = 0;
					font = "PuristaMedium";
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
					soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1};
					tooltipColorText[] = {1,1,1,1};
					tooltipColorBox[] = {1,1,1,1};
					tooltipColorShade[] = {0,0,0,0.65};

			        onLBSelChanged = "['terrain',_this] call FETT_fnc_W_RscVDInit;";
				};
			};
		};
	};
};
