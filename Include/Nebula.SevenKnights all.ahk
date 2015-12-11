;---------------------globals start--------------------------------------

global sCode
global bTime              := 0
global runningTime        := 0
global checkTime          := IsPushTime()
global gDelay             := 0
global NewHero            := 1
global nLog               := 2
global RaidWave           := 0
global NumGetNewHero      := 0
global NumSellHero        := 0
global IsGetNewHero       := 1
global AbleHonorBuy       := 1
global AbleRubyBuy        := 1
global IsHeroCount        := 1
global keepMoving         := 0
global SetRestart         := 0
global adventureMap       := 1
global IsMainMonitor      := 1
global OnRunning          := 0
global AfterRestart       := 0
global OnRunning          := 0
global OnRestart          := 0
global OnStart            := 0
global OnCore             := 0
global onMove             := 0
global checkHero          := 1
global checkEquip         := 1
global checkHeroProceed   := 0
global checkEquipProceed  := 0
global rsvCert            := 0
global NextStar           := 0
global page               := 0
global SCount             := 0
global SacrificeLeft1     := 1
global SacrificeLeft2     := 1
global GoldShort          := 0
global CoreMode           := 0
global OptionFile         := "Utility\Option.ini"
global SkillsFile         := "Utility\Skill.ini"
global CountFile          := "Log\Count.ini"
global LogFile            := "Log\Log_" A_YYYY A_MM A_DD ".log"
global BlueStacksFile     := "C:\Program Files (x86)\BlueStacks\HD-RunApp.exe"
global TIME_EVENTS        := 10000
global TIME_LOADING       := 30000
global TIME_WAITIMAGE     := 1200000
global TIME_BATTLE        := 1800000
global TIME_REFRESH       := 200
global TIME_WAITPOPUP     := 1000
global TIME_CLICK         := 1000
global TIME_DRAG          := 1500
global TIME_SKILL         := 3000
global TIME_IMAGE         := 700
global TIME_RESTART       := 700
global SmallHero1         := -1
global SmallHero2         := -1
global SmallHero3         := -1
global SmallHero4         := -1
global SmallHero5         := -1
global HeroCheck1         := 49
global HeroCheck2         := 113
global HeroCheck3         := 43
global HeroCheck4         := 45
global HeroCheck5         := 46
global HeroCheck6         := 41
global HeroCheck7         := 50
global HeroCheck8         := 51
global HeroCheck9         := 53
global HeroCheck10        := 42
global HeroCheck11        := 106
global HeroCheck12        := 107
global HeroCheck13        := 109
global HeroCheck14        := 110
global HeroCheck15        := 105
global HeroCheck16        := 114
global HeroCheck17        := 115
global HeroCheck18        := 117
global HeroCheck19        := 169
global HeroCheck20        := 170
global HeroCheck21        := 171
global HeroCheck22        := 173
global HeroCheck23        := 174
global HeroCheck24        := 177
global HeroCheck25        := 49
global HeroCheck26        := 179
global HeroCheck27        := 113
global HeroCheck28        := 279
global HeroCheck29        := 282
global HeroCheck30        := 284
global HeroCheck31        := 285
global HeroCheck32        := 11
global HeroCheck33        := 75
global HeroCheck34        := 139
global HeroCount1         := 0
global HeroCount2         := 0
global HeroCount3         := 0
global HeroCount4         := 0
global HeroCount5         := 0
global SKILL_LIST         := "사용안함"
global RecentlySkill      := ""
global AbleGetKey		  := 1
global TimeWaitSecond	  := 900
global IsPoor			  := 0
global IsHero30LevelUp	  := 0

global CheckHeroFullLevel := [{sX: 144,   sY: 79,  eX: 200,  eY: 146}
							,{sX: 144,  sY: 146,  eX: 200,  eY: 213}
							,{sX: 144,  sY: 213,  eX: 200,  eY: 280}
							,{sX: 144,  sY: 280,  eX: 200,  eY: 346}
							,{sX: 80,  sY: 178,  eX: 136,  eY: 233}
							
							,{sX : 144, sY : 180, eX : 199,  eY : 246}
							,{sX : 80, sY : 79,   eX : 136,  eY : 146}
							,{sX : 80, sY : 146,  eX : 136,  eY : 213}
							,{sX : 80, sY : 213,  eX : 136,  eY : 280}
							,{sX : 80, sY : 280,  eX : 136,  eY : 347}
							
							,{sX : 144, sY : 148-25, eX : 199,  eY : 215-25}
							,{sX : 144, sY : 260-25, eX : 198,  eY : 327-25}
							,{sX : 81, sY : 104-25,  eX : 135,  eY : 170-25}
							,{sX : 80, sY : 204-25,  eX : 135,  eY : 271-25}
							,{sX : 80, sY : 306-25,  eX : 135,  eY : 370-25}
							
							,{sX : 143, sY : 104-25, eX : 198,  eY : 170-25}
							,{sX : 144, sY : 205-25, eX : 198,  eY : 271-25}
							,{sX : 143, sY : 306-25, eX : 198,  eY : 370-25}
							,{sX : 81, sY : 149-25,  eX : 135,  eY : 215-25}
							,{sX : 80, sY : 260-25,  eX : 135,  eY : 327-25}]

global HeroSmallPositon :=  [{sX: 78,  sY: 78,  eX: 134,  eY: 133}
							,{sX: 78,  sY: 144,  eX: 134,  eY: 199}
							,{sX: 78,  sY: 210,  eX: 134,  eY: 265}
							,{sX: 78,  sY: 276,  eX: 134,  eY: 331}
							,{sX: 13,  sY: 178,  eX: 69,   eY: 233}
							
							,{sX : 78, sY : 177, eX : 134,  eY : 243}
							,{sX : 16, sY : 75,  eX : 71,   eY : 141}
							,{sX : 16, sY : 142, eX : 71,   eY : 208}
							,{sX : 16, sY : 209, eX : 71,   eY : 275}
							,{sX : 16, sY : 276, eX : 71,   eY : 342}
							
							,{sX : 78, sY : 119, eX : 135,  eY : 188}
							,{sX : 77, sY : 231, eX : 134,  eY : 300}
							,{sX : 16, sY : 77,  eX : 70,   eY : 142}
							,{sX : 16, sY : 177, eX : 71,   eY : 244}
							,{sX : 14, sY : 277, eX : 71,   eY : 345}
							
							,{sX : 78, sY : 100-25, eX : 133,  eY : 167-25}
							,{sX : 78, sY : 201-25, eX : 133,  eY : 268-25}
							,{sX : 78, sY : 303-25, eX : 133,  eY : 369-25}
							,{sX : 15, sY : 145-25, eX : 70,   eY : 212-25}
							,{sX : 15, sY : 257-25, eX : 70,   eY : 324-25}]

global HeroMainPosition :=  [{sX : 210,	sY : 79, 	eX : 307, 	eY : 224}
							,{sX : 315,	sY : 79, 	eX : 412, 	eY : 224}
							,{sX : 420, 	sY : 79, 	eX : 517, 	eY : 224}
							,{sX : 525, 	sY : 79, 	eX : 623, 	eY : 224}
							,{sX : 210, 	sY : 225, 	eX : 307, 	eY : 368}
							,{sX : 315, 	sY : 225, 	eX : 412, 	eY : 368}
							,{sX : 420, 	sY : 225, 	eX : 517, 	eY : 368}
							,{sX : 525, 	sY : 225, 	eX : 623, 	eY : 368}]

;---------------------globals end--------------------------------------
;---------------------gdip start--------------------------------------
; Gdip standard library v1.45 by tic (Tariq Porter) 07/09/11
;
;#####################################################################################
;#####################################################################################
; STATUS ENUMERATION
; Return values for functions specified to have status enumerated return type
;#####################################################################################
;
; Ok =						= 0
; GenericError				= 1
; InvalidParameter			= 2
; OutOfMemory				= 3
; ObjectBusy				= 4
; InsufficientBuffer		= 5
; NotImplemented			= 6
; Win32Error				= 7
; WrongState				= 8
; Aborted					= 9
; FileNotFound				= 10
; ValueOverflow				= 11
; AccessDenied				= 12
; UnknownImageFormat		= 13
; FontFamilyNotFound		= 14
; FontStyleNotFound			= 15
; NotTrueTypeFont			= 16
; UnsupportedGdiplusVersion	= 17
; GdiplusNotInitialized		= 18
; PropertyNotFound			= 19
; PropertyNotSupported		= 20
; ProfileNotFound			= 21
;
;#####################################################################################
;#####################################################################################
; FUNCTIONS
;#####################################################################################
;
; UpdateLayeredWindow(hwnd, hdc, x="", y="", w="", h="", Alpha=255)
; BitBlt(ddc, dx, dy, dw, dh, sdc, sx, sy, Raster="")
; StretchBlt(dDC, dx, dy, dw, dh, sDC, sx, sy, sw, sh, Raster="")
; SetImage(hwnd, hBitmap)
; Gdip_BitmapFromScreen(Screen=0, Raster="")
; CreateRectF(ByRef RectF, x, y, w, h)
; CreateSizeF(ByRef SizeF, w, h)
; CreateDIBSection
;
;#####################################################################################

; Function:     			UpdateLayeredWindow
; Description:  			Updates a layered window with the handle to the DC of a gdi bitmap
; 
; hwnd        				Handle of the layered window to update
; hdc           			Handle to the DC of the GDI bitmap to update the window with
; Layeredx      			x position to place the window
; Layeredy      			y position to place the window
; Layeredw      			Width of the window
; Layeredh      			Height of the window
; Alpha         			Default = 255 : The transparency (0-255) to set the window transparency
;
; return      				If the function succeeds, the return value is nonzero
;
; notes						If x or y omitted, then layered window will use its current coordinates
;							If w or h omitted then current width and height will be used

UpdateLayeredWindow(hwnd, hdc, x="", y="", w="", h="", Alpha=255)
{
	if ((x != "") && (y != ""))
		VarSetCapacity(pt, 8), NumPut(x, pt, 0), NumPut(y, pt, 4)

	if (w = "") ||(h = "")
		WinGetPos,,, w, h, ahk_id %hwnd%
   
	return DllCall("UpdateLayeredWindow", "uint", hwnd, "uint", 0, "uint", ((x = "") && (y = "")) ? 0 : &pt
	, "int64*", w|h<<32, "uint", hdc, "int64*", 0, "uint", 0, "uint*", Alpha<<16|1<<24, "uint", 2)
}

;#####################################################################################

; Function				BitBlt
; Description			The BitBlt function performs a bit-block transfer of the color data corresponding to a rectangle 
;						of pixels from the specified source device context into a destination device context.
;
; dDC					handle to destination DC
; dx					x-coord of destination upper-left corner
; dy					y-coord of destination upper-left corner
; dw					width of the area to copy
; dh					height of the area to copy
; sDC					handle to source DC
; sx					x-coordinate of source upper-left corner
; sy					y-coordinate of source upper-left corner
; Raster				raster operation code
;
; return				If the function succeeds, the return value is nonzero
;
; notes					If no raster operation is specified, then SRCCOPY is used, which copies the source directly to the destination rectangle
;
; BLACKNESS				= 0x00000042
; NOTSRCERASE			= 0x001100A6
; NOTSRCCOPY			= 0x00330008
; SRCERASE				= 0x00440328
; DSTINVERT				= 0x00550009
; PATINVERT				= 0x005A0049
; SRCINVERT				= 0x00660046
; SRCAND				= 0x008800C6
; MERGEPAINT			= 0x00BB0226
; MERGECOPY				= 0x00C000CA
; SRCCOPY				= 0x00CC0020
; SRCPAINT				= 0x00EE0086
; PATCOPY				= 0x00F00021
; PATPAINT				= 0x00FB0A09
; WHITENESS				= 0x00FF0062
; CAPTUREBLT			= 0x40000000
; NOMIRRORBITMAP		= 0x80000000

BitBlt(ddc, dx, dy, dw, dh, sdc, sx, sy, Raster="")
{
	return DllCall("gdi32\BitBlt", "uint", dDC, "int", dx, "int", dy, "int", dw, "int", dh
	, "uint", sDC, "int", sx, "int", sy, "uint", Raster ? Raster : 0x00CC0020)
}

;#####################################################################################

; Function				StretchBlt
; Description			The StretchBlt function copies a bitmap from a source rectangle into a destination rectangle, 
;						stretching or compressing the bitmap to fit the dimensions of the destination rectangle, if necessary.
;						The system stretches or compresses the bitmap according to the stretching mode currently set in the destination device context.
;
; ddc					handle to destination DC
; dx					x-coord of destination upper-left corner
; dy					y-coord of destination upper-left corner
; dw					width of destination rectangle
; dh					height of destination rectangle
; sdc					handle to source DC
; sx					x-coordinate of source upper-left corner
; sy					y-coordinate of source upper-left corner
; sw					width of source rectangle
; sh					height of source rectangle
; Raster				raster operation code
;
; return				If the function succeeds, the return value is nonzero
;
; notes					If no raster operation is specified, then SRCCOPY is used. It uses the same raster operations as BitBlt		

StretchBlt(ddc, dx, dy, dw, dh, sdc, sx, sy, sw, sh, Raster="")
{
	return DllCall("gdi32\StretchBlt", "uint", ddc, "int", dx, "int", dy, "int", dw, "int", dh
	, "uint", sdc, "int", sx, "int", sy, "int", sw, "int", sh, "uint", Raster ? Raster : 0x00CC0020)
}

;#####################################################################################

; Function				SetStretchBltMode
; Description			The SetStretchBltMode function sets the bitmap stretching mode in the specified device context
;
; hdc					handle to the DC
; iStretchMode			The stretching mode, describing how the target will be stretched
;
; return				If the function succeeds, the return value is the previous stretching mode. If it fails it will return 0
;
; STRETCH_ANDSCANS 		= 0x01
; STRETCH_ORSCANS 		= 0x02
; STRETCH_DELETESCANS 	= 0x03
; STRETCH_HALFTONE 		= 0x04

SetStretchBltMode(hdc, iStretchMode=4)
{
	return DllCall("gdi32\SetStretchBltMode", "uint", hdc, "int", iStretchMode)
}

;#####################################################################################

; Function				SetImage
; Description			Associates a new image with a static control
;
; hwnd					handle of the control to update
; hBitmap				a gdi bitmap to associate the static control with
;
; return				If the function succeeds, the return value is nonzero

SetImage(hwnd, hBitmap)
{
	SendMessage, 0x172, 0x0, hBitmap,, ahk_id %hwnd%
	E := ErrorLevel
	DeleteObject(E)
	return E
}

;#####################################################################################

; Function				SetSysColorToControl
; Description			Sets a solid colour to a control
;
; hwnd					handle of the control to update
; SysColor				A system colour to set to the control
;
; return				If the function succeeds, the return value is zero
;
; notes					A control must have the 0xE style set to it so it is recognised as a bitmap
;						By default SysColor=15 is used which is COLOR_3DFACE. This is the standard background for a control
;
; COLOR_3DDKSHADOW				= 21
; COLOR_3DFACE					= 15
; COLOR_3DHIGHLIGHT				= 20
; COLOR_3DHILIGHT				= 20
; COLOR_3DLIGHT					= 22
; COLOR_3DSHADOW				= 16
; COLOR_ACTIVEBORDER			= 10
; COLOR_ACTIVECAPTION			= 2
; COLOR_APPWORKSPACE			= 12
; COLOR_BACKGROUND				= 1
; COLOR_BTNFACE					= 15
; COLOR_BTNHIGHLIGHT			= 20
; COLOR_BTNHILIGHT				= 20
; COLOR_BTNSHADOW				= 16
; COLOR_BTNTEXT					= 18
; COLOR_CAPTIONTEXT				= 9
; COLOR_DESKTOP					= 1
; COLOR_GRADIENTACTIVECAPTION	= 27
; COLOR_GRADIENTINACTIVECAPTION	= 28
; COLOR_GRAYTEXT				= 17
; COLOR_HIGHLIGHT				= 13
; COLOR_HIGHLIGHTTEXT			= 14
; COLOR_HOTLIGHT				= 26
; COLOR_INACTIVEBORDER			= 11
; COLOR_INACTIVECAPTION			= 3
; COLOR_INACTIVECAPTIONTEXT		= 19
; COLOR_INFOBK					= 24
; COLOR_INFOTEXT				= 23
; COLOR_MENU					= 4
; COLOR_MENUHILIGHT				= 29
; COLOR_MENUBAR					= 30
; COLOR_MENUTEXT				= 7
; COLOR_SCROLLBAR				= 0
; COLOR_WINDOW					= 5
; COLOR_WINDOWFRAME				= 6
; COLOR_WINDOWTEXT				= 8

SetSysColorToControl(hwnd, SysColor=15)
{
   WinGetPos,,, w, h, ahk_id %hwnd%
   bc := DllCall("GetSysColor", "Int", SysColor)
   pBrushClear := Gdip_BrushCreateSolid(0xff000000 | (bc >> 16 | bc & 0xff00 | (bc & 0xff) << 16))
   pBitmap := Gdip_CreateBitmap(w, h), G := Gdip_GraphicsFromImage(pBitmap)
   Gdip_FillRectangle(G, pBrushClear, 0, 0, w, h)
   hBitmap := Gdip_CreateHBITMAPFromBitmap(pBitmap)
   SetImage(hwnd, hBitmap)
   Gdip_DeleteBrush(pBrushClear)
   Gdip_DeleteGraphics(G), Gdip_DisposeImage(pBitmap), DeleteObject(hBitmap)
   return 0
}

;#####################################################################################

; Function				Gdip_BitmapFromScreen
; Description			Gets a gdi+ bitmap from the screen
;
; Screen				0 = All screens
;						Any numerical value = Just that screen
;						x|y|w|h = Take specific coordinates with a width and height
; Raster				raster operation code
;
; return      			If the function succeeds, the return value is a pointer to a gdi+ bitmap
;						-1:		one or more of x,y,w,h not passed properly
;
; notes					If no raster operation is specified, then SRCCOPY is used to the returned bitmap

Gdip_BitmapFromScreen(Screen=0, Raster="")
{
	if (Screen = 0)
	{
		Sysget, x, 76
		Sysget, y, 77	
		Sysget, w, 78
		Sysget, h, 79
	}
	else if (SubStr(Screen, 1, 5) = "hwnd:")
	{
		Screen := SubStr(Screen, 6)
		if !WinExist( "ahk_id " Screen)
			return -2
		WinGetPos,,, w, h, ahk_id %Screen%
		x := y := 0
		hhdc := GetDCEx(Screen, 3)
	}
	else if (Screen&1 != "")
	{
		Sysget, M, Monitor, %Screen%
		x := MLeft, y := MTop, w := MRight-MLeft, h := MBottom-MTop
	}
	else
	{
		StringSplit, S, Screen, |
		x := S1, y := S2, w := S3, h := S4
	}

	if (x = "") || (y = "") || (w = "") || (h = "")
		return -1

	chdc := CreateCompatibleDC(), hbm := CreateDIBSection(w, h, chdc), obm := SelectObject(chdc, hbm), hhdc := hhdc ? hhdc : GetDC()
	BitBlt(chdc, 0, 0, w, h, hhdc, x, y, Raster)
	ReleaseDC(hhdc)
	
	pBitmap := Gdip_CreateBitmapFromHBITMAP(hbm)
	SelectObject(chdc, obm), DeleteObject(hbm), DeleteDC(hhdc), DeleteDC(chdc)
	return pBitmap
}

;#####################################################################################

; Function				Gdip_BitmapFromHWND
; Description			Uses PrintWindow to get a handle to the specified window and return a bitmap from it
;
; hwnd					handle to the window to get a bitmap from
;
; return				If the function succeeds, the return value is a pointer to a gdi+ bitmap
;
; notes					Window must not be not minimised in order to get a handle to it's client area

Gdip_BitmapFromHWND(hwnd)
{
	WinGetPos,,, Width, Height, ahk_id %hwnd%
	hbm := CreateDIBSection(Width, Height), hdc := CreateCompatibleDC(), obm := SelectObject(hdc, hbm)
	PrintWindow(hwnd, hdc)
	pBitmap := Gdip_CreateBitmapFromHBITMAP(hbm)
	SelectObject(hdc, obm), DeleteObject(hbm), DeleteDC(hdc)
	return pBitmap
}

;#####################################################################################

; Function    			CreateRectF
; Description			Creates a RectF object, containing a the coordinates and dimensions of a rectangle
;
; RectF       			Name to call the RectF object
; x            			x-coordinate of the upper left corner of the rectangle
; y            			y-coordinate of the upper left corner of the rectangle
; w            			Width of the rectangle
; h            			Height of the rectangle
;
; return      			No return value

CreateRectF(ByRef RectF, x, y, w, h)
{
   VarSetCapacity(RectF, 16)
   NumPut(x, RectF, 0, "float"), NumPut(y, RectF, 4, "float"), NumPut(w, RectF, 8, "float"), NumPut(h, RectF, 12, "float")
}

;#####################################################################################

; Function    			CreateRect
; Description			Creates a Rect object, containing a the coordinates and dimensions of a rectangle
;
; RectF       			Name to call the RectF object
; x            			x-coordinate of the upper left corner of the rectangle
; y            			y-coordinate of the upper left corner of the rectangle
; w            			Width of the rectangle
; h            			Height of the rectangle
;
; return      			No return value

CreateRect(ByRef Rect, x, y, w, h)
{
	VarSetCapacity(Rect, 16)
	NumPut(x, Rect, 0, "uint"), NumPut(y, Rect, 4, "uint"), NumPut(w, Rect, 8, "uint"), NumPut(h, Rect, 12, "uint")
}
;#####################################################################################

; Function		    	CreateSizeF
; Description			Creates a SizeF object, containing an 2 values
;
; SizeF         		Name to call the SizeF object
; w            			w-value for the SizeF object
; h            			h-value for the SizeF object
;
; return      			No Return value

CreateSizeF(ByRef SizeF, w, h)
{
   VarSetCapacity(SizeF, 8)
   NumPut(w, SizeF, 0, "float"), NumPut(h, SizeF, 4, "float")     
}
;#####################################################################################

; Function		    	CreatePointF
; Description			Creates a SizeF object, containing an 2 values
;
; SizeF         		Name to call the SizeF object
; w            			w-value for the SizeF object
; h            			h-value for the SizeF object
;
; return      			No Return value

CreatePointF(ByRef PointF, x, y)
{
   VarSetCapacity(PointF, 8)
   NumPut(x, PointF, 0, "float"), NumPut(y, PointF, 4, "float")     
}
;#####################################################################################

; Function				CreateDIBSection
; Description			The CreateDIBSection function creates a DIB (Device Independent Bitmap) that applications can write to directly
;
; w						width of the bitmap to create
; h						height of the bitmap to create
; hdc					a handle to the device context to use the palette from
; bpp					bits per pixel (32 = ARGB)
; ppvBits				A pointer to a variable that receives a pointer to the location of the DIB bit values
;
; return				returns a DIB. A gdi bitmap
;
; notes					ppvBits will receive the location of the pixels in the DIB

CreateDIBSection(w, h, hdc="", bpp=32, ByRef ppvBits=0)
{
	hdc2 := hdc ? hdc : GetDC()
	VarSetCapacity(bi, 40, 0)
	NumPut(w, bi, 4), NumPut(h, bi, 8), NumPut(40, bi, 0), NumPut(1, bi, 12, "ushort"), NumPut(0, bi, 16), NumPut(bpp, bi, 14, "ushort")
	hbm := DllCall("CreateDIBSection", "uint" , hdc2, "uint" , &bi, "uint" , 0, "uint*", ppvBits, "uint" , 0, "uint" , 0)

	if !hdc
		ReleaseDC(hdc2)
	return hbm
}

;#####################################################################################

; Function				PrintWindow
; Description			The PrintWindow function copies a visual window into the specified device context (DC), typically a printer DC
;
; hwnd					A handle to the window that will be copied
; hdc					A handle to the device context
; Flags					Drawing options
;
; return				If the function succeeds, it returns a nonzero value
;
; PW_CLIENTONLY			= 1

PrintWindow(hwnd, hdc, Flags=0)
{
	return DllCall("PrintWindow", "uint", hwnd, "uint", hdc, "uint", Flags)
}

;#####################################################################################

; Function				DestroyIcon
; Description			Destroys an icon and frees any memory the icon occupied
;
; hIcon					Handle to the icon to be destroyed. The icon must not be in use
;
; return				If the function succeeds, the return value is nonzero

DestroyIcon(hIcon)
{
   return DllCall("DestroyIcon", "uint", hIcon)
}

;#####################################################################################

PaintDesktop(hdc)
{
	return DllCall("PaintDesktop", "uint", hdc)
}

;#####################################################################################

CreateCompatibleBitmap(hdc, w, h)
{
	return DllCall("gdi32\CreateCompatibleBitmap", "uint", hdc, "int", w, "int", h)
}

;#####################################################################################

; Function				CreateCompatibleDC
; Description			This function creates a memory device context (DC) compatible with the specified device
;
; hdc					Handle to an existing device context					
;
; return				returns the handle to a device context or 0 on failure
;
; notes					If this handle is 0 (by default), the function creates a memory device context compatible with the application's current screen

CreateCompatibleDC(hdc=0)
{
   return DllCall("CreateCompatibleDC", "uint", hdc)
}

;#####################################################################################

; Function				SelectObject
; Description			The SelectObject function selects an object into the specified device context (DC). The new object replaces the previous object of the same type
;
; hdc					Handle to a DC
; hgdiobj				A handle to the object to be selected into the DC
;
; return				If the selected object is not a region and the function succeeds, the return value is a handle to the object being replaced
;
; notes					The specified object must have been created by using one of the following functions
;						Bitmap - CreateBitmap, CreateBitmapIndirect, CreateCompatibleBitmap, CreateDIBitmap, CreateDIBSection (A single bitmap cannot be selected into more than one DC at the same time)
;						Brush - CreateBrushIndirect, CreateDIBPatternBrush, CreateDIBPatternBrushPt, CreateHatchBrush, CreatePatternBrush, CreateSolidBrush
;						Font - CreateFont, CreateFontIndirect
;						Pen - CreatePen, CreatePenIndirect
;						Region - CombineRgn, CreateEllipticRgn, CreateEllipticRgnIndirect, CreatePolygonRgn, CreateRectRgn, CreateRectRgnIndirect
;
; notes					If the selected object is a region and the function succeeds, the return value is one of the following value
;
; SIMPLEREGION			= 2 Region consists of a single rectangle
; COMPLEXREGION			= 3 Region consists of more than one rectangle
; NULLREGION			= 1 Region is empty

SelectObject(hdc, hgdiobj)
{
   return DllCall("SelectObject", "uint", hdc, "uint", hgdiobj)
}

;#####################################################################################

; Function				DeleteObject
; Description			This function deletes a logical pen, brush, font, bitmap, region, or palette, freeing all system resources associated with the object
;						After the object is deleted, the specified handle is no longer valid
;
; hObject				Handle to a logical pen, brush, font, bitmap, region, or palette to delete
;
; return				Nonzero indicates success. Zero indicates that the specified handle is not valid or that the handle is currently selected into a device context

DeleteObject(hObject)
{
   return DllCall("DeleteObject", "uint", hObject)
}

;#####################################################################################

; Function				GetDC
; Description			This function retrieves a handle to a display device context (DC) for the client area of the specified window.
;						The display device context can be used in subsequent graphics display interface (GDI) functions to draw in the client area of the window. 
;
; hwnd					Handle to the window whose device context is to be retrieved. If this value is NULL, GetDC retrieves the device context for the entire screen					
;
; return				The handle the device context for the specified window's client area indicates success. NULL indicates failure

GetDC(hwnd=0)
{
	return DllCall("GetDC", "uint", hwnd)
}

;#####################################################################################

; DCX_CACHE = 0x2
; DCX_CLIPCHILDREN = 0x8
; DCX_CLIPSIBLINGS = 0x10
; DCX_EXCLUDERGN = 0x40
; DCX_EXCLUDEUPDATE = 0x100
; DCX_INTERSECTRGN = 0x80
; DCX_INTERSECTUPDATE = 0x200
; DCX_LOCKWINDOWUPDATE = 0x400
; DCX_NORECOMPUTE = 0x100000
; DCX_NORESETATTRS = 0x4
; DCX_PARENTCLIP = 0x20
; DCX_VALIDATE = 0x200000
; DCX_WINDOW = 0x1

GetDCEx(hwnd, flags=0, hrgnClip=0)
{
    return DllCall("GetDCEx", "uint", hwnd, "uint", hrgnClip, "int", flags)
}

;#####################################################################################

; Function				ReleaseDC
; Description			This function releases a device context (DC), freeing it for use by other applications. The effect of ReleaseDC depends on the type of device context
;
; hdc					Handle to the device context to be released
; hwnd					Handle to the window whose device context is to be released
;
; return				1 = released
;						0 = not released
;
; notes					The application must call the ReleaseDC function for each call to the GetWindowDC function and for each call to the GetDC function that retrieves a common device context
;						An application cannot use the ReleaseDC function to release a device context that was created by calling the CreateDC function; instead, it must use the DeleteDC function. 

ReleaseDC(hdc, hwnd=0)
{
   return DllCall("ReleaseDC", "uint", hwnd, "uint", hdc)
}

;#####################################################################################

; Function				DeleteDC
; Description			The DeleteDC function deletes the specified device context (DC)
;
; hdc					A handle to the device context
;
; return				If the function succeeds, the return value is nonzero
;
; notes					An application must not delete a DC whose handle was obtained by calling the GetDC function. Instead, it must call the ReleaseDC function to free the DC

DeleteDC(hdc)
{
   return DllCall("DeleteDC", "uint", hdc)
}
;#####################################################################################

; Function				Gdip_LibraryVersion
; Description			Get the current library version
;
; return				the library version
;
; notes					This is useful for non compiled programs to ensure that a person doesn't run an old version when testing your scripts

Gdip_LibraryVersion()
{
	return 1.45
}

;#####################################################################################

; Function:    			Gdip_BitmapFromBRA
; Description: 			Gets a pointer to a gdi+ bitmap from a BRA file
;
; BRAFromMemIn			The variable for a BRA file read to memory
; File					The name of the file, or its number that you would like (This depends on alternate parameter)
; Alternate				Changes whether the File parameter is the file name or its number
;
; return      			If the function succeeds, the return value is a pointer to a gdi+ bitmap
;						-1 = The BRA variable is empty
;						-2 = The BRA has an incorrect header
;						-3 = The BRA has information missing
;						-4 = Could not find file inside the BRA

Gdip_BitmapFromBRA(ByRef BRAFromMemIn, File, Alternate=0)
{
	if !BRAFromMemIn
		return -1
	Loop, Parse, BRAFromMemIn, `n
	{
		if (A_Index = 1)
		{
			StringSplit, Header, A_LoopField, |
			if (Header0 != 4 || Header2 != "BRA!")
				return -2
		}
		else if (A_Index = 2)
		{
			StringSplit, Info, A_LoopField, |
			if (Info0 != 3)
				return -3
		}
		else
			break
	}
	if !Alternate
		StringReplace, File, File, \, \\, All
	RegExMatch(BRAFromMemIn, "mi`n)^" (Alternate ? File "\|.+?\|(\d+)\|(\d+)" : "\d+\|" File "\|(\d+)\|(\d+)") "$", FileInfo)
	if !FileInfo
		return -4

	hData := DllCall("GlobalAlloc", "uint", 2, "uint", FileInfo2)
	pData := DllCall("GlobalLock", "uint", hData)
	DllCall("RtlMoveMemory", "uint", pData, "uint", &BRAFromMemIn+Info2+FileInfo1, "uint", FileInfo2)
	DllCall("GlobalUnlock", "uint", hData)
	DllCall("ole32\CreateStreamOnHGlobal", "uint", hData, "int", 1, "uint*", pStream)
	DllCall("gdiplus\GdipCreateBitmapFromStream", "uint", pStream, "uint*", pBitmap)
	DllCall(NumGet(NumGet(1*pStream)+8), "uint", pStream)
	return pBitmap
}

;#####################################################################################

; Function				Gdip_DrawRectangle
; Description			This function uses a pen to draw the outline of a rectangle into the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pPen					Pointer to a pen
; x						x-coordinate of the top left of the rectangle
; y						y-coordinate of the top left of the rectangle
; w						width of the rectanlge
; h						height of the rectangle
;
; return				status enumeration. 0 = success
;
; notes					as all coordinates are taken from the top left of each pixel, then the entire width/height should be specified as subtracting the pen width

Gdip_DrawRectangle(pGraphics, pPen, x, y, w, h)
{
   return DllCall("gdiplus\GdipDrawRectangle", "uint", pGraphics, "uint", pPen, "float", x, "float", y, "float", w, "float", h)
}

;#####################################################################################

; Function				Gdip_DrawRoundedRectangle
; Description			This function uses a pen to draw the outline of a rounded rectangle into the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pPen					Pointer to a pen
; x						x-coordinate of the top left of the rounded rectangle
; y						y-coordinate of the top left of the rounded rectangle
; w						width of the rectanlge
; h						height of the rectangle
; r						radius of the rounded corners
;
; return				status enumeration. 0 = success
;
; notes					as all coordinates are taken from the top left of each pixel, then the entire width/height should be specified as subtracting the pen width

Gdip_DrawRoundedRectangle(pGraphics, pPen, x, y, w, h, r)
{
	Gdip_SetClipRect(pGraphics, x-r, y-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x+w-r, y-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x-r, y+h-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x+w-r, y+h-r, 2*r, 2*r, 4)
	E := Gdip_DrawRectangle(pGraphics, pPen, x, y, w, h)
	Gdip_ResetClip(pGraphics)
	Gdip_SetClipRect(pGraphics, x-(2*r), y+r, w+(4*r), h-(2*r), 4)
	Gdip_SetClipRect(pGraphics, x+r, y-(2*r), w-(2*r), h+(4*r), 4)
	Gdip_DrawEllipse(pGraphics, pPen, x, y, 2*r, 2*r)
	Gdip_DrawEllipse(pGraphics, pPen, x+w-(2*r), y, 2*r, 2*r)
	Gdip_DrawEllipse(pGraphics, pPen, x, y+h-(2*r), 2*r, 2*r)
	Gdip_DrawEllipse(pGraphics, pPen, x+w-(2*r), y+h-(2*r), 2*r, 2*r)
	Gdip_ResetClip(pGraphics)
	return E
}

;#####################################################################################

; Function				Gdip_DrawEllipse
; Description			This function uses a pen to draw the outline of an ellipse into the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pPen					Pointer to a pen
; x						x-coordinate of the top left of the rectangle the ellipse will be drawn into
; y						y-coordinate of the top left of the rectangle the ellipse will be drawn into
; w						width of the ellipse
; h						height of the ellipse
;
; return				status enumeration. 0 = success
;
; notes					as all coordinates are taken from the top left of each pixel, then the entire width/height should be specified as subtracting the pen width

Gdip_DrawEllipse(pGraphics, pPen, x, y, w, h)
{
   return DllCall("gdiplus\GdipDrawEllipse", "uint", pGraphics, "uint", pPen, "float", x, "float", y, "float", w, "float", h)
}

;#####################################################################################

; Function				Gdip_DrawBezier
; Description			This function uses a pen to draw the outline of a bezier (a weighted curve) into the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pPen					Pointer to a pen
; x1					x-coordinate of the start of the bezier
; y1					y-coordinate of the start of the bezier
; x2					x-coordinate of the first arc of the bezier
; y2					y-coordinate of the first arc of the bezier
; x3					x-coordinate of the second arc of the bezier
; y3					y-coordinate of the second arc of the bezier
; x4					x-coordinate of the end of the bezier
; y4					y-coordinate of the end of the bezier
;
; return				status enumeration. 0 = success
;
; notes					as all coordinates are taken from the top left of each pixel, then the entire width/height should be specified as subtracting the pen width

Gdip_DrawBezier(pGraphics, pPen, x1, y1, x2, y2, x3, y3, x4, y4)
{
   return DllCall("gdiplus\GdipDrawBezier", "uint", pgraphics, "uint", pPen
   , "float", x1, "float", y1, "float", x2, "float", y2
   , "float", x3, "float", y3, "float", x4, "float", y4)
}

;#####################################################################################

; Function				Gdip_DrawArc
; Description			This function uses a pen to draw the outline of an arc into the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pPen					Pointer to a pen
; x						x-coordinate of the start of the arc
; y						y-coordinate of the start of the arc
; w						width of the arc
; h						height of the arc
; StartAngle			specifies the angle between the x-axis and the starting point of the arc
; SweepAngle			specifies the angle between the starting and ending points of the arc
;
; return				status enumeration. 0 = success
;
; notes					as all coordinates are taken from the top left of each pixel, then the entire width/height should be specified as subtracting the pen width

Gdip_DrawArc(pGraphics, pPen, x, y, w, h, StartAngle, SweepAngle)
{
   return DllCall("gdiplus\GdipDrawArc", "uint", pGraphics, "uint", pPen, "float", x
   , "float", y, "float", w, "float", h, "float", StartAngle, "float", SweepAngle)
}

;#####################################################################################

; Function				Gdip_DrawPie
; Description			This function uses a pen to draw the outline of a pie into the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pPen					Pointer to a pen
; x						x-coordinate of the start of the pie
; y						y-coordinate of the start of the pie
; w						width of the pie
; h						height of the pie
; StartAngle			specifies the angle between the x-axis and the starting point of the pie
; SweepAngle			specifies the angle between the starting and ending points of the pie
;
; return				status enumeration. 0 = success
;
; notes					as all coordinates are taken from the top left of each pixel, then the entire width/height should be specified as subtracting the pen width

Gdip_DrawPie(pGraphics, pPen, x, y, w, h, StartAngle, SweepAngle)
{
   return DllCall("gdiplus\GdipDrawPie", "uint", pGraphics, "uint", pPen, "float", x, "float", y, "float", w, "float", h, "float", StartAngle, "float", SweepAngle)
}

;#####################################################################################

; Function				Gdip_DrawLine
; Description			This function uses a pen to draw a line into the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pPen					Pointer to a pen
; x1					x-coordinate of the start of the line
; y1					y-coordinate of the start of the line
; x2					x-coordinate of the end of the line
; y2					y-coordinate of the end of the line
;
; return				status enumeration. 0 = success		

Gdip_DrawLine(pGraphics, pPen, x1, y1, x2, y2)
{
   return DllCall("gdiplus\GdipDrawLine", "uint", pGraphics, "uint", pPen
   , "float", x1, "float", y1, "float", x2, "float", y2)
}

;#####################################################################################

; Function				Gdip_DrawLines
; Description			This function uses a pen to draw a series of joined lines into the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pPen					Pointer to a pen
; Points				the coordinates of all the points passed as x1,y1|x2,y2|x3,y3.....
;
; return				status enumeration. 0 = success				

Gdip_DrawLines(pGraphics, pPen, Points)
{
   StringSplit, Points, Points, |
   VarSetCapacity(PointF, 8*Points0)   
   Loop, %Points0%
   {
      StringSplit, Coord, Points%A_Index%, `,
      NumPut(Coord1, PointF, 8*(A_Index-1), "float"), NumPut(Coord2, PointF, (8*(A_Index-1))+4, "float")
   }
   return DllCall("gdiplus\GdipDrawLines", "uint", pGraphics, "uint", pPen, "uint", &PointF, "int", Points0)
}

;#####################################################################################

; Function				Gdip_FillRectangle
; Description			This function uses a brush to fill a rectangle in the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pBrush				Pointer to a brush
; x						x-coordinate of the top left of the rectangle
; y						y-coordinate of the top left of the rectangle
; w						width of the rectanlge
; h						height of the rectangle
;
; return				status enumeration. 0 = success

Gdip_FillRectangle(pGraphics, pBrush, x, y, w, h)
{
   return DllCall("gdiplus\GdipFillRectangle", "uint", pGraphics, "int", pBrush
   , "float", x, "float", y, "float", w, "float", h)
}

;#####################################################################################

; Function				Gdip_FillRoundedRectangle
; Description			This function uses a brush to fill a rounded rectangle in the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pBrush				Pointer to a brush
; x						x-coordinate of the top left of the rounded rectangle
; y						y-coordinate of the top left of the rounded rectangle
; w						width of the rectanlge
; h						height of the rectangle
; r						radius of the rounded corners
;
; return				status enumeration. 0 = success

Gdip_FillRoundedRectangle(pGraphics, pBrush, x, y, w, h, r)
{
	Region := Gdip_GetClipRegion(pGraphics)
	Gdip_SetClipRect(pGraphics, x-r, y-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x+w-r, y-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x-r, y+h-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x+w-r, y+h-r, 2*r, 2*r, 4)
	E := Gdip_FillRectangle(pGraphics, pBrush, x, y, w, h)
	Gdip_SetClipRegion(pGraphics, Region, 0)
	Gdip_SetClipRect(pGraphics, x-(2*r), y+r, w+(4*r), h-(2*r), 4)
	Gdip_SetClipRect(pGraphics, x+r, y-(2*r), w-(2*r), h+(4*r), 4)
	Gdip_FillEllipse(pGraphics, pBrush, x, y, 2*r, 2*r)
	Gdip_FillEllipse(pGraphics, pBrush, x+w-(2*r), y, 2*r, 2*r)
	Gdip_FillEllipse(pGraphics, pBrush, x, y+h-(2*r), 2*r, 2*r)
	Gdip_FillEllipse(pGraphics, pBrush, x+w-(2*r), y+h-(2*r), 2*r, 2*r)
	Gdip_SetClipRegion(pGraphics, Region, 0)
	Gdip_DeleteRegion(Region)
	return E
}

;#####################################################################################

; Function				Gdip_FillPolygon
; Description			This function uses a brush to fill a polygon in the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pBrush				Pointer to a brush
; Points				the coordinates of all the points passed as x1,y1|x2,y2|x3,y3.....
;
; return				status enumeration. 0 = success
;
; notes					Alternate will fill the polygon as a whole, wheras winding will fill each new "segment"
; Alternate 			= 0
; Winding 				= 1

Gdip_FillPolygon(pGraphics, pBrush, Points, FillMode=0)
{
   StringSplit, Points, Points, |
   VarSetCapacity(PointF, 8*Points0)   
   Loop, %Points0%
   {
      StringSplit, Coord, Points%A_Index%, `,
      NumPut(Coord1, PointF, 8*(A_Index-1), "float"), NumPut(Coord2, PointF, (8*(A_Index-1))+4, "float")
   }   
   return DllCall("gdiplus\GdipFillPolygon", "uint", pGraphics, "uint", pBrush, "uint", &PointF, "int", Points0, "int", FillMode)
}

;#####################################################################################

; Function				Gdip_FillPie
; Description			This function uses a brush to fill a pie in the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pBrush				Pointer to a brush
; x						x-coordinate of the top left of the pie
; y						y-coordinate of the top left of the pie
; w						width of the pie
; h						height of the pie
; StartAngle			specifies the angle between the x-axis and the starting point of the pie
; SweepAngle			specifies the angle between the starting and ending points of the pie
;
; return				status enumeration. 0 = success

Gdip_FillPie(pGraphics, pBrush, x, y, w, h, StartAngle, SweepAngle)
{
   return DllCall("gdiplus\GdipFillPie", "uint", pGraphics, "uint", pBrush
   , "float", x, "float", y, "float", w, "float", h, "float", StartAngle, "float", SweepAngle)
}

;#####################################################################################

; Function				Gdip_FillEllipse
; Description			This function uses a brush to fill an ellipse in the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pBrush				Pointer to a brush
; x						x-coordinate of the top left of the ellipse
; y						y-coordinate of the top left of the ellipse
; w						width of the ellipse
; h						height of the ellipse
;
; return				status enumeration. 0 = success

Gdip_FillEllipse(pGraphics, pBrush, x, y, w, h)
{
	return DllCall("gdiplus\GdipFillEllipse", "uint", pGraphics, "uint", pBrush, "float", x, "float", y, "float", w, "float", h)
}

;#####################################################################################

; Function				Gdip_FillRegion
; Description			This function uses a brush to fill a region in the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pBrush				Pointer to a brush
; Region				Pointer to a Region
;
; return				status enumeration. 0 = success
;
; notes					You can create a region Gdip_CreateRegion() and then add to this

Gdip_FillRegion(pGraphics, pBrush, Region)
{
	return DllCall("gdiplus\GdipFillRegion", "uint", pGraphics, "uint", pBrush, "uint", Region)
}

;#####################################################################################

; Function				Gdip_FillPath
; Description			This function uses a brush to fill a path in the Graphics of a bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pBrush				Pointer to a brush
; Region				Pointer to a Path
;
; return				status enumeration. 0 = success

Gdip_FillPath(pGraphics, pBrush, Path)
{
	return DllCall("gdiplus\GdipFillPath", "uint", pGraphics, "uint", pBrush, "uint", Path)
}

;#####################################################################################

; Function				Gdip_DrawImagePointsRect
; Description			This function draws a bitmap into the Graphics of another bitmap and skews it
;
; pGraphics				Pointer to the Graphics of a bitmap
; pBitmap				Pointer to a bitmap to be drawn
; Points				Points passed as x1,y1|x2,y2|x3,y3 (3 points: top left, top right, bottom left) describing the drawing of the bitmap
; sx					x-coordinate of source upper-left corner
; sy					y-coordinate of source upper-left corner
; sw					width of source rectangle
; sh					height of source rectangle
; Matrix				a matrix used to alter image attributes when drawing
;
; return				status enumeration. 0 = success
;
; notes					if sx,sy,sw,sh are missed then the entire source bitmap will be used
;						Matrix can be omitted to just draw with no alteration to ARGB
;						Matrix may be passed as a digit from 0 - 1 to change just transparency
;						Matrix can be passed as a matrix with any delimiter

Gdip_DrawImagePointsRect(pGraphics, pBitmap, Points, sx="", sy="", sw="", sh="", Matrix=1)
{
	StringSplit, Points, Points, |
	VarSetCapacity(PointF, 8*Points0)   
	Loop, %Points0%
	{
		StringSplit, Coord, Points%A_Index%, `,
		NumPut(Coord1, PointF, 8*(A_Index-1), "float"), NumPut(Coord2, PointF, (8*(A_Index-1))+4, "float")
	}

	if (Matrix&1 = "")
		ImageAttr := Gdip_SetImageAttributesColorMatrix(Matrix)
	else if (Matrix != 1)
		ImageAttr := Gdip_SetImageAttributesColorMatrix("1|0|0|0|0|0|1|0|0|0|0|0|1|0|0|0|0|0|" Matrix "|0|0|0|0|0|1")
		
	if (sx = "" && sy = "" && sw = "" && sh = "")
	{
		sx := 0, sy := 0
		sw := Gdip_GetImageWidth(pBitmap)
		sh := Gdip_GetImageHeight(pBitmap)
	}

	E := DllCall("gdiplus\GdipDrawImagePointsRect", "uint", pGraphics, "uint", pBitmap
	, "uint", &PointF, "int", Points0, "float", sx, "float", sy, "float", sw, "float", sh
	, "int", 2, "uint", ImageAttr, "uint", 0, "uint", 0)
	if ImageAttr
		Gdip_DisposeImageAttributes(ImageAttr)
	return E
}

;#####################################################################################

; Function				Gdip_DrawImage
; Description			This function draws a bitmap into the Graphics of another bitmap
;
; pGraphics				Pointer to the Graphics of a bitmap
; pBitmap				Pointer to a bitmap to be drawn
; dx					x-coord of destination upper-left corner
; dy					y-coord of destination upper-left corner
; dw					width of destination image
; dh					height of destination image
; sx					x-coordinate of source upper-left corner
; sy					y-coordinate of source upper-left corner
; sw					width of source image
; sh					height of source image
; Matrix				a matrix used to alter image attributes when drawing
;
; return				status enumeration. 0 = success
;
; notes					if sx,sy,sw,sh are missed then the entire source bitmap will be used
;						Gdip_DrawImage performs faster
;						Matrix can be omitted to just draw with no alteration to ARGB
;						Matrix may be passed as a digit from 0 - 1 to change just transparency
;						Matrix can be passed as a matrix with any delimiter. For example:
;						MatrixBright=
;						(
;						1.5		|0		|0		|0		|0
;						0		|1.5	|0		|0		|0
;						0		|0		|1.5	|0		|0
;						0		|0		|0		|1		|0
;						0.05	|0.05	|0.05	|0		|1
;						)
;
; notes					MatrixBright = 1.5|0|0|0|0|0|1.5|0|0|0|0|0|1.5|0|0|0|0|0|1|0|0.05|0.05|0.05|0|1
;						MatrixGreyScale = 0.299|0.299|0.299|0|0|0.587|0.587|0.587|0|0|0.114|0.114|0.114|0|0|0|0|0|1|0|0|0|0|0|1
;						MatrixNegative = -1|0|0|0|0|0|-1|0|0|0|0|0|-1|0|0|0|0|0|1|0|0|0|0|0|1

Gdip_DrawImage(pGraphics, pBitmap, dx="", dy="", dw="", dh="", sx="", sy="", sw="", sh="", Matrix=1)
{
	if (Matrix&1 = "")
		ImageAttr := Gdip_SetImageAttributesColorMatrix(Matrix)
	else if (Matrix != 1)
		ImageAttr := Gdip_SetImageAttributesColorMatrix("1|0|0|0|0|0|1|0|0|0|0|0|1|0|0|0|0|0|" Matrix "|0|0|0|0|0|1")

	if (sx = "" && sy = "" && sw = "" && sh = "")
	{
		if (dx = "" && dy = "" && dw = "" && dh = "")
		{
			sx := dx := 0, sy := dy := 0
			sw := dw := Gdip_GetImageWidth(pBitmap)
			sh := dh := Gdip_GetImageHeight(pBitmap)
		}
		else
		{
			sx := sy := 0
			sw := Gdip_GetImageWidth(pBitmap)
			sh := Gdip_GetImageHeight(pBitmap)
		}
	}

	E := DllCall("gdiplus\GdipDrawImageRectRect", "uint", pGraphics, "uint", pBitmap
	, "float", dx, "float", dy, "float", dw, "float", dh
	, "float", sx, "float", sy, "float", sw, "float", sh
	, "int", 2, "uint", ImageAttr, "uint", 0, "uint", 0)
	if ImageAttr
		Gdip_DisposeImageAttributes(ImageAttr)
	return E
}

;#####################################################################################

; Function				Gdip_SetImageAttributesColorMatrix
; Description			This function creates an image matrix ready for drawing
;
; Matrix				a matrix used to alter image attributes when drawing
;						passed with any delimeter
;
; return				returns an image matrix on sucess or 0 if it fails
;
; notes					MatrixBright = 1.5|0|0|0|0|0|1.5|0|0|0|0|0|1.5|0|0|0|0|0|1|0|0.05|0.05|0.05|0|1
;						MatrixGreyScale = 0.299|0.299|0.299|0|0|0.587|0.587|0.587|0|0|0.114|0.114|0.114|0|0|0|0|0|1|0|0|0|0|0|1
;						MatrixNegative = -1|0|0|0|0|0|-1|0|0|0|0|0|-1|0|0|0|0|0|1|0|0|0|0|0|1

Gdip_SetImageAttributesColorMatrix(Matrix)
{
	VarSetCapacity(ColourMatrix, 100, 0)
	Matrix := RegExReplace(RegExReplace(Matrix, "^[^\d-\.]+([\d\.])", "$1", "", 1), "[^\d-\.]+", "|")
	StringSplit, Matrix, Matrix, |
	Loop, 25
	{
		Matrix := (Matrix%A_Index% != "") ? Matrix%A_Index% : Mod(A_Index-1, 6) ? 0 : 1
		NumPut(Matrix, ColourMatrix, (A_Index-1)*4, "float")
	}
	DllCall("gdiplus\GdipCreateImageAttributes", "uint*", ImageAttr)
	DllCall("gdiplus\GdipSetImageAttributesColorMatrix", "uint", ImageAttr, "int", 1, "int", 1, "uint", &ColourMatrix, "int", 0, "int", 0)
	return ImageAttr
}

;#####################################################################################

; Function				Gdip_GraphicsFromImage
; Description			This function gets the graphics for a bitmap used for drawing functions
;
; pBitmap				Pointer to a bitmap to get the pointer to its graphics
;
; return				returns a pointer to the graphics of a bitmap
;
; notes					a bitmap can be drawn into the graphics of another bitmap

Gdip_GraphicsFromImage(pBitmap)
{
    DllCall("gdiplus\GdipGetImageGraphicsContext", "uint", pBitmap, "uint*", pGraphics)
    return pGraphics
}

;#####################################################################################

; Function				Gdip_GraphicsFromHDC
; Description			This function gets the graphics from the handle to a device context
;
; hdc					This is the handle to the device context
;
; return				returns a pointer to the graphics of a bitmap
;
; notes					You can draw a bitmap into the graphics of another bitmap

Gdip_GraphicsFromHDC(hdc)
{
    DllCall("gdiplus\GdipCreateFromHDC", "uint", hdc, "uint*", pGraphics)
    return pGraphics
}

;#####################################################################################

; Function				Gdip_GetDC
; Description			This function gets the device context of the passed Graphics
;
; hdc					This is the handle to the device context
;
; return				returns the device context for the graphics of a bitmap

Gdip_GetDC(pGraphics)
{
	DllCall("gdiplus\GdipGetDC", "uint", pGraphics, "uint*", hdc)
	return hdc
}

;#####################################################################################

; Function				Gdip_ReleaseDC
; Description			This function releases a device context from use for further use
;
; pGraphics				Pointer to the graphics of a bitmap
; hdc					This is the handle to the device context
;
; return				status enumeration. 0 = success

Gdip_ReleaseDC(pGraphics, hdc)
{
	return DllCall("gdiplus\GdipReleaseDC", "uint", pGraphics, "uint", hdc)
}

;#####################################################################################

; Function				Gdip_GraphicsClear
; Description			Clears the graphics of a bitmap ready for further drawing
;
; pGraphics				Pointer to the graphics of a bitmap
; ARGB					The colour to clear the graphics to
;
; return				status enumeration. 0 = success
;
; notes					By default this will make the background invisible
;						Using clipping regions you can clear a particular area on the graphics rather than clearing the entire graphics

Gdip_GraphicsClear(pGraphics, ARGB=0x00ffffff)
{
    return DllCall("gdiplus\GdipGraphicsClear", "uint", pGraphics, "int", ARGB)
}

;#####################################################################################

; Function				Gdip_BlurBitmap
; Description			Gives a pointer to a blurred bitmap from a pointer to a bitmap
;
; pBitmap				Pointer to a bitmap to be blurred
; Blur					The Amount to blur a bitmap by from 1 (least blur) to 100 (most blur)
;
; return				If the function succeeds, the return value is a pointer to the new blurred bitmap
;						-1 = The blur parameter is outside the range 1-100
;
; notes					This function will not dispose of the original bitmap

Gdip_BlurBitmap(pBitmap, Blur)
{
	if (Blur > 100) || (Blur < 1)
		return -1	
	
	sWidth := Gdip_GetImageWidth(pBitmap), sHeight := Gdip_GetImageHeight(pBitmap)
	dWidth := sWidth//Blur, dHeight := sHeight//Blur

	pBitmap1 := Gdip_CreateBitmap(dWidth, dHeight)
	G1 := Gdip_GraphicsFromImage(pBitmap1)
	Gdip_SetInterpolationMode(G1, 7)
	Gdip_DrawImage(G1, pBitmap, 0, 0, dWidth, dHeight, 0, 0, sWidth, sHeight)

	Gdip_DeleteGraphics(G1)

	pBitmap2 := Gdip_CreateBitmap(sWidth, sHeight)
	G2 := Gdip_GraphicsFromImage(pBitmap2)
	Gdip_SetInterpolationMode(G2, 7)
	Gdip_DrawImage(G2, pBitmap1, 0, 0, sWidth, sHeight, 0, 0, dWidth, dHeight)

	Gdip_DeleteGraphics(G2)
	Gdip_DisposeImage(pBitmap1)
	return pBitmap2
}

;#####################################################################################

; Function:     		Gdip_SaveBitmapToFile
; Description:  		Saves a bitmap to a file in any supported format onto disk
;   
; pBitmap				Pointer to a bitmap
; sOutput      			The name of the file that the bitmap will be saved to. Supported extensions are: .BMP,.DIB,.RLE,.JPG,.JPEG,.JPE,.JFIF,.GIF,.TIF,.TIFF,.PNG
; Quality      			If saving as jpg (.JPG,.JPEG,.JPE,.JFIF) then quality can be 1-100 with default at maximum quality
;
; return      			If the function succeeds, the return value is zero, otherwise:
;						-1 = Extension supplied is not a supported file format
;						-2 = Could not get a list of encoders on system
;						-3 = Could not find matching encoder for specified file format
;						-4 = Could not get WideChar name of output file
;						-5 = Could not save file to disk
;
; notes					This function will use the extension supplied from the sOutput parameter to determine the output format

Gdip_SaveBitmapToFile(pBitmap, sOutput, Quality=75)
{
	SplitPath, sOutput,,, Extension
	if Extension not in BMP,DIB,RLE,JPG,JPEG,JPE,JFIF,GIF,TIF,TIFF,PNG
		return -1
	Extension := "." Extension

	DllCall("gdiplus\GdipGetImageEncodersSize", "uint*", nCount, "uint*", nSize)
	VarSetCapacity(ci, nSize)
	DllCall("gdiplus\GdipGetImageEncoders", "uint", nCount, "uint", nSize, "uint", &ci)
	if !(nCount && nSize)
		return -2
   
	Loop, %nCount%
	{
		Location := NumGet(ci, 76*(A_Index-1)+44)
		if !A_IsUnicode
		{
			nSize := DllCall("WideCharToMultiByte", "uint", 0, "uint", 0, "uint", Location, "int", -1, "uint", 0, "int",  0, "uint", 0, "uint", 0)
			VarSetCapacity(sString, nSize)
			DllCall("WideCharToMultiByte", "uint", 0, "uint", 0, "uint", Location, "int", -1, "str", sString, "int", nSize, "uint", 0, "uint", 0)
			if !InStr(sString, "*" Extension)
				continue
		}
		else
		{
			nSize := DllCall("WideCharToMultiByte", "uint", 0, "uint", 0, "uint", Location, "int", -1, "uint", 0, "int",  0, "uint", 0, "uint", 0)
			sString := ""
			Loop, %nSize%
				sString .= Chr(NumGet(Location+0, 2*(A_Index-1), "char"))
			if !InStr(sString, "*" Extension)
				continue
		}
		pCodec := &ci+76*(A_Index-1)
		break
	}
	if !pCodec
		return -3

	if (Quality != 75)
	{
		Quality := (Quality < 0) ? 0 : (Quality > 100) ? 100 : Quality
		if Extension in .JPG,.JPEG,.JPE,.JFIF
		{
			DllCall("gdiplus\GdipGetEncoderParameterListSize", "uint", pBitmap, "uint", pCodec, "uint*", nSize)
			VarSetCapacity(EncoderParameters, nSize, 0)
			DllCall("gdiplus\GdipGetEncoderParameterList", "uint", pBitmap, "uint", pCodec, "uint", nSize, "uint", &EncoderParameters)
			Loop, % NumGet(EncoderParameters)      ;%
			{
				if (NumGet(EncoderParameters, (28*(A_Index-1))+20) = 1) && (NumGet(EncoderParameters, (28*(A_Index-1))+24) = 6)
				{
				   p := (28*(A_Index-1))+&EncoderParameters
				   NumPut(Quality, NumGet(NumPut(4, NumPut(1, p+0)+20)))
				   break
				}
			}      
	  }
	}

	if !A_IsUnicode
	{
		nSize := DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, "uint", &sOutput, "int", -1, "uint", 0, "int", 0)
		VarSetCapacity(wOutput, nSize*2)
		DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, "uint", &sOutput, "int", -1, "uint", &wOutput, "int", nSize)
		VarSetCapacity(wOutput, -1)
		if !VarSetCapacity(wOutput)
			return -4
		E := DllCall("gdiplus\GdipSaveImageToFile", "uint", pBitmap, "uint", &wOutput, "uint", pCodec, "uint", p ? p : 0)
	}
	else
		E := DllCall("gdiplus\GdipSaveImageToFile", "uint", pBitmap, "uint", &sOutput, "uint", pCodec, "uint", p ? p : 0)
	return E ? -5 : 0
}

;#####################################################################################

; Function				Gdip_GetPixel
; Description			Gets the ARGB of a pixel in a bitmap
;
; pBitmap				Pointer to a bitmap
; x						x-coordinate of the pixel
; y						y-coordinate of the pixel
;
; return				Returns the ARGB value of the pixel

Gdip_GetPixel(pBitmap, x, y)
{
	DllCall("gdiplus\GdipBitmapGetPixel", "uint", pBitmap, "int", x, "int", y, "uint*", ARGB)
	return ARGB
}

;#####################################################################################

; Function				Gdip_SetPixel
; Description			Sets the ARGB of a pixel in a bitmap
;
; pBitmap				Pointer to a bitmap
; x						x-coordinate of the pixel
; y						y-coordinate of the pixel
;
; return				status enumeration. 0 = success

Gdip_SetPixel(pBitmap, x, y, ARGB)
{
   return DllCall("gdiplus\GdipBitmapSetPixel", "uint", pBitmap, "int", x, "int", y, "int", ARGB)
}

;#####################################################################################

; Function				Gdip_GetImageWidth
; Description			Gives the width of a bitmap
;
; pBitmap				Pointer to a bitmap
;
; return				Returns the width in pixels of the supplied bitmap

Gdip_GetImageWidth(pBitmap)
{
   DllCall("gdiplus\GdipGetImageWidth", "uint", pBitmap, "uint*", Width)
   return Width
}

;#####################################################################################

; Function				Gdip_GetImageHeight
; Description			Gives the height of a bitmap
;
; pBitmap				Pointer to a bitmap
;
; return				Returns the height in pixels of the supplied bitmap

Gdip_GetImageHeight(pBitmap)
{
   DllCall("gdiplus\GdipGetImageHeight", "uint", pBitmap, "uint*", Height)
   return Height
}

;#####################################################################################

; Function				Gdip_GetDimensions
; Description			Gives the width and height of a bitmap
;
; pBitmap				Pointer to a bitmap
; Width					ByRef variable. This variable will be set to the width of the bitmap
; Height				ByRef variable. This variable will be set to the height of the bitmap
;
; return				No return value
;						Gdip_GetDimensions(pBitmap, ThisWidth, ThisHeight) will set ThisWidth to the width and ThisHeight to the height

Gdip_GetImageDimensions(pBitmap, ByRef Width, ByRef Height)
{
	DllCall("gdiplus\GdipGetImageWidth", "uint", pBitmap, "uint*", Width)
	DllCall("gdiplus\GdipGetImageHeight", "uint", pBitmap, "uint*", Height)
}

;#####################################################################################

Gdip_GetDimensions(pBitmap, ByRef Width, ByRef Height)
{
	Gdip_GetImageDimensions(pBitmap, Width, Height)
}

;#####################################################################################

Gdip_GetImagePixelFormat(pBitmap)
{
	DllCall("gdiplus\GdipGetImagePixelFormat", "uint", pBitmap, "uint*", Format)
	return Format
}

;#####################################################################################

; Function				Gdip_GetDpiX
; Description			Gives the horizontal dots per inch of the graphics of a bitmap
;
; pBitmap				Pointer to a bitmap
; Width					ByRef variable. This variable will be set to the width of the bitmap
; Height				ByRef variable. This variable will be set to the height of the bitmap
;
; return				No return value
;						Gdip_GetDimensions(pBitmap, ThisWidth, ThisHeight) will set ThisWidth to the width and ThisHeight to the height

Gdip_GetDpiX(pGraphics)
{
	DllCall("gdiplus\GdipGetDpiX", "uint", pGraphics, "float*", dpix)
	return Round(dpix)
}

;#####################################################################################

Gdip_GetDpiY(pGraphics)
{
	DllCall("gdiplus\GdipGetDpiY", "uint", pGraphics, "float*", dpiy)
	return Round(dpiy)
}

;#####################################################################################

Gdip_GetImageHorizontalResolution(pBitmap)
{
	DllCall("gdiplus\GdipGetImageHorizontalResolution", "uint", pBitmap, "float*", dpix)
	return Round(dpix)
}

;#####################################################################################

Gdip_GetImageVerticalResolution(pBitmap)
{
	DllCall("gdiplus\GdipGetImageVerticalResolution", "uint", pBitmap, "float*", dpiy)
	return Round(dpiy)
}

;#####################################################################################

Gdip_BitmapSetResolution(pBitmap, dpix, dpiy)
{
	return DllCall("gdiplus\GdipBitmapSetResolution", "uint", pBitmap, "float", dpix, "float", dpiy)
}

;#####################################################################################

Gdip_CreateBitmapFromFile(sFile, IconNumber=1, IconSize="")
{
	SplitPath, sFile,,, ext
	if ext in exe,dll
	{
		Sizes := IconSize ? IconSize : 256 "|" 128 "|" 64 "|" 48 "|" 32 "|" 16
		VarSetCapacity(buf, 40)
		Loop, Parse, Sizes, |
		{
			DllCall("PrivateExtractIcons", "str", sFile, "int", IconNumber-1, "int", A_LoopField, "int", A_LoopField, "uint*", hIcon, "uint*", 0, "uint", 1, "uint", 0)
			if !hIcon
				continue

			if !DllCall("GetIconInfo", "uint", hIcon, "uint", &buf)
			{
				DestroyIcon(hIcon)
				continue
			}
			hbmColor := NumGet(buf, 16)
			hbmMask  := NumGet(buf, 12)

			if !(hbmColor && DllCall("GetObject", "uint", hbmColor, "int", 24, "uint", &buf))
			{
				DestroyIcon(hIcon)
				continue
			}
			break
		}
		if !hIcon
			return -1

		Width := NumGet(buf, 4, "int"),  Height := NumGet(buf, 8, "int")
		hbm := CreateDIBSection(Width, -Height), hdc := CreateCompatibleDC(), obm := SelectObject(hdc, hbm)

		if !DllCall("DrawIconEx", "uint", hdc, "int", 0, "int", 0, "uint", hIcon, "uint", Width, "uint", Height, "uint", 0, "uint", 0, "uint", 3)
		{
			DestroyIcon(hIcon)
			return -2
		}

		VarSetCapacity(dib, 84)
		DllCall("GetObject", "uint", hbm, "int", 84, "uint", &dib)
		Stride := NumGet(dib, 12), Bits := NumGet(dib, 20)

		DllCall("gdiplus\GdipCreateBitmapFromScan0", "int", Width, "int", Height, "int", Stride, "int", 0x26200A, "uint", Bits, "uint*", pBitmapOld)
		pBitmap := Gdip_CreateBitmap(Width, Height), G := Gdip_GraphicsFromImage(pBitmap)
		Gdip_DrawImage(G, pBitmapOld, 0, 0, Width, Height, 0, 0, Width, Height)
		SelectObject(hdc, obm), DeleteObject(hbm), DeleteDC(hdc)
		Gdip_DeleteGraphics(G), Gdip_DisposeImage(pBitmapOld)
		DestroyIcon(hIcon)
	}
	else
	{
		if !A_IsUnicode
		{
			VarSetCapacity(wFile, 1023)
			DllCall("kernel32\MultiByteToWideChar", "uint", 0, "uint", 0, "uint", &sFile, "int", -1, "uint", &wFile, "int", 512)
			DllCall("gdiplus\GdipCreateBitmapFromFile", "uint", &wFile, "uint*", pBitmap)
		}
		else
			DllCall("gdiplus\GdipCreateBitmapFromFile", "uint", &sFile, "uint*", pBitmap)
	}
	return pBitmap
}

;#####################################################################################

Gdip_CreateBitmapFromHBITMAP(hBitmap, Palette=0)
{
	DllCall("gdiplus\GdipCreateBitmapFromHBITMAP", "uint", hBitmap, "uint", Palette, "uint*", pBitmap)
	return pBitmap
}

;#####################################################################################

Gdip_CreateHBITMAPFromBitmap(pBitmap, Background=0xffffffff)
{
	DllCall("gdiplus\GdipCreateHBITMAPFromBitmap", "uint", pBitmap, "uint*", hbm, "int", Background)
	return hbm
}

;#####################################################################################

Gdip_CreateBitmapFromHICON(hIcon)
{
	DllCall("gdiplus\GdipCreateBitmapFromHICON", "uint", hIcon, "uint*", pBitmap)
	return pBitmap
}

;#####################################################################################

Gdip_CreateHICONFromBitmap(pBitmap)
{
	DllCall("gdiplus\GdipCreateHICONFromBitmap", "uint", pBitmap, "uint*", hIcon)
	return hIcon
}

;#####################################################################################

Gdip_CreateBitmap(Width, Height, Format=0x26200A)
{
    DllCall("gdiplus\GdipCreateBitmapFromScan0", "int", Width, "int", Height, "int", 0, "int", Format, "uint", 0, "uint*", pBitmap)
    Return pBitmap
}

;#####################################################################################

Gdip_CreateBitmapFromClipboard()
{
	if !DllCall("OpenClipboard", "uint", 0)
		return -1
	if !DllCall("IsClipboardFormatAvailable", "uint", 8)
		return -2
	if !hBitmap := DllCall("GetClipboardData", "uint", 2)
		return -3
	if !pBitmap := Gdip_CreateBitmapFromHBITMAP(hBitmap)
		return -4
	if !DllCall("CloseClipboard")
		return -5
	DeleteObject(hBitmap)
	return pBitmap
}

;#####################################################################################

Gdip_SetBitmapToClipboard(pBitmap)
{
	hBitmap := Gdip_CreateHBITMAPFromBitmap(pBitmap)
	DllCall("GetObject", "uint", hBitmap, "int", VarSetCapacity(oi, 84, 0), "uint", &oi)
	hdib := DllCall("GlobalAlloc", "uint", 2, "uint", 40+NumGet(oi, 44))
	pdib := DllCall("GlobalLock", "uint", hdib)
	DllCall("RtlMoveMemory", "uint", pdib, "uint", &oi+24, "uint", 40)
	DllCall("RtlMoveMemory", "Uint", pdib+40, "Uint", NumGet(oi, 20), "uint", NumGet(oi, 44))
	DllCall("GlobalUnlock", "uint", hdib)
	DllCall("DeleteObject", "uint", hBitmap)
	DllCall("OpenClipboard", "uint", 0)
	DllCall("EmptyClipboard")
	DllCall("SetClipboardData", "uint", 8, "uint", hdib)
	DllCall("CloseClipboard")
}

;#####################################################################################

Gdip_CloneBitmapArea(pBitmap, x, y, w, h, Format=0x26200A)
{
	DllCall("gdiplus\GdipCloneBitmapArea", "float", x, "float", y, "float", w, "float", h
	, "int", Format, "uint", pBitmap, "uint*", pBitmapDest)
	return pBitmapDest
}

;#####################################################################################
; Create resources
;#####################################################################################

Gdip_CreatePen(ARGB, w)
{
   DllCall("gdiplus\GdipCreatePen1", "int", ARGB, "float", w, "int", 2, "uint*", pPen)
   return pPen
}

;#####################################################################################

Gdip_CreatePenFromBrush(pBrush, w)
{
	DllCall("gdiplus\GdipCreatePen2", "uint", pBrush, "float", w, "int", 2, "uint*", pPen)
	return pPen
}

;#####################################################################################

Gdip_BrushCreateSolid(ARGB=0xff000000)
{
	DllCall("gdiplus\GdipCreateSolidFill", "int", ARGB, "uint*", pBrush)
	return pBrush
}

;#####################################################################################

; HatchStyleHorizontal = 0
; HatchStyleVertical = 1
; HatchStyleForwardDiagonal = 2
; HatchStyleBackwardDiagonal = 3
; HatchStyleCross = 4
; HatchStyleDiagonalCross = 5
; HatchStyle05Percent = 6
; HatchStyle10Percent = 7
; HatchStyle20Percent = 8
; HatchStyle25Percent = 9
; HatchStyle30Percent = 10
; HatchStyle40Percent = 11
; HatchStyle50Percent = 12
; HatchStyle60Percent = 13
; HatchStyle70Percent = 14
; HatchStyle75Percent = 15
; HatchStyle80Percent = 16
; HatchStyle90Percent = 17
; HatchStyleLightDownwardDiagonal = 18
; HatchStyleLightUpwardDiagonal = 19
; HatchStyleDarkDownwardDiagonal = 20
; HatchStyleDarkUpwardDiagonal = 21
; HatchStyleWideDownwardDiagonal = 22
; HatchStyleWideUpwardDiagonal = 23
; HatchStyleLightVertical = 24
; HatchStyleLightHorizontal = 25
; HatchStyleNarrowVertical = 26
; HatchStyleNarrowHorizontal = 27
; HatchStyleDarkVertical = 28
; HatchStyleDarkHorizontal = 29
; HatchStyleDashedDownwardDiagonal = 30
; HatchStyleDashedUpwardDiagonal = 31
; HatchStyleDashedHorizontal = 32
; HatchStyleDashedVertical = 33
; HatchStyleSmallConfetti = 34
; HatchStyleLargeConfetti = 35
; HatchStyleZigZag = 36
; HatchStyleWave = 37
; HatchStyleDiagonalBrick = 38
; HatchStyleHorizontalBrick = 39
; HatchStyleWeave = 40
; HatchStylePlaid = 41
; HatchStyleDivot = 42
; HatchStyleDottedGrid = 43
; HatchStyleDottedDiamond = 44
; HatchStyleShingle = 45
; HatchStyleTrellis = 46
; HatchStyleSphere = 47
; HatchStyleSmallGrid = 48
; HatchStyleSmallCheckerBoard = 49
; HatchStyleLargeCheckerBoard = 50
; HatchStyleOutlinedDiamond = 51
; HatchStyleSolidDiamond = 52
; HatchStyleTotal = 53
Gdip_BrushCreateHatch(ARGBfront, ARGBback, HatchStyle=0)
{
	DllCall("gdiplus\GdipCreateHatchBrush", "int", HatchStyle, "int", ARGBfront, "int", ARGBback, "uint*", pBrush)
	return pBrush
}

;#####################################################################################

Gdip_CreateTextureBrush(pBitmap, WrapMode=1, x=0, y=0, w="", h="")
{
	if !(w && h)
		DllCall("gdiplus\GdipCreateTexture", "uint", pBitmap, "int", WrapMode, "uint*", pBrush)
	else
		DllCall("gdiplus\GdipCreateTexture2", "uint", pBitmap, "int", WrapMode, "float", x, "float", y, "float", w, "float", h, "uint*", pBrush)
	return pBrush
}

;#####################################################################################

; WrapModeTile = 0
; WrapModeTileFlipX = 1
; WrapModeTileFlipY = 2
; WrapModeTileFlipXY = 3
; WrapModeClamp = 4
Gdip_CreateLineBrush(x1, y1, x2, y2, ARGB1, ARGB2, WrapMode=1)
{
	CreatePointF(PointF1, x1, y1), CreatePointF(PointF2, x2, y2)
	DllCall("gdiplus\GdipCreateLineBrush", "uint", &PointF1, "uint", &PointF2, "int", ARGB1, "int", ARGB2, "int", WrapMode, "uint*", LGpBrush)
	return LGpBrush
}

;#####################################################################################

; LinearGradientModeHorizontal = 0
; LinearGradientModeVertical = 1
; LinearGradientModeForwardDiagonal = 2
; LinearGradientModeBackwardDiagonal = 3
Gdip_CreateLineBrushFromRect(x, y, w, h, ARGB1, ARGB2, LinearGradientMode=1, WrapMode=1)
{
	CreateRectF(RectF, x, y, w, h)
	DllCall("gdiplus\GdipCreateLineBrushFromRect", "uint", &RectF, "int", ARGB1, "int", ARGB2, "int", LinearGradientMode, "int", WrapMode, "uint*", LGpBrush)
	return LGpBrush
}

;#####################################################################################

Gdip_CloneBrush(pBrush)
{
	DllCall("gdiplus\GdipCloneBrush", "uint", pBrush, "uint*", pBrushClone)
	return pBrushClone
}

;#####################################################################################
; Delete resources
;#####################################################################################

Gdip_DeletePen(pPen)
{
   return DllCall("gdiplus\GdipDeletePen", "uint", pPen)
}

;#####################################################################################

Gdip_DeleteBrush(pBrush)
{
   return DllCall("gdiplus\GdipDeleteBrush", "uint", pBrush)
}

;#####################################################################################

Gdip_DisposeImage(pBitmap)
{
   return DllCall("gdiplus\GdipDisposeImage", "uint", pBitmap)
}

;#####################################################################################

Gdip_DeleteGraphics(pGraphics)
{
   return DllCall("gdiplus\GdipDeleteGraphics", "uint", pGraphics)
}

;#####################################################################################

Gdip_DisposeImageAttributes(ImageAttr)
{
	return DllCall("gdiplus\GdipDisposeImageAttributes", "uint", ImageAttr)
}

;#####################################################################################

Gdip_DeleteFont(hFont)
{
   return DllCall("gdiplus\GdipDeleteFont", "uint", hFont)
}

;#####################################################################################

Gdip_DeleteStringFormat(hFormat)
{
   return DllCall("gdiplus\GdipDeleteStringFormat", "uint", hFormat)
}

;#####################################################################################

Gdip_DeleteFontFamily(hFamily)
{
   return DllCall("gdiplus\GdipDeleteFontFamily", "uint", hFamily)
}

;#####################################################################################

Gdip_DeleteMatrix(Matrix)
{
   return DllCall("gdiplus\GdipDeleteMatrix", "uint", Matrix)
}

;#####################################################################################
; Text functions
;#####################################################################################

Gdip_TextToGraphics(pGraphics, Text, Options, Font="Arial", Width="", Height="", Measure=0)
{
	IWidth := Width, IHeight:= Height
	
	RegExMatch(Options, "i)X([\-\d\.]+)(p*)", xpos)
	RegExMatch(Options, "i)Y([\-\d\.]+)(p*)", ypos)
	RegExMatch(Options, "i)W([\-\d\.]+)(p*)", Width)
	RegExMatch(Options, "i)H([\-\d\.]+)(p*)", Height)
	RegExMatch(Options, "i)C(?!(entre|enter))([a-f\d]+)", Colour)
	RegExMatch(Options, "i)Top|Up|Bottom|Down|vCentre|vCenter", vPos)
	RegExMatch(Options, "i)NoWrap", NoWrap)
	RegExMatch(Options, "i)R(\d)", Rendering)
	RegExMatch(Options, "i)S(\d+)(p*)", Size)

	if !Gdip_DeleteBrush(Gdip_CloneBrush(Colour2))
		PassBrush := 1, pBrush := Colour2
	
	if !(IWidth && IHeight) && (xpos2 || ypos2 || Width2 || Height2 || Size2)
		return -1

	Style := 0, Styles := "Regular|Bold|Italic|BoldItalic|Underline|Strikeout"
	Loop, Parse, Styles, |
	{
		if RegExMatch(Options, "\b" A_loopField)
		Style |= (A_LoopField != "StrikeOut") ? (A_Index-1) : 8
	}
  
	Align := 0, Alignments := "Near|Left|Centre|Center|Far|Right"
	Loop, Parse, Alignments, |
	{
		if RegExMatch(Options, "\b" A_loopField)
			Align |= A_Index//2.1      ; 0|0|1|1|2|2
	}

	xpos := (xpos1 != "") ? xpos2 ? IWidth*(xpos1/100) : xpos1 : 0
	ypos := (ypos1 != "") ? ypos2 ? IHeight*(ypos1/100) : ypos1 : 0
	Width := Width1 ? Width2 ? IWidth*(Width1/100) : Width1 : IWidth
	Height := Height1 ? Height2 ? IHeight*(Height1/100) : Height1 : IHeight
	if !PassBrush
		Colour := "0x" (Colour2 ? Colour2 : "ff000000")
	Rendering := ((Rendering1 >= 0) && (Rendering1 <= 5)) ? Rendering1 : 4
	Size := (Size1 > 0) ? Size2 ? IHeight*(Size1/100) : Size1 : 12

	hFamily := Gdip_FontFamilyCreate(Font)
	hFont := Gdip_FontCreate(hFamily, Size, Style)
	FormatStyle := NoWrap ? 0x4000 | 0x1000 : 0x4000
	hFormat := Gdip_StringFormatCreate(FormatStyle)
	pBrush := PassBrush ? pBrush : Gdip_BrushCreateSolid(Colour)
	if !(hFamily && hFont && hFormat && pBrush && pGraphics)
		return !pGraphics ? -2 : !hFamily ? -3 : !hFont ? -4 : !hFormat ? -5 : !pBrush ? -6 : 0
   
	CreateRectF(RC, xpos, ypos, Width, Height)
	Gdip_SetStringFormatAlign(hFormat, Align)
	Gdip_SetTextRenderingHint(pGraphics, Rendering)
	ReturnRC := Gdip_MeasureString(pGraphics, Text, hFont, hFormat, RC)

	if vPos
	{
		StringSplit, ReturnRC, ReturnRC, |
		
		if (vPos = "vCentre") || (vPos = "vCenter")
			ypos += (Height-ReturnRC4)//2
		else if (vPos = "Top") || (vPos = "Up")
			ypos := 0
		else if (vPos = "Bottom") || (vPos = "Down")
			ypos := Height-ReturnRC4
		
		CreateRectF(RC, xpos, ypos, Width, ReturnRC4)
		ReturnRC := Gdip_MeasureString(pGraphics, Text, hFont, hFormat, RC)
	}

	if !Measure
		E := Gdip_DrawString(pGraphics, Text, hFont, hFormat, pBrush, RC)

	if !PassBrush
		Gdip_DeleteBrush(pBrush)
	Gdip_DeleteStringFormat(hFormat)   
	Gdip_DeleteFont(hFont)
	Gdip_DeleteFontFamily(hFamily)
	return E ? E : ReturnRC
}

;#####################################################################################

Gdip_DrawString(pGraphics, sString, hFont, hFormat, pBrush, ByRef RectF)
{
	if !A_IsUnicode
	{
		nSize := DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, "uint", &sString, "int", -1, "uint", 0, "int", 0)
		VarSetCapacity(wString, nSize*2)
		DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, "uint", &sString, "int", -1, "uint", &wString, "int", nSize)
		return DllCall("gdiplus\GdipDrawString", "uint", pGraphics
		, "uint", &wString, "int", -1, "uint", hFont, "uint", &RectF, "uint", hFormat, "uint", pBrush)
	}
	else
	{
		return DllCall("gdiplus\GdipDrawString", "uint", pGraphics
		, "uint", &sString, "int", -1, "uint", hFont, "uint", &RectF, "uint", hFormat, "uint", pBrush)
	}	
}

;#####################################################################################

Gdip_MeasureString(pGraphics, sString, hFont, hFormat, ByRef RectF)
{
	VarSetCapacity(RC, 16)
	if !A_IsUnicode
	{
		nSize := DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, "uint", &sString, "int", -1, "uint", 0, "int", 0)
		VarSetCapacity(wString, nSize*2)   
		DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, "uint", &sString, "int", -1, "uint", &wString, "int", nSize)
		DllCall("gdiplus\GdipMeasureString", "uint", pGraphics
		, "uint", &wString, "int", -1, "uint", hFont, "uint", &RectF, "uint", hFormat, "uint", &RC, "uint*", Chars, "uint*", Lines)
	}
	else
	{
		DllCall("gdiplus\GdipMeasureString", "uint", pGraphics
		, "uint", &sString, "int", -1, "uint", hFont, "uint", &RectF, "uint", hFormat, "uint", &RC, "uint*", Chars, "uint*", Lines)
	}
	return &RC ? NumGet(RC, 0, "float") "|" NumGet(RC, 4, "float") "|" NumGet(RC, 8, "float") "|" NumGet(RC, 12, "float") "|" Chars "|" Lines : 0
}

; Near = 0
; Center = 1
; Far = 2
Gdip_SetStringFormatAlign(hFormat, Align)
{
   return DllCall("gdiplus\GdipSetStringFormatAlign", "uint", hFormat, "int", Align)
}

; StringFormatFlagsDirectionRightToLeft    = 0x00000001
; StringFormatFlagsDirectionVertical       = 0x00000002
; StringFormatFlagsNoFitBlackBox           = 0x00000004
; StringFormatFlagsDisplayFormatControl    = 0x00000020
; StringFormatFlagsNoFontFallback          = 0x00000400
; StringFormatFlagsMeasureTrailingSpaces   = 0x00000800
; StringFormatFlagsNoWrap                  = 0x00001000
; StringFormatFlagsLineLimit               = 0x00002000
; StringFormatFlagsNoClip                  = 0x00004000 
Gdip_StringFormatCreate(Format=0, Lang=0)
{
   DllCall("gdiplus\GdipCreateStringFormat", "int", Format, "int", Lang, "uint*", hFormat)
   return hFormat
}

; Regular = 0
; Bold = 1
; Italic = 2
; BoldItalic = 3
; Underline = 4
; Strikeout = 8
Gdip_FontCreate(hFamily, Size, Style=0)
{
   DllCall("gdiplus\GdipCreateFont", "uint", hFamily, "float", Size, "int", Style, "int", 0, "uint*", hFont)
   return hFont
}

Gdip_FontFamilyCreate(Font)
{
	if !A_IsUnicode
	{
		nSize := DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, "uint", &Font, "int", -1, "uint", 0, "int", 0)
		VarSetCapacity(wFont, nSize*2)
		DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, "uint", &Font, "int", -1, "uint", &wFont, "int", nSize)
		DllCall("gdiplus\GdipCreateFontFamilyFromName", "uint", &wFont, "uint", 0, "uint*", hFamily)
	}
	else
		DllCall("gdiplus\GdipCreateFontFamilyFromName", "uint", &Font, "uint", 0, "uint*", hFamily)
	return hFamily
}

;#####################################################################################
; Matrix functions
;#####################################################################################

Gdip_CreateAffineMatrix(m11, m12, m21, m22, x, y)
{
   DllCall("gdiplus\GdipCreateMatrix2", "float", m11, "float", m12, "float", m21, "float", m22, "float", x, "float", y, "uint*", Matrix)
   return Matrix
}

Gdip_CreateMatrix()
{
   DllCall("gdiplus\GdipCreateMatrix", "uint*", Matrix)
   return Matrix
}

;#####################################################################################
; GraphicsPath functions
;#####################################################################################

; Alternate = 0
; Winding = 1
Gdip_CreatePath(BrushMode=0)
{
	DllCall("gdiplus\GdipCreatePath", "int", BrushMode, "uint*", Path)
	return Path
}

Gdip_AddPathEllipse(Path, x, y, w, h)
{
	return DllCall("gdiplus\GdipAddPathEllipse", "uint", Path, "float", x, "float", y, "float", w, "float", h)
}

Gdip_AddPathPolygon(Path, Points)
{
	StringSplit, Points, Points, |
	VarSetCapacity(PointF, 8*Points0)   
	Loop, %Points0%
	{
		StringSplit, Coord, Points%A_Index%, `,
		NumPut(Coord1, PointF, 8*(A_Index-1), "float"), NumPut(Coord2, PointF, (8*(A_Index-1))+4, "float")
	}   

	return DllCall("gdiplus\GdipAddPathPolygon", "uint", Path, "uint", &PointF, "int", Points0)
}

Gdip_DeletePath(Path)
{
	return DllCall("gdiplus\GdipDeletePath", "uint", Path)
}

;#####################################################################################
; Quality functions
;#####################################################################################

; SystemDefault = 0
; SingleBitPerPixelGridFit = 1
; SingleBitPerPixel = 2
; AntiAliasGridFit = 3
; AntiAlias = 4
Gdip_SetTextRenderingHint(pGraphics, RenderingHint)
{
	return DllCall("gdiplus\GdipSetTextRenderingHint", "uint", pGraphics, "int", RenderingHint)
}

; Default = 0
; LowQuality = 1
; HighQuality = 2
; Bilinear = 3
; Bicubic = 4
; NearestNeighbor = 5
; HighQualityBilinear = 6
; HighQualityBicubic = 7
Gdip_SetInterpolationMode(pGraphics, InterpolationMode)
{
   return DllCall("gdiplus\GdipSetInterpolationMode", "uint", pGraphics, "int", InterpolationMode)
}

; Default = 0
; HighSpeed = 1
; HighQuality = 2
; None = 3
; AntiAlias = 4
Gdip_SetSmoothingMode(pGraphics, SmoothingMode)
{
   return DllCall("gdiplus\GdipSetSmoothingMode", "uint", pGraphics, "int", SmoothingMode)
}

; CompositingModeSourceOver = 0 (blended)
; CompositingModeSourceCopy = 1 (overwrite)
Gdip_SetCompositingMode(pGraphics, CompositingMode=0)
{
   return DllCall("gdiplus\GdipSetCompositingMode", "uint", pGraphics, "int", CompositingMode)
}

;#####################################################################################
; Extra functions
;#####################################################################################

Gdip_Startup()
{
	if !DllCall("GetModuleHandle", "str", "gdiplus")
		DllCall("LoadLibrary", "str", "gdiplus")
	VarSetCapacity(si, 16, 0), si := Chr(1)
	DllCall("gdiplus\GdiplusStartup", "uint*", pToken, "uint", &si, "uint", 0)
	return pToken
}

Gdip_Shutdown(pToken)
{
	DllCall("gdiplus\GdiplusShutdown", "uint", pToken)
	if hModule := DllCall("GetModuleHandle", "str", "gdiplus")
		DllCall("FreeLibrary", "uint", hModule)
	return 0
}

; Prepend = 0; The new operation is applied before the old operation.
; Append = 1; The new operation is applied after the old operation.
Gdip_RotateWorldTransform(pGraphics, Angle, MatrixOrder=0)
{
	return DllCall("gdiplus\GdipRotateWorldTransform", "uint", pGraphics, "float", Angle, "int", MatrixOrder)
}

Gdip_ScaleWorldTransform(pGraphics, x, y, MatrixOrder=0)
{
	return DllCall("gdiplus\GdipScaleWorldTransform", "uint", pGraphics, "float", x, "float", y, "int", MatrixOrder)
}

Gdip_TranslateWorldTransform(pGraphics, x, y, MatrixOrder=0)
{
	return DllCall("gdiplus\GdipTranslateWorldTransform", "uint", pGraphics, "float", x, "float", y, "int", MatrixOrder)
}

Gdip_ResetWorldTransform(pGraphics)
{
	return DllCall("gdiplus\GdipResetWorldTransform", "uint", pGraphics)
}

Gdip_GetRotatedTranslation(Width, Height, Angle, ByRef xTranslation, ByRef yTranslation)
{
	pi := 3.14159, TAngle := Angle*(pi/180)	

	Bound := (Angle >= 0) ? Mod(Angle, 360) : 360-Mod(-Angle, -360)
	if ((Bound >= 0) && (Bound <= 90))
		xTranslation := Height*Sin(TAngle), yTranslation := 0
	else if ((Bound > 90) && (Bound <= 180))
		xTranslation := (Height*Sin(TAngle))-(Width*Cos(TAngle)), yTranslation := -Height*Cos(TAngle)
	else if ((Bound > 180) && (Bound <= 270))
		xTranslation := -(Width*Cos(TAngle)), yTranslation := -(Height*Cos(TAngle))-(Width*Sin(TAngle))
	else if ((Bound > 270) && (Bound <= 360))
		xTranslation := 0, yTranslation := -Width*Sin(TAngle)
}

Gdip_GetRotatedDimensions(Width, Height, Angle, ByRef RWidth, ByRef RHeight)
{
	pi := 3.14159, TAngle := Angle*(pi/180)
	if !(Width && Height)
		return -1
	RWidth := Ceil(Abs(Width*Cos(TAngle))+Abs(Height*Sin(TAngle)))
	RHeight := Ceil(Abs(Width*Sin(TAngle))+Abs(Height*Cos(Tangle)))
}

; RotateNoneFlipNone   = 0
; Rotate90FlipNone     = 1
; Rotate180FlipNone    = 2
; Rotate270FlipNone    = 3
; RotateNoneFlipX      = 4
; Rotate90FlipX        = 5
; Rotate180FlipX       = 6
; Rotate270FlipX       = 7
; RotateNoneFlipY      = Rotate180FlipX
; Rotate90FlipY        = Rotate270FlipX
; Rotate180FlipY       = RotateNoneFlipX
; Rotate270FlipY       = Rotate90FlipX
; RotateNoneFlipXY     = Rotate180FlipNone
; Rotate90FlipXY       = Rotate270FlipNone
; Rotate180FlipXY      = RotateNoneFlipNone
; Rotate270FlipXY      = Rotate90FlipNone 

Gdip_ImageRotateFlip(pBitmap, RotateFlipType=1)
{
	return DllCall("gdiplus\GdipImageRotateFlip", "uint", pBitmap, "int", RotateFlipType)
}

; Replace = 0
; Intersect = 1
; Union = 2
; Xor = 3
; Exclude = 4
; Complement = 5
Gdip_SetClipRect(pGraphics, x, y, w, h, CombineMode=0)
{
   return DllCall("gdiplus\GdipSetClipRect", "uint", pGraphics, "float", x, "float", y, "float", w, "float", h, "int", CombineMode)
}

Gdip_SetClipPath(pGraphics, Path, CombineMode=0)
{
   return DllCall("gdiplus\GdipSetClipPath", "uint", pGraphics, "uint", Path, "int", CombineMode)
}

Gdip_ResetClip(pGraphics)
{
   return DllCall("gdiplus\GdipResetClip", "uint", pGraphics)
}

Gdip_GetClipRegion(pGraphics)
{
	Region := Gdip_CreateRegion()
	DllCall("gdiplus\GdipGetClip", "uint" pGraphics, "uint*", Region)
	return Region
}

Gdip_SetClipRegion(pGraphics, Region, CombineMode=0)
{
	return DllCall("gdiplus\GdipSetClipRegion", "uint", pGraphics, "uint", Region, "int", CombineMode)
}

Gdip_CreateRegion()
{
	DllCall("gdiplus\GdipCreateRegion", "uint*", Region)
	return Region
}

Gdip_DeleteRegion(Region)
{
	return DllCall("gdiplus\GdipDeleteRegion", "uint", Region)
}

;#####################################################################################
; BitmapLockBits
;#####################################################################################

Gdip_LockBits(pBitmap, x, y, w, h, ByRef Stride, ByRef Scan0, ByRef BitmapData, LockMode = 3, PixelFormat = 0x26200a)
{   
	CreateRect(Rect, x, y, w, h)
	VarSetCapacity(BitmapData, 21, 0)
	E := DllCall("Gdiplus\GdipBitmapLockBits", "uint", pBitmap, "uint", &Rect, "uint", LockMode, "int", PixelFormat, "uint", &BitmapData)
	Stride := NumGet(BitmapData, 8)
	Scan0 := NumGet(BitmapData, 16)
	return E
}

;#####################################################################################

Gdip_UnlockBits(pBitmap, ByRef BitmapData)
{
	return DllCall("Gdiplus\GdipBitmapUnlockBits", "uint", pBitmap, "uint", &BitmapData)
}

;#####################################################################################

Gdip_SetLockBitPixel(ARGB, Scan0, x, y, Stride)
{
	Numput(ARGB, Scan0+0, (x*4)+(y*Stride))
}

;#####################################################################################

Gdip_GetLockBitPixel(Scan0, x, y, Stride)
{
	return NumGet(Scan0+0, (x*4)+(y*Stride))
}

;#####################################################################################

Gdip_PixelateBitmap(pBitmap, ByRef pBitmapOut, BlockSize)
{
	static PixelateBitmap
	if !PixelateBitmap
	{
		MCode_PixelateBitmap := "83EC388B4424485355568B74245C99F7FE8B5C244C8B6C2448578BF88BCA894C241C897C243485FF0F8E2E0300008B44245"
		. "499F7FE897C24448944242833C089542418894424308944242CEB038D490033FF397C2428897C24380F8E750100008BCE0FAFCE894C24408DA4240000"
		. "000033C03BF08944241089442460894424580F8E8A0000008B5C242C8D4D028BD52BD183C203895424208D3CBB0FAFFE8BD52BD142895424248BD52BD"
		. "103F9897C24148974243C8BCF8BFE8DA424000000008B5C24200FB61C0B03C30FB619015C24588B5C24240FB61C0B015C24600FB61C11015C241083C1"
		. "0483EF0175D38B7C2414037C245C836C243C01897C241475B58B7C24388B6C244C8B5C24508B4C244099F7F9894424148B44245899F7F9894424588B4"
		. "4246099F7F9894424608B44241099F7F98944241085F60F8E820000008D4B028BC32BC18D68038B44242C8D04B80FAFC68BD32BD142895424248BD32B"
		. "D103C18944243C89742420EB038D49008BC88BFE0FB64424148B5C24248804290FB644245888010FB644246088040B0FB644241088040A83C10483EF0"
		. "175D58B44243C0344245C836C2420018944243C75BE8B4C24408B5C24508B6C244C8B7C2438473B7C2428897C24380F8C9FFEFFFF8B4C241C33D23954"
		. "24180F846401000033C03BF2895424108954246089542458895424148944243C0F8E82000000EB0233D2395424187E6F8B4C243003C80FAF4C245C8B4"
		. "424280FAFC68D550203CA8D0C818BC52BC283C003894424208BC52BC2408BFD2BFA8B54241889442424895424408B4424200FB614080FB60101542414"
		. "8B542424014424580FB6040A0FB61439014424600154241083C104836C24400175CF8B44243C403BC68944243C7C808B4C24188B4424140FAFCE99F7F"
		. "9894424148B44245899F7F9894424588B44246099F7F9894424608B44241099F7F98944241033C08944243C85F60F8E7F000000837C2418007E6F8B4C"
		. "243003C80FAF4C245C8B4424280FAFC68D530203CA8D0C818BC32BC283C003894424208BC32BC2408BFB2BFA8B54241889442424895424400FB644241"
		. "48B5424208804110FB64424580FB654246088018B4424248814010FB654241088143983C104836C24400175CF8B44243C403BC68944243C7C818B4C24"
		. "1C8B44245C0144242C01742430836C2444010F85F4FCFFFF8B44245499F7FE895424188944242885C00F8E890100008BF90FAFFE33D2897C243C89542"
		. "45489442438EB0233D233C03BCA89542410895424608954245889542414894424400F8E840000003BF27E738B4C24340FAFCE03C80FAF4C245C034C24"
		. "548D55028BC52BC283C003894424208BC52BC2408BFD03CA894424242BFA89742444908B5424200FB6040A0FB611014424148B442424015424580FB61"
		. "4080FB6040F015424600144241083C104836C24440175CF8B4424408B7C243C8B4C241C33D2403BC1894424400F8C7CFFFFFF8B44241499F7FF894424"
		. "148B44245899F7FF894424588B44246099F7FF894424608B44241099F7FF8944241033C08944244085C90F8E8000000085F67E738B4C24340FAFCE03C"
		. "80FAF4C245C034C24548D53028BC32BC283C003894424208BC32BC2408BFB03CA894424242BFA897424448D49000FB65424148B4424208814010FB654"
		. "24580FB644246088118B5424248804110FB644241088043983C104836C24440175CF8B4424408B7C243C8B4C241C403BC1894424407C808D04B500000"
		. "00001442454836C2438010F858CFEFFFF33D233C03BCA89542410895424608954245889542414894424440F8E9A000000EB048BFF33D2395424180F8E"
		. "7D0000008B4C24340FAFCE03C80FAF4C245C8B4424280FAFC68D550203CA8D0C818BC52BC283C003894424208BC52BC240894424248BC52BC28B54241"
		. "8895424548DA424000000008B5424200FB6140A015424140FB611015424588B5424240FB6140A015424600FB614010154241083C104836C24540175CF"
		. "8B4424448B4C241C403BC1894424440F8C6AFFFFFF0FAF4C24188B44241499F7F9894424148B44245899F7F9894424588B44246099F7F9894424608B4"
		. "4241099F7F98944241033C03944241C894424540F8E7B0000008B7C241885FF7E688B4C24340FAFCE03C80FAF4C245C8B4424280FAFC68D530203CA8D"
		. "0C818BC32BC283C003894424208BC32BC2408BEB894424242BEA0FB65424148B4424208814010FB65424580FB644246088118B5424248804110FB6442"
		. "41088042983C10483EF0175D18B442454403B44241C894424547C855F5E5D33C05B83C438C3"
		VarSetCapacity(PixelateBitmap, StrLen(MCode_PixelateBitmap)//2)
		Loop % StrLen(MCode_PixelateBitmap)//2		;%
			NumPut("0x" SubStr(MCode_PixelateBitmap, (2*A_Index)-1, 2), PixelateBitmap, A_Index-1, "char")
	}

	Gdip_GetImageDimensions(pBitmap, Width, Height)
	if (Width != Gdip_GetImageWidth(pBitmapOut) || Height != Gdip_GetImageHeight(pBitmapOut))
		return -1
	if (BlockSize > Width || BlockSize > Height)
		return -2

	E1 := Gdip_LockBits(pBitmap, 0, 0, Width, Height, Stride1, Scan01, BitmapData1)
	E2 := Gdip_LockBits(pBitmapOut, 0, 0, Width, Height, Stride2, Scan02, BitmapData2)
	if (E1 || E2)
		return -3

	E := DllCall(&PixelateBitmap, "uint", Scan01, "uint", Scan02, "int", Width, "int", Height, "int", Stride1, "int", BlockSize)
	Gdip_UnlockBits(pBitmap, BitmapData1), Gdip_UnlockBits(pBitmapOut, BitmapData2)
	return 0
}

;#####################################################################################

Gdip_ToARGB(A, R, G, B)
{
	return (A << 24) | (R << 16) | (G << 8) | B
}

;#####################################################################################

Gdip_FromARGB(ARGB, ByRef A, ByRef R, ByRef G, ByRef B)
{
	A := (0xff000000 & ARGB) >> 24
	R := (0x00ff0000 & ARGB) >> 16
	G := (0x0000ff00 & ARGB) >> 8
	B := 0x000000ff & ARGB
}

;#####################################################################################

Gdip_AFromARGB(ARGB)
{
	return (0xff000000 & ARGB) >> 24
}

;#####################################################################################

Gdip_RFromARGB(ARGB)
{
	return (0x00ff0000 & ARGB) >> 16
}

;#####################################################################################

Gdip_GFromARGB(ARGB)
{
	return (0x0000ff00 & ARGB) >> 8
}

;#####################################################################################

Gdip_BFromARGB(ARGB)
{
	return 0x000000ff & ARGB
}
;---------------------gdip end--------------------------------------
;---------------------gdip image search start--------------------------------------
GImageSearch(ByRef x, ByRef y, path, errorRange, trans = "", sX = 0, sY = 0, eX = 0, eY = 0) {
	WinGet,hwnd,ID, BlueStacks App Player
	
	IfNotExist, %path%
	{
		log := "  @ 이미지 없음: " path
		AddLog(log)
		
		return false
	}
	
	if(trans = "BLACK")
		gTransparent	:= "0"
	else if(trans = "WHITE")
		gTransparent	:= "0xFFFFFF"
	else
		gTransparent	:= ""
	
	gToken	:= Gdip_Startup() 
	gScreen	:= Gdip_BitmapFromHWND(hwnd) 
	gSearch	:= Gdip_CreateBitmapFromFile(path)
	result	:= Gdip_ImageSearch(gScreen, gSearch, pLIST, sX, sY, eX, eY, errorRange, gTransparent)
	
	Gdip_DisposeImage(gScreen)
	Gdip_DisposeImage(gSearch)
	Gdip_Shutdown(gToken)
	
	AddLog(path)
	
	if (result) {
		StringSplit, LISTArray, pLIST, `,
		x := LISTArray1
		y := LISTArray2
		
		return true
	} else {
		return false
	}
}

;**********************************************************************************
;
; Gdip_ImageSearch()
; by MasterFocus - 02/APRIL/2013 00:30h BRT
; Thanks to guest3456 for helping me ponder some ideas
; Requires GDIP, Gdip_SetBitmapTransColor() and Gdip_MultiLockedBitsSearch()
; http://www.autohotkey.com/board/topic/71100-gdip-imagesearch/
;
; Licensed under CC BY-SA 3.0 -> http://creativecommons.org/licenses/by-sa/3.0/
; I waive compliance with the "Share Alike" condition of the license EXCLUSIVELY
; for these users: tic , Rseding91 , guest3456
;
;==================================================================================
;
; This function searches for pBitmapNeedle within pBitmapHaystack
; The returned value is the number of instances found (negative = error)
;
; ++ PARAMETERS ++
;
; pBitmapHaystack and pBitmapNeedle
;   Self-explanatory bitmap pointers, are the only required parameters
;
; OutputList
;   ByRef variable to store the list of coordinates where a match was found
;
; OuterX1, OuterY1, OuterX2, OuterY2
;   Equivalent to ImageSearch's X1,Y1,X2,Y2
;   Default: 0 for all (which searches the whole haystack area)
;
; Variation
;   Just like ImageSearch, a value from 0 to 255
;   Default: 0
;
; Trans
;   Needle RGB transparent color, should be a numerical value from 0 to 0xFFFFFF
;   Default: blank (does not use transparency)
;
; SearchDirection
;   Haystack search direction
;     Vertical preference:
;       1 = top->left->right->bottom [default]
;       2 = bottom->left->right->top
;       3 = bottom->right->left->top
;       4 = top->right->left->bottom
;     Horizontal preference:
;       5 = left->top->bottom->right
;       6 = left->bottom->top->right
;       7 = right->bottom->top->left
;       8 = right->top->bottom->left
;
; Instances
;   Maximum number of instances to find when searching (0 = find all)
;   Default: 1 (stops after one match is found)
;
; LineDelim and CoordDelim
;   Outer and inner delimiters for the list of coordinates (OutputList)
;   Defaults: "`n" and ","
;
; ++ RETURN VALUES ++
;
; -1001 ==> invalid haystack and/or needle bitmap pointer
; -1002 ==> invalid variation value
; -1003 ==> X1 and Y1 cannot be negative
; -1004 ==> unable to lock haystack bitmap bits
; -1005 ==> unable to lock needle bitmap bits
; any non-negative value ==> the number of instances found
;
;==================================================================================
;
;**********************************************************************************

Gdip_ImageSearch(pBitmapHaystack, pBitmapNeedle, ByRef OutputList="", OuterX1=0, OuterY1=0, OuterX2=0, OuterY2=0, Variation=0, Trans="", SearchDirection=1, Instances=1, LineDelim="`n", CoordDelim=",") {

    ; Some validations that can be done before proceeding any further
    If !( pBitmapHaystack && pBitmapNeedle )
        Return -1001
    If Variation not between 0 and 255
        return -1002
    If ( ( OuterX1 < 0 ) || ( OuterY1 < 0 ) )
        return -1003
    If SearchDirection not between 1 and 8
        SearchDirection := 1
    If ( Instances < 0 )
        Instances := 0

    ; Getting the dimensions and locking the bits [haystack]
    Gdip_GetImageDimensions(pBitmapHaystack,hWidth,hHeight)
    ; Last parameter being 1 says the LockMode flag is "READ only"
    If Gdip_LockBits(pBitmapHaystack,0,0,hWidth,hHeight,hStride,hScan,hBitmapData,1)
    OR !(hWidth := NumGet(hBitmapData,0))
    OR !(hHeight := NumGet(hBitmapData,4))
        Return -1004

    ; Careful! From this point on, we must do the following before returning:
    ; - unlock haystack bits

    ; Getting the dimensions and locking the bits [needle]
    Gdip_GetImageDimensions(pBitmapNeedle,nWidth,nHeight)
    ; If Trans is correctly specified, create a backup of the original needle bitmap
    ; and modify the current one, setting the desired color as transparent.
    ; Also, since a copy is created, we must remember to dispose the new bitmap later.
    ; This whole thing has to be done before locking the bits.
    If Trans between 0 and 0xFFFFFF
    {
        pOriginalBmpNeedle := pBitmapNeedle
        pBitmapNeedle := Gdip_CloneBitmapArea(pOriginalBmpNeedle,0,0,nWidth,nHeight)
        Gdip_SetBitmapTransColor(pBitmapNeedle,Trans)
        DumpCurrentNeedle := true
    }

    ; Careful! From this point on, we must do the following before returning:
    ; - unlock haystack bits
    ; - dispose current needle bitmap (if necessary)

    If Gdip_LockBits(pBitmapNeedle,0,0,nWidth,nHeight,nStride,nScan,nBitmapData)
    OR !(nWidth := NumGet(nBitmapData,0))
    OR !(nHeight := NumGet(nBitmapData,4))
    {
        If ( DumpCurrentNeedle )
            Gdip_DisposeImage(pBitmapNeedle)
        Gdip_UnlockBits(pBitmapHaystack,hBitmapData)
        Return -1005
    }
    
    ; Careful! From this point on, we must do the following before returning:
    ; - unlock haystack bits
    ; - unlock needle bits
    ; - dispose current needle bitmap (if necessary)

    ; Adjust the search box. "OuterX2,OuterY2" will be the last pixel evaluated
    ; as possibly matching with the needle's first pixel. So, we must avoid going
    ; beyond this maximum final coordinate.
    OuterX2 := ( !OuterX2 ? hWidth-nWidth+1 : OuterX2-nWidth+1 )
    OuterY2 := ( !OuterY2 ? hHeight-nHeight+1 : OuterY2-nHeight+1 )

    OutputCount := Gdip_MultiLockedBitsSearch(hStride,hScan,hWidth,hHeight,nStride,nScan,nWidth,nHeight,OutputList,OuterX1,OuterY1,OuterX2,OuterY2,Variation,SearchDirection,Instances,LineDelim,CoordDelim)

    Gdip_UnlockBits(pBitmapHaystack,hBitmapData)
    Gdip_UnlockBits(pBitmapNeedle,nBitmapData)
	
    If ( DumpCurrentNeedle )
        Gdip_DisposeImage(pBitmapNeedle)

    Return OutputCount
}

;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

;**********************************************************************************
;
; Gdip_SetBitmapTransColor()
; by MasterFocus - 02/APRIL/2013 00:30h BRT
; Requires GDIP
; http://www.autohotkey.com/board/topic/71100-gdip-imagesearch/
;
; Licensed under CC BY-SA 3.0 -> http://creativecommons.org/licenses/by-sa/3.0/
; I waive compliance with the "Share Alike" condition of the license EXCLUSIVELY
; for these users: tic , Rseding91 , guest3456
;
;**********************************************************************************

;==================================================================================
;
; This function modifies the Alpha component for all pixels of a certain color to 0
; The returned value is 0 in case of success, or a negative number otherwise
;
; ++ PARAMETERS ++
;
; pBitmap
;   A valid pointer to the bitmap that will be modified
;
; TransColor
;   The color to become transparent
;   Should range from 0 (black) to 0xFFFFFF (white)
;
; ++ RETURN VALUES ++
;
; -2001 ==> invalid bitmap pointer
; -2002 ==> invalid TransColor
; -2003 ==> unable to retrieve bitmap positive dimensions
; -2004 ==> unable to lock bitmap bits
; -2005 ==> DllCall failed (see ErrorLevel)
; any non-negative value ==> the number of pixels modified by this function
;
;==================================================================================

Gdip_SetBitmapTransColor(pBitmap,TransColor) {
    static _SetBmpTrans, Ptr, PtrA
    if !( _SetBmpTrans ) {
        Ptr := A_PtrSize ? "UPtr" : "UInt"
        PtrA := Ptr . "*"
        MCode_SetBmpTrans := "
            (LTrim Join
            8b44240c558b6c241cc745000000000085c07e77538b5c2410568b74242033c9578b7c2414894c24288da424000000
            0085db7e458bc18d1439b9020000008bff8a0c113a4e0275178a4c38013a4e01750e8a0a3a0e7508c644380300ff450083c0
            0483c204b9020000004b75d38b4c24288b44241c8b5c2418034c242048894c24288944241c75a85f5e5b33c05dc3,405
            34c8b5424388bda41c702000000004585c07e6448897c2410458bd84c8b4424304963f94c8d49010f1f800000000085db7e3
            8498bc1488bd3660f1f440000410fb648023848017519410fb6480138087510410fb6083848ff7507c640020041ff024883c
            00448ffca75d44c03cf49ffcb75bc488b7c241033c05bc3
            )"
        if ( A_PtrSize == 8 ) ; x64, after comma
            MCode_SetBmpTrans := SubStr(MCode_SetBmpTrans,InStr(MCode_SetBmpTrans,",")+1)
        else ; x86, before comma
            MCode_SetBmpTrans := SubStr(MCode_SetBmpTrans,1,InStr(MCode_SetBmpTrans,",")-1)
        VarSetCapacity(_SetBmpTrans, LEN := StrLen(MCode_SetBmpTrans)//2, 0)
        Loop, %LEN%
            NumPut("0x" . SubStr(MCode_SetBmpTrans,(2*A_Index)-1,2), _SetBmpTrans, A_Index-1, "uchar")
        MCode_SetBmpTrans := ""
        DllCall("VirtualProtect", Ptr,&_SetBmpTrans, Ptr,VarSetCapacity(_SetBmpTrans), "uint",0x40, PtrA,0)
    }
    If !pBitmap
        Return -2001
    If TransColor not between 0 and 0xFFFFFF
        Return -2002
    Gdip_GetImageDimensions(pBitmap,W,H)
    If !(W && H)
        Return -2003
    If Gdip_LockBits(pBitmap,0,0,W,H,Stride,Scan,BitmapData)
        Return -2004
    ; The following code should be slower than using the MCode approach,
    ; but will the kept here for now, just for reference.
    /*
    Count := 0
    Loop, %H% {
        Y := A_Index-1
        Loop, %W% {
            X := A_Index-1
            CurrentColor := Gdip_GetLockBitPixel(Scan,X,Y,Stride)
            If ( (CurrentColor & 0xFFFFFF) == TransColor )
                Gdip_SetLockBitPixel(TransColor,Scan,X,Y,Stride), Count++
        }
    }
    */
    ; Thanks guest3456 for helping with the initial solution involving NumPut
    Gdip_FromARGB(TransColor,A,R,G,B), VarSetCapacity(TransColor,0), VarSetCapacity(TransColor,3,255)
    NumPut(B,TransColor,0,"UChar"), NumPut(G,TransColor,1,"UChar"), NumPut(R,TransColor,2,"UChar")
    MCount := 0
    E := DllCall(&_SetBmpTrans, Ptr,Scan, "int",W, "int",H, "int",Stride, Ptr,&TransColor, "int*",MCount, "cdecl int")
    Gdip_UnlockBits(pBitmap,BitmapData)
    If ( E != 0 ) {
        ErrorLevel := E
        Return -2005
    }
    Return MCount
}

;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

;**********************************************************************************
;
; Gdip_MultiLockedBitsSearch()
; by MasterFocus - 24/MARCH/2013 06:20h BRT
; Requires GDIP and Gdip_LockedBitsSearch()
; http://www.autohotkey.com/board/topic/71100-gdip-imagesearch/
;
; Licensed under CC BY-SA 3.0 -> http://creativecommons.org/licenses/by-sa/3.0/
; I waive compliance with the "Share Alike" condition of the license EXCLUSIVELY
; for these users: tic , Rseding91 , guest3456
;
;**********************************************************************************

;==================================================================================
;
; This function returns the number of instances found
; The 8 first parameters are the same as in Gdip_LockedBitsSearch()
; The other 10 parameters are the same as in Gdip_ImageSearch()
; Note: the default for the Intances parameter here is 0 (find all matches)
;
;==================================================================================

Gdip_MultiLockedBitsSearch(hStride,hScan,hWidth,hHeight,nStride,nScan,nWidth,nHeight
,ByRef OutputList="",OuterX1=0,OuterY1=0,OuterX2=0,OuterY2=0,Variation=0
,SearchDirection=1,Instances=0,LineDelim="`n",CoordDelim=",")
{
    OutputList := ""
    OutputCount := !Instances
    InnerX1 := OuterX1 , InnerY1 := OuterY1
    InnerX2 := OuterX2 , InnerY2 := OuterY2

    ; The following part is a rather ugly but working hack that I
    ; came up with to adjust the variables and their increments
    ; according to the specified Haystack Search Direction
    /*
    Mod(SD,4) = 0 --> iX = 2 , stepX = +0 , iY = 1 , stepY = +1
    Mod(SD,4) = 1 --> iX = 1 , stepX = +1 , iY = 1 , stepY = +1
    Mod(SD,4) = 2 --> iX = 1 , stepX = +1 , iY = 2 , stepY = +0
    Mod(SD,4) = 3 --> iX = 2 , stepX = +0 , iY = 2 , stepY = +0
    SD <= 4   ------> Vertical preference
    SD > 4    ------> Horizontal preference
    */
    ; Set the index and the step (for both X and Y) to +1
    iX := 1, stepX := 1, iY := 1, stepY := 1
    ; Adjust Y variables if SD is 2, 3, 6 or 7
    Modulo := Mod(SearchDirection,4)
    If ( Modulo > 1 )
        iY := 2, stepY := 0
    ; adjust X variables if SD is 3, 4, 7 or 8
    If !Mod(Modulo,3)
        iX := 2, stepX := 0
    ; Set default Preference to vertical and Nonpreference to horizontal
    P := "Y", N := "X"
    ; adjust Preference and Nonpreference if SD is 5, 6, 7 or 8
    If ( SearchDirection > 4 )
        P := "X", N := "Y"
    ; Set the Preference Index and the Nonpreference Index
    iP := i%P%, iN := i%N%

    While (!(OutputCount == Instances) && (0 == Gdip_LockedBitsSearch(hStride,hScan,hWidth,hHeight,nStride
    ,nScan,nWidth,nHeight,FoundX,FoundY,OuterX1,OuterY1,OuterX2,OuterY2,Variation,SearchDirection)))
    {
        OutputCount++
        OutputList .= LineDelim FoundX CoordDelim FoundY
        Outer%P%%iP% := Found%P%+step%P%
        Inner%N%%iN% := Found%N%+step%N%
        Inner%P%1 := Found%P%
        Inner%P%2 := Found%P%+1
        While (!(OutputCount == Instances) && (0 == Gdip_LockedBitsSearch(hStride,hScan,hWidth,hHeight,nStride
        ,nScan,nWidth,nHeight,FoundX,FoundY,InnerX1,InnerY1,InnerX2,InnerY2,Variation,SearchDirection)))
        {
            OutputCount++
            OutputList .= LineDelim FoundX CoordDelim FoundY
            Inner%N%%iN% := Found%N%+step%N%
        }
    }
    OutputList := SubStr(OutputList,1+StrLen(LineDelim))
    OutputCount -= !Instances
    Return OutputCount
}

;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

;**********************************************************************************
;
; Gdip_LockedBitsSearch()
; by MasterFocus - 24/MARCH/2013 06:20h BRT
; Mostly adapted from previous work by tic and Rseding91
;
; Requires GDIP
; http://www.autohotkey.com/board/topic/71100-gdip-imagesearch/
;
; Licensed under CC BY-SA 3.0 -> http://creativecommons.org/licenses/by-sa/3.0/
; I waive compliance with the "Share Alike" condition of the license EXCLUSIVELY
; for these users: tic , Rseding91 , guest3456
;
;**********************************************************************************

;==================================================================================
;
; This function searches for a single match of nScan within hScan
;
; ++ PARAMETERS ++
;
; hStride, hScan, hWidth and hHeight
;   Haystack stuff, extracted from a BitmapData, extracted from a Bitmap
;
; nStride, nScan, nWidth and nHeight
;   Needle stuff, extracted from a BitmapData, extracted from a Bitmap
;
; x and y
;   ByRef variables to store the X and Y coordinates of the image if it's found
;   Default: "" for both
;
; sx1, sy1, sx2 and sy2
;   These can be used to crop the search area within the haystack
;   Default: "" for all (does not crop)
;
; Variation
;   Same as the builtin ImageSearch command
;   Default: 0
;
; sd
;   Haystack search direction
;     Vertical preference:
;       1 = top->left->right->bottom [default]
;       2 = bottom->left->right->top
;       3 = bottom->right->left->top
;       4 = top->right->left->bottom
;     Horizontal preference:
;       5 = left->top->bottom->right
;       6 = left->bottom->top->right
;       7 = right->bottom->top->left
;       8 = right->top->bottom->left
;   This value is passed to the internal MCoded function
;
; ++ RETURN VALUES ++
;
; -3001 to -3006 ==> search area incorrectly defined
; -3007 ==> DllCall returned blank
; 0 ==> DllCall succeeded and a match was found
; -4001 ==> DllCall succeeded but a match was not found
; anything else ==> the error value returned by the unsuccessful DllCall
;
;==================================================================================

Gdip_LockedBitsSearch(hStride,hScan,hWidth,hHeight,nStride,nScan,nWidth,nHeight
,ByRef x="",ByRef y="",sx1=0,sy1=0,sx2=0,sy2=0,Variation=0,sd=1)
{
    static _ImageSearch, Ptr, PtrA

    ; Initialize all MCode stuff, if necessary
    if !( _ImageSearch ) {
        Ptr := A_PtrSize ? "UPtr" : "UInt"
        PtrA := Ptr . "*"

        MCode_ImageSearch := "
            (LTrim Join
            8b44243883ec205355565783f8010f857a0100008b7c2458897c24143b7c24600f8db50b00008b44244c8b5c245c8b
            4c24448b7424548be80fafef896c242490897424683bf30f8d0a0100008d64240033c033db8bf5896c241c895c2420894424
            183b4424480f8d0401000033c08944241085c90f8e9d0000008b5424688b7c24408beb8d34968b54246403df8d4900b80300
            0000803c18008b442410745e8b44243c0fb67c2f020fb64c06028d04113bf87f792bca3bf97c738b44243c0fb64c06018b44
            24400fb67c28018d04113bf87f5a2bca3bf97c548b44243c0fb63b0fb60c068d04113bf87f422bca3bf97c3c8b4424108b7c
            24408b4c24444083c50483c30483c604894424103bc17c818b5c24208b74241c0374244c8b44241840035c24508974241ce9
            2dffffff8b6c24688b5c245c8b4c244445896c24683beb8b6c24240f8c06ffffff8b44244c8b7c24148b7424544703e8897c
            2414896c24243b7c24600f8cd5feffffe96b0a00008b4424348b4c246889088b4424388b4c24145f5e5d890833c05b83c420
            c383f8020f85870100008b7c24604f897c24103b7c24580f8c310a00008b44244c8b5c245c8b4c24448bef0fafe8f7d88944
            24188b4424548b742418896c24288d4900894424683bc30f8d0a0100008d64240033c033db8bf5896c2420895c241c894424
            243b4424480f8d0401000033c08944241485c90f8e9d0000008b5424688b7c24408beb8d34968b54246403df8d4900b80300
            0000803c03008b442414745e8b44243c0fb67c2f020fb64c06028d04113bf87f792bca3bf97c738b44243c0fb64c06018b44
            24400fb67c28018d04113bf87f5a2bca3bf97c548b44243c0fb63b0fb60c068d04113bf87f422bca3bf97c3c8b4424148b7c
            24408b4c24444083c50483c30483c604894424143bc17c818b5c241c8b7424200374244c8b44242440035c245089742420e9
            2dffffff8b6c24688b5c245c8b4c244445896c24683beb8b6c24280f8c06ffffff8b7c24108b4424548b7424184f03ee897c
            2410896c24283b7c24580f8dd5feffffe9db0800008b4424348b4c246889088b4424388b4c24105f5e5d890833c05b83c420
            c383f8030f85650100008b7c24604f897c24103b7c24580f8ca10800008b44244c8b6c245c8b5c24548b4c24448bf70faff0
            4df7d8896c242c897424188944241c8bff896c24683beb0f8c020100008d64240033c033db89742424895c2420894424283b
            4424480f8d76ffffff33c08944241485c90f8e9f0000008b5424688b7c24408beb8d34968b54246403dfeb038d4900b80300
            0000803c03008b442414745e8b44243c0fb67c2f020fb64c06028d04113bf87f752bca3bf97c6f8b44243c0fb64c06018b44
            24400fb67c28018d04113bf87f562bca3bf97c508b44243c0fb63b0fb60c068d04113bf87f3e2bca3bf97c388b4424148b7c
            24408b4c24444083c50483c30483c604894424143bc17c818b5c24208b7424248b4424280374244c40035c2450e92bffffff
            8b6c24688b5c24548b4c24448b7424184d896c24683beb0f8d0affffff8b7c24108b44241c4f03f0897c2410897424183b7c
            24580f8c580700008b6c242ce9d4feffff83f8040f85670100008b7c2458897c24103b7c24600f8d340700008b44244c8b6c
            245c8b5c24548b4c24444d8bf00faff7896c242c8974241ceb098da424000000008bff896c24683beb0f8c020100008d6424
            0033c033db89742424895c2420894424283b4424480f8d06feffff33c08944241485c90f8e9f0000008b5424688b7c24408b
            eb8d34968b54246403dfeb038d4900b803000000803c03008b442414745e8b44243c0fb67c2f020fb64c06028d04113bf87f
            752bca3bf97c6f8b44243c0fb64c06018b4424400fb67c28018d04113bf87f562bca3bf97c508b44243c0fb63b0fb60c068d
            04113bf87f3e2bca3bf97c388b4424148b7c24408b4c24444083c50483c30483c604894424143bc17c818b5c24208b742424
            8b4424280374244c40035c2450e92bffffff8b6c24688b5c24548b4c24448b74241c4d896c24683beb0f8d0affffff8b4424
            4c8b7c24104703f0897c24108974241c3b7c24600f8de80500008b6c242ce9d4feffff83f8050f85890100008b7c2454897c
            24683b7c245c0f8dc40500008b5c24608b6c24588b44244c8b4c2444eb078da42400000000896c24103beb0f8d200100008b
            e80faf6c2458896c241c33c033db8bf5896c2424895c2420894424283b4424480f8d0d01000033c08944241485c90f8ea600
            00008b5424688b7c24408beb8d34968b54246403dfeb0a8da424000000008d4900b803000000803c03008b442414745e8b44
            243c0fb67c2f020fb64c06028d04113bf87f792bca3bf97c738b44243c0fb64c06018b4424400fb67c28018d04113bf87f5a
            2bca3bf97c548b44243c0fb63b0fb60c068d04113bf87f422bca3bf97c3c8b4424148b7c24408b4c24444083c50483c30483
            c604894424143bc17c818b5c24208b7424240374244c8b44242840035c245089742424e924ffffff8b7c24108b6c241c8b44
            244c8b5c24608b4c24444703e8897c2410896c241c3bfb0f8cf3feffff8b7c24688b6c245847897c24683b7c245c0f8cc5fe
            ffffe96b0400008b4424348b4c24688b74241089088b4424385f89305e5d33c05b83c420c383f8060f85670100008b7c2454
            897c24683b7c245c0f8d320400008b6c24608b5c24588b44244c8b4c24444d896c24188bff896c24103beb0f8c1a0100008b
            f50faff0f7d88974241c8944242ceb038d490033c033db89742424895c2420894424283b4424480f8d06fbffff33c0894424
            1485c90f8e9f0000008b5424688b7c24408beb8d34968b54246403dfeb038d4900b803000000803c03008b442414745e8b44
            243c0fb67c2f020fb64c06028d04113bf87f752bca3bf97c6f8b44243c0fb64c06018b4424400fb67c28018d04113bf87f56
            2bca3bf97c508b44243c0fb63b0fb60c068d04113bf87f3e2bca3bf97c388b4424148b7c24408b4c24444083c50483c30483
            c604894424143bc17c818b5c24208b7424248b4424280374244c40035c2450e92bffffff8b6c24108b74241c0374242c8b5c
            24588b4c24444d896c24108974241c3beb0f8d02ffffff8b44244c8b7c246847897c24683b7c245c0f8de60200008b6c2418
            e9c2feffff83f8070f85670100008b7c245c4f897c24683b7c24540f8cc10200008b6c24608b5c24588b44244c8b4c24444d
            896c241890896c24103beb0f8c1a0100008bf50faff0f7d88974241c8944242ceb038d490033c033db89742424895c242089
            4424283b4424480f8d96f9ffff33c08944241485c90f8e9f0000008b5424688b7c24408beb8d34968b54246403dfeb038d49
            00b803000000803c18008b442414745e8b44243c0fb67c2f020fb64c06028d04113bf87f752bca3bf97c6f8b44243c0fb64c
            06018b4424400fb67c28018d04113bf87f562bca3bf97c508b44243c0fb63b0fb60c068d04113bf87f3e2bca3bf97c388b44
            24148b7c24408b4c24444083c50483c30483c604894424143bc17c818b5c24208b7424248b4424280374244c40035c2450e9
            2bffffff8b6c24108b74241c0374242c8b5c24588b4c24444d896c24108974241c3beb0f8d02ffffff8b44244c8b7c24684f
            897c24683b7c24540f8c760100008b6c2418e9c2feffff83f8080f85640100008b7c245c4f897c24683b7c24540f8c510100
            008b5c24608b6c24588b44244c8b4c24448d9b00000000896c24103beb0f8d200100008be80faf6c2458896c241c33c033db
            8bf5896c2424895c2420894424283b4424480f8d9dfcffff33c08944241485c90f8ea60000008b5424688b7c24408beb8d34
            968b54246403dfeb0a8da424000000008d4900b803000000803c03008b442414745e8b44243c0fb67c2f020fb64c06028d04
            113bf87f792bca3bf97c738b44243c0fb64c06018b4424400fb67c28018d04113bf87f5a2bca3bf97c548b44243c0fb63b0f
            b604068d0c103bf97f422bc23bf87c3c8b4424148b7c24408b4c24444083c50483c30483c604894424143bc17c818b5c2420
            8b7424240374244c8b44242840035c245089742424e924ffffff8b7c24108b6c241c8b44244c8b5c24608b4c24444703e889
            7c2410896c241c3bfb0f8cf3feffff8b7c24688b6c24584f897c24683b7c24540f8dc5feffff8b4424345fc700ffffffff8b
            4424345e5dc700ffffffffb85ff0ffff5b83c420c3,4c894c24204c89442418488954241048894c24085355565741544
            155415641574883ec188b8424c80000004d8bd94d8bd0488bda83f8010f85b3010000448b8c24a800000044890c24443b8c2
            4b80000000f8d66010000448bac24900000008b9424c0000000448b8424b00000008bbc2480000000448b9424a0000000418
            bcd410fafc9894c24040f1f84000000000044899424c8000000453bd00f8dfb000000468d2495000000000f1f80000000003
            3ed448bf933f6660f1f8400000000003bac24880000000f8d1701000033db85ff7e7e458bf4448bce442bf64503f7904d63c
            14d03c34180780300745a450fb65002438d040e4c63d84c035c2470410fb64b028d0411443bd07f572bca443bd17c50410fb
            64b01450fb650018d0411443bd07f3e2bca443bd17c37410fb60b450fb6108d0411443bd07f272bca443bd17c204c8b5c247
            8ffc34183c1043bdf7c8fffc54503fd03b42498000000e95effffff8b8424c8000000448b8424b00000008b4c24044c8b5c2
            478ffc04183c404898424c8000000413bc00f8c20ffffff448b0c24448b9424a000000041ffc14103cd44890c24894c24044
            43b8c24b80000000f8cd8feffff488b5c2468488b4c2460b85ff0ffffc701ffffffffc703ffffffff4883c418415f415e415
            d415c5f5e5d5bc38b8424c8000000e9860b000083f8020f858c010000448b8c24b800000041ffc944890c24443b8c24a8000
            0007cab448bac2490000000448b8424c00000008b9424b00000008bbc2480000000448b9424a0000000418bc9410fafcd418
            bc5894c2404f7d8894424080f1f400044899424c8000000443bd20f8d02010000468d2495000000000f1f80000000004533f
            6448bf933f60f1f840000000000443bb424880000000f8d56ffffff33db85ff0f8e81000000418bec448bd62bee4103ef496
            3d24903d3807a03007460440fb64a02418d042a4c63d84c035c2470410fb64b02428d0401443bc87f5d412bc8443bc97c554
            10fb64b01440fb64a01428d0401443bc87f42412bc8443bc97c3a410fb60b440fb60a428d0401443bc87f29412bc8443bc97
            c214c8b5c2478ffc34183c2043bdf7c8a41ffc64503fd03b42498000000e955ffffff8b8424c80000008b9424b00000008b4
            c24044c8b5c2478ffc04183c404898424c80000003bc20f8c19ffffff448b0c24448b9424a0000000034c240841ffc9894c2
            40444890c24443b8c24a80000000f8dd0feffffe933feffff83f8030f85c4010000448b8c24b800000041ffc944898c24c80
            00000443b8c24a80000000f8c0efeffff8b842490000000448b9c24b0000000448b8424c00000008bbc248000000041ffcb4
            18bc98bd044895c24080fafc8f7da890c24895424048b9424a0000000448b542404458beb443bda0f8c13010000468d249d0
            000000066660f1f84000000000033ed448bf933f6660f1f8400000000003bac24880000000f8d0801000033db85ff0f8e960
            00000488b4c2478458bf4448bd6442bf64503f70f1f8400000000004963d24803d1807a03007460440fb64a02438d04164c6
            3d84c035c2470410fb64b02428d0401443bc87f63412bc8443bc97c5b410fb64b01440fb64a01428d0401443bc87f48412bc
            8443bc97c40410fb60b440fb60a428d0401443bc87f2f412bc8443bc97c27488b4c2478ffc34183c2043bdf7c8a8b8424900
            00000ffc54403f803b42498000000e942ffffff8b9424a00000008b8424900000008b0c2441ffcd4183ec04443bea0f8d11f
            fffff448b8c24c8000000448b542404448b5c240841ffc94103ca44898c24c8000000890c24443b8c24a80000000f8dc2fef
            fffe983fcffff488b4c24608b8424c8000000448929488b4c2468890133c0e981fcffff83f8040f857f010000448b8c24a80
            0000044890c24443b8c24b80000000f8d48fcffff448bac2490000000448b9424b00000008b9424c0000000448b8424a0000
            0008bbc248000000041ffca418bcd4489542408410fafc9894c2404669044899424c8000000453bd00f8cf8000000468d249
            5000000000f1f800000000033ed448bf933f6660f1f8400000000003bac24880000000f8df7fbffff33db85ff7e7e458bf44
            48bce442bf64503f7904d63c14d03c34180780300745a450fb65002438d040e4c63d84c035c2470410fb64b028d0411443bd
            07f572bca443bd17c50410fb64b01450fb650018d0411443bd07f3e2bca443bd17c37410fb60b450fb6108d0411443bd07f2
            72bca443bd17c204c8b5c2478ffc34183c1043bdf7c8fffc54503fd03b42498000000e95effffff8b8424c8000000448b842
            4a00000008b4c24044c8b5c2478ffc84183ec04898424c8000000413bc00f8d20ffffff448b0c24448b54240841ffc14103c
            d44890c24894c2404443b8c24b80000000f8cdbfeffffe9defaffff83f8050f85ab010000448b8424a000000044890424443
            b8424b00000000f8dc0faffff8b9424c0000000448bac2498000000448ba424900000008bbc2480000000448b8c24a800000
            0428d0c8500000000898c24c800000044894c2404443b8c24b80000000f8d09010000418bc4410fafc18944240833ed448bf
            833f6660f1f8400000000003bac24880000000f8d0501000033db85ff0f8e87000000448bf1448bce442bf64503f74d63c14
            d03c34180780300745d438d040e4c63d84d03da450fb65002410fb64b028d0411443bd07f5f2bca443bd17c58410fb64b014
            50fb650018d0411443bd07f462bca443bd17c3f410fb60b450fb6108d0411443bd07f2f2bca443bd17c284c8b5c24784c8b5
            42470ffc34183c1043bdf7c8c8b8c24c8000000ffc54503fc4103f5e955ffffff448b4424048b4424088b8c24c80000004c8
            b5c24784c8b54247041ffc04103c4448944240489442408443b8424b80000000f8c0effffff448b0424448b8c24a80000004
            1ffc083c10444890424898c24c8000000443b8424b00000000f8cc5feffffe946f9ffff488b4c24608b042489018b4424044
            88b4c2468890133c0e945f9ffff83f8060f85aa010000448b8c24a000000044894c2404443b8c24b00000000f8d0bf9ffff8
            b8424b8000000448b8424c0000000448ba424900000008bbc2480000000428d0c8d00000000ffc88944240c898c24c800000
            06666660f1f840000000000448be83b8424a80000000f8c02010000410fafc4418bd4f7da891424894424084533f6448bf83
            3f60f1f840000000000443bb424880000000f8df900000033db85ff0f8e870000008be9448bd62bee4103ef4963d24903d38
            07a03007460440fb64a02418d042a4c63d84c035c2470410fb64b02428d0401443bc87f64412bc8443bc97c5c410fb64b014
            40fb64a01428d0401443bc87f49412bc8443bc97c41410fb60b440fb60a428d0401443bc87f30412bc8443bc97c284c8b5c2
            478ffc34183c2043bdf7c8a8b8c24c800000041ffc64503fc03b42498000000e94fffffff8b4424088b8c24c80000004c8b5
            c247803042441ffcd89442408443bac24a80000000f8d17ffffff448b4c24048b44240c41ffc183c10444894c2404898c24c
            8000000443b8c24b00000000f8ccefeffffe991f7ffff488b4c24608b4424048901488b4c246833c0448929e992f7ffff83f
            8070f858d010000448b8c24b000000041ffc944894c2404443b8c24a00000000f8c55f7ffff8b8424b8000000448b8424c00
            00000448ba424900000008bbc2480000000428d0c8d00000000ffc8890424898c24c8000000660f1f440000448be83b8424a
            80000000f8c02010000410fafc4418bd4f7da8954240c8944240833ed448bf833f60f1f8400000000003bac24880000000f8
            d4affffff33db85ff0f8e89000000448bf1448bd6442bf64503f74963d24903d3807a03007460440fb64a02438d04164c63d
            84c035c2470410fb64b02428d0401443bc87f63412bc8443bc97c5b410fb64b01440fb64a01428d0401443bc87f48412bc84
            43bc97c40410fb60b440fb60a428d0401443bc87f2f412bc8443bc97c274c8b5c2478ffc34183c2043bdf7c8a8b8c24c8000
            000ffc54503fc03b42498000000e94fffffff8b4424088b8c24c80000004c8b5c24780344240c41ffcd89442408443bac24a
            80000000f8d17ffffff448b4c24048b042441ffc983e90444894c2404898c24c8000000443b8c24a00000000f8dcefeffffe
            9e1f5ffff83f8080f85ddf5ffff448b8424b000000041ffc84489442404443b8424a00000000f8cbff5ffff8b9424c000000
            0448bac2498000000448ba424900000008bbc2480000000448b8c24a8000000428d0c8500000000898c24c800000044890c2
            4443b8c24b80000000f8d08010000418bc4410fafc18944240833ed448bf833f6660f1f8400000000003bac24880000000f8
            d0501000033db85ff0f8e87000000448bf1448bce442bf64503f74d63c14d03c34180780300745d438d040e4c63d84d03da4
            50fb65002410fb64b028d0411443bd07f5f2bca443bd17c58410fb64b01450fb650018d0411443bd07f462bca443bd17c3f4
            10fb603450fb6108d0c10443bd17f2f2bc2443bd07c284c8b5c24784c8b542470ffc34183c1043bdf7c8c8b8c24c8000000f
            fc54503fc4103f5e955ffffff448b04248b4424088b8c24c80000004c8b5c24784c8b54247041ffc04103c44489042489442
            408443b8424b80000000f8c10ffffff448b442404448b8c24a800000041ffc883e9044489442404898c24c8000000443b842
            4a00000000f8dc6feffffe946f4ffff8b442404488b4c246089018b0424488b4c2468890133c0e945f4ffff
            )"
        if ( A_PtrSize == 8 ) ; x64, after comma
            MCode_ImageSearch := SubStr(MCode_ImageSearch,InStr(MCode_ImageSearch,",")+1)
        else ; x86, before comma
            MCode_ImageSearch := SubStr(MCode_ImageSearch,1,InStr(MCode_ImageSearch,",")-1)
        VarSetCapacity(_ImageSearch, LEN := StrLen(MCode_ImageSearch)//2, 0)
        Loop, %LEN%
            NumPut("0x" . SubStr(MCode_ImageSearch,(2*A_Index)-1,2), _ImageSearch, A_Index-1, "uchar")
        MCode_ImageSearch := ""
        DllCall("VirtualProtect", Ptr,&_ImageSearch, Ptr,VarSetCapacity(_ImageSearch), "uint",0x40, PtrA,0)
    }

    ; Abort if an initial coordinates is located before a final coordinate
    If ( sx2 < sx1 )
        return -3001
    If ( sy2 < sy1 )
        return -3002

    ; Check the search box. "sx2,sy2" will be the last pixel evaluated
    ; as possibly matching with the needle's first pixel. So, we must
    ; avoid going beyond this maximum final coordinate.
    If ( sx2 > (hWidth-nWidth+1) )
        return -3003
    If ( sy2 > (hHeight-nHeight+1) )
        return -3004

    ; Abort if the width or height of the search box is 0
    If ( sx2-sx1 == 0 )
        return -3005
    If ( sy2-sy1 == 0 )
        return -3006

    ; The DllCall parameters are the same for easier C code modification,
    ; even though they aren't all used on the _ImageSearch version
    x := 0, y := 0
    , E := DllCall( &_ImageSearch, "int*",x, "int*",y, Ptr,hScan, Ptr,nScan, "int",nWidth, "int",nHeight
    , "int",hStride, "int",nStride, "int",sx1, "int",sy1, "int",sx2, "int",sy2, "int",Variation
    , "int",sd, "cdecl int")
    Return ( E == "" ? -3007 : E )
}
;---------------------gdip image search end--------------------------------------
;---------------------gui start--------------------------------------
{	; Main 
	Gui, W_Main: Add, Progress,     x12  y9   w120  h20 cGreen Range0-100  vProgress, 0
	Gui, W_Main: Add, Text,         x152 y15  w80  h20 +Center vSimpleLog,            <대기 중>
	Gui, W_Main: Add, GroupBox,     x12  y39  w210 h50,                               속도
	Gui, W_Main: Add, Radio,        x22  y59  w60  h20 vSpeedDefault gRadioDefault,   표준
	Gui, W_Main: Add, Radio,        x87  y59  w60  h20 vSpeedSpeedy  gRadioSpeedy,    고속
	Gui, W_Main: Add, Radio,        x152 y59  w60  h20 vSpeedSetting gRadioSetting,   설정
	
	Gui, W_Main: Add, GroupBox,     x12  y99  w210 h170,                              컨텐츠 선택
	Gui, W_Main: Add, CheckBox,     x22  y119 w95  h20 vNBAdventure,                  모험
	Gui, W_Main: Add, CheckBox,     x22  y149 w95  h20 vNBTower,                      무한의 탑
	Gui, W_Main: Add, CheckBox,     x22  y179 w95  h20 vNBArena,                      결투장
	Gui, W_Main: Add, CheckBox,     x22  y209 w95  h20 vNBRaid,                       레이드
	
	Gui, W_Main: Add, CheckBox,     x122 y119 w95  h20 vNBSendHonor,                  명예 보내기
	Gui, W_Main: Add, CheckBox,     x122 y149 w95  h20 vNBGuildAttendance,            길드 출석체크
	
	Gui, W_Main: Add, GroupBox,     x12  y284 w210 h50,                               바로가기
	Gui, W_Main: Add, Button,       x22  y297 w45  h30 gOPENSetting,                  설정
	Gui, W_Main: Add, Button,       x70  y297 w40  h30 gOPENLog,                      기록
	Gui, W_Main: Add, Button,       x115 y297 w40  h30 gOPENCount,                    통계
	Gui, W_Main: Add, Button,       x161 y297 w55  h30 gOPENHappySell,				  해피팔기
	
	Gui, W_Main: Add, GroupBox,     x12  y346 w210 h50,                               동작
	Gui, W_Main: Add, Button,       x22  y359 w60  h30  gOneClick,                    실행
	Gui, W_Main: Add, Button,       x87  y359 w60  h30  gPause  +Disabled,            일시정지
	Gui, W_Main: Add, Button,       x87  y359 w60  h30  gResume +Hidden,              계속하기
	Gui, W_Main: Add, Button,       x152 y359 w60  h30  gReset,                       재시작
}

{	; Setting 
	Gui, W_Setting: Add, GroupBox,     x12  y9   w500 h80 , 모험
	Gui, W_Setting: Add, Text,         x22  y33  w45 h20 +Right, 주 모험:
	Gui, W_Setting: Add, DropDownList, x72  y29  w85 Choose1 vMainAdventureLocation,최근 모험|1-10|2-10|3-5|3-10|4-6|4-10|5-5|5-10|6-1|6-5|6-6|6-9|6-10|7-1|7-9|7-10|8-1|8-13|8-14|8-15|9-1|9-2|10-1|11-1|11-6
	Gui, W_Setting: Add, Text,         x172 y33  w45 h20 +Right, 팀 번호:
	Gui, W_Setting: Add, DropDownList, x222 y29  w30 Choose1 vTeamAdventureM, 1|2|3
	Gui, W_Setting: Add, Text,         x263 y33  w30 h20 +Right, 플스:
	Gui, W_Setting: Add, DropDownList, x298 y29  w30 Choose1 vPSAdventureM, 1|2|3
	Gui, W_Setting: Add, Text,         x338 y33  w30 h20 +Right, 스킬:
	Gui, W_Setting: Add, DropDownList, x373 y29  w30 Choose1 vSKAdventureM, 1|2|3
	Gui, W_Setting: Add, Text,         x22  y63  w45 h20 +Right, 부 모험:
	Gui, W_Setting: Add, DropDownList, x72  y59  w85 Choose1 vSubAdventureLocation,최근 모험|1-10|2-10|3-5|3-10|4-6|4-10|5-5|5-10|6-1|6-5|6-6|6-9|6-10|7-1|7-9|7-10|8-1|8-13|8-14|8-15|9-1|9-2|10-1|11-1|11-6
	Gui, W_Setting: Add, Text,         x172 y63  w45 h20 +Right, 팀 번호:
	Gui, W_Setting: Add, DropDownList, x222 y59  w30 Choose1 vTeamAdventureS, 1|2|3
	Gui, W_Setting: Add, Text,         x263 y63  w30 h20 +Right, 플스:
	Gui, W_Setting: Add, DropDownList, x298 y59  w30 Choose1 vPSAdventureS, 1|2|3
	Gui, W_Setting: Add, Text,         x338 y63  w30 h20 +Right, 스킬:
	Gui, W_Setting: Add, DropDownList, x373 y59  w30 Choose1 vSKAdventureS, 1|2|3
	Gui, W_Setting: Add, Text,         x425 y33  w80 h20 , 아이사 대륙
	Gui, W_Setting: Add, DropDownList, x425 y59  w80 Choose1 vIslandDifficulty, 쉬움|보통
	
	Gui, W_Setting: Add, GroupBox,     x12  y99  w370 h45  , 영웅 - [교체]
	Gui, W_Setting: Add, Text,         x22  y121 w50  h20  , 방식:
	Gui, W_Setting: Add, DropDownList, x56  y117 w150      Choose1 vHeroChangeOption,1. 보호 3마리 (2, 3, 4)|2. 보호 4마리 (1, 2, 3, 4)|3. 보호 2마리 (3, 4)|4. 공격 3마리 (2, 3, 4)|5. 공격 4마리 (2, 3, 4, 5)|6. 공격 2마리 (3, 4)|7. 기본 3마리 (3, 4, 5)|8. 밸런스 2마리 (4, 5)
	Gui, W_Setting: Add, CheckBox,     x225 y117 w140 h20  +Left vIsHeroChange, 30 영웅 자동 교체
	
	Gui, W_Setting: Add, GroupBox,     x12  y150 w370 h45 , 영웅 - [판매]
	Gui, W_Setting: Add, Text,         x22  y172 w30  h20  , 등급:
	Gui, W_Setting: Add, DropDownList, x56  y168 w150      Choose1 vHeroSellingOption,1. 판매 안함|2. 1성 판매|3. 2성 판매|4. 1성, 2성 판매
	Gui, W_Setting: Add, CheckBox,     x225 y168 w140      +Left vIsHeroSellingLowLevel, 30레벨 미만도 판매
	
	Gui, W_Setting: Add, GroupBox,     x12  y201 w370 h45 , 무한의 탑
	Gui, W_Setting: Add, Radio,        x22  y219 w80  h20  vIsTowerGoldroom, 황금의 방
	Gui, W_Setting: Add, Text,         x225 y223 w45  h20  +Left, 팀 번호:
	Gui, W_Setting: Add, DropDownList, x277 y219 w40       Choose1 vTeamTower, 1|2|3
	
	Gui, W_Setting: Add, GroupBox,     x12  y252 w370 h45 , 결투장
	Gui, W_Setting: Add, Text,         x225 y274 w45  h20  +Left, 플스:
	Gui, W_Setting: Add, DropDownList, x277 y270 w40       Choose1 vPSArena, 1|2|3
	
	Gui, W_Setting: Add, GroupBox,     x12  y354 w370 h45 , 기타
	Gui, W_Setting: Add, CheckBox,     x22  y372 w65  h20  +Left vIsCallFriends,   친구소환
	Gui, W_Setting: Add, CheckBox,     x97  y372 w65  h20  +Left vIsSelectedSkill, 설정스킬
	Gui, W_Setting: Add, CheckBox,     x172 y372 w65  h20  +Left vIsCapture,       스크린샷
	Gui, W_Setting: Add, Text,         x252 y376 w65  h20  +Left,                  순환시간:
	Gui, W_Setting: Add, DropDownList, x312 y372 w60       Choose1 vTimeWait,      30분|40분|50분|60분|70분|80분|90분|100분|110분|120분
	
	Gui, W_Setting: Add, Button,       x392 y104 w60  h26 gOPENStrengthen,        강화
	Gui, W_Setting: Add, Button,       x452 y104 w60  h26 gOPENSkillSetup,        스킬
	Gui, W_Setting: Add, Button,       x392 y130 w60  h26 gOPENBuyKey,            열쇠/우편
	Gui, W_Setting: Add, Button,       x452 y130 w60  h26 gOPENRestart,           재시작
	Gui, W_Setting: Add, Button,       x392 y156 w60  h26 gOPENRaidSetup,         레이드
	
	Gui, W_Setting: Add, Button,       x392 y218 w60  h26 gOPENSpeed,             속도
	Gui, W_Setting: Add, Button,       x452 y218 w60  h26 gOPENPushSetup,         푸쉬
	Gui, W_Setting: Add, Button,       x392 y244 w60  h26 gOPENHotKey,            단축키
	Gui, W_Setting: Add, Button,       x452 y244 w60  h26 gOPENBlueStacks,        블루스택
	
	Gui, W_Setting: Add, Button,       x392 y323 w60  h26 gCaptureScreen,         화면 캡쳐
	Gui, W_Setting: Add, Button,       x452 y323 w60  h26 gCaptureSkills,         스킬 캡쳐
	
	Gui, W_Setting: Add, Button,       x392 y359 w120 h40 gSaveOption,            설정 저장
	
	Gui, W_Setting: +OwnerW_Main
}

{	; Log 
	;Gui, W_Log: Add, ListBox, x2 y2 w300 h400 vLogList, # %A_YEAR%년 %A_MM%월 %A_DD%일 %A_HOUR%시 %A_MIN%분 시작!|
	Gui, W_Log: Add, ListBox, x2 y2 w445 h400 vLogList, # %A_YEAR%년 %A_MM%월 %A_DD%일 %A_HOUR%시 %A_MIN%분 시작!|
	Gui, W_Log: +OwnerW_Main

	HeroesSkillsLoad()
}

{	; Status 
	Gui, W_Status: Add, GroupBox,     x12 y9 w230 h140 , 완료
	Gui, W_Status: Add, Text,         x62 y29 w60 h20 +Right, 무한의 탑
	Gui, W_Status: Add, Edit,         x132 y29 w100 h20 +Center +ReadOnly vNumTower, 0
	Gui, W_Status: Add, Text,         x22 y59 w100 h20 +Right, 결투장
	Gui, W_Status: Add, Edit,         x132 y59 w100 h20 +Center +ReadOnly vNumArena, 0
	Gui, W_Status: Add, Text,         x22 y89 w100 h20 +Right, 레이드
	Gui, W_Status: Add, Edit,         x132 y89 w100 h20 +Center +ReadOnly vNumRaid, 0
	Gui, W_Status: Add, Text,         x22 y119 w100 h20 +Right, 모험
	Gui, W_Status: Add, Edit,         x132 y119 w100 h20 +Center +ReadOnly vNumAdventure, 0
	Gui, W_Status: Add, GroupBox,     x12 y159 w230 h140 , 획득
	Gui, W_Status: Add, Text,         x22 y179 w100 h20 +Right, 레이드 보상
	Gui, W_Status: Add, Edit,         x132 y179 w100 h20 +Center +ReadOnly vNumReward, 0
	Gui, W_Status: Add, Text,         x22 y209 w100 h20 +Right, 장비
	Gui, W_Status: Add, Edit,         x132 y209 w100 h20 +Center +ReadOnly vNumGetEquipment, 0
	Gui, W_Status: Add, Text,         x22 y239 w100 h20 +Right, 금화
	Gui, W_Status: Add, Edit,         x132 y239 w100 h20 +Center +ReadOnly vNumGetGold, 0
	Gui, W_Status: Add, Text,         x22 y269 w100 h20 +Right, 영웅
	Gui, W_Status: Add, Edit,         x132 y269 w100 h20 +Center +ReadOnly vNumGetHero, 0
	Gui, W_Status: Add, GroupBox,     x12 y309 w230 h80 , 달성
	Gui, W_Status: Add, Text,         x22 y329 w100 h20 +Right, 업적 / 미션
	Gui, W_Status: Add, Edit,         x132 y329 w100 h20 +Center +ReadOnly vNumMission, 0
	Gui, W_Status: Add, Text,         x22 y359 w100 h20 +Right, 영웅 30 레벨
	Gui, W_Status: Add, Edit,         x132 y359 w100 h20 +Center +ReadOnly vNumFullLevelUp, 0
	Gui, W_Status: Add, Button,       x22 y29 w40 h20 gResetCount, Reset
	Gui, W_Status: +OwnerW_Main
}

{	; Skill
	Gui, W_SkillSetup: Add, Tab, x2 w230 h365 +Center, 스킬1|스킬2|스킬3|황금의 방
	
	Hero  := "사용 안함|1번 영웅|2번 영웅|3번 영웅|4번 영웅|5번 영웅"
	Skill := "사용 안함|1번 스킬|2번 스킬|3번 각성스킬"

	{	; Skill Tab 1
		Gui, W_SkillSetup: Tab, 스킬1
		Gui, W_SkillSetup: Add, GroupBox,     x5   y35  w223 h333 , 스킬 설정
		Gui, W_SkillSetup: Add, GroupBox,     x8   y55  w217 h100  , 첫번째 웨이브
		Gui, W_SkillSetup: Add, Text,         x20  y79  w16  h20 , 1:
		Gui, W_SkillSetup: Add, DropDownList, x40  y75  w80  Choose1 vSkill1Wave1Hero1,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y75  w90  Choose1 vSkill1Wave1Hero1Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y104 w16  h20 , 2:
		Gui, W_SkillSetup: Add, DropDownList, x40  y100 w80  Choose1 vSkill1Wave1Hero2,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y100 w90  Choose1 vSkill1Wave1Hero2Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y129 w16  h20 , 3:
		Gui, W_SkillSetup: Add, DropDownList, x40  y125 w80  Choose1 vSkill1Wave1Hero3,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y125 w90  Choose1 vSkill1Wave1Hero3Skill, %Skill%
		
		Gui, W_SkillSetup: Add, GroupBox,     x8   y160 w217 h100 , 두번째 웨이브
		Gui, W_SkillSetup: Add, Text,         x20  y184 w16  h20 , 1:
		Gui, W_SkillSetup: Add, DropDownList, x40  y180 w80  Choose1 vSkill1Wave2Hero1,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y180 w90  Choose1 vSkill1Wave2Hero1Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y209 w16  h20 , 2:
		Gui, W_SkillSetup: Add, DropDownList, x40  y205 w80  Choose1 vSkill1Wave2Hero2,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y205 w90  Choose1 vSkill1Wave2Hero2Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y234 w16  h20 , 3:
		Gui, W_SkillSetup: Add, DropDownList, x40  y230 w80  Choose1 vSkill1Wave2Hero3,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y230 w90  Choose1 vSkill1Wave2Hero3Skill, %Skill%
		
		Gui, W_SkillSetup: Add, GroupBox,     x8   y265 w217 h100 , 세번째 웨이브
		Gui, W_SkillSetup: Add, Text,         x20  y289 w16  h20 , 1:
		Gui, W_SkillSetup: Add, DropDownList, x40  y285 w80  Choose1 vSkill1Wave3Hero1,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y285 w90  Choose1 vSkill1Wave3Hero1Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y314 w16  h20 , 2:
		Gui, W_SkillSetup: Add, DropDownList, x40  y310 w80  Choose1 vSkill1Wave3Hero2,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y310 w90  Choose1 vSkill1Wave3Hero2Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y339 w16  h20 , 3:
		Gui, W_SkillSetup: Add, DropDownList, x40  y335 w80  Choose1 vSkill1Wave3Hero3,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y335 w90  Choose1 vSkill1Wave3Hero3Skill, %Skill%
	}
	
	{	; Skill Tab 2
		Gui, W_SkillSetup: Tab, 스킬2
		Gui, W_SkillSetup: Add, GroupBox,     x5   y35  w223 h333  , 스킬 설정
		Gui, W_SkillSetup: Add, GroupBox,     x8   y55  w217 h100  , 첫번째 웨이브
		Gui, W_SkillSetup: Add, Text,         x20  y79  w16  h20 , 1:
		Gui, W_SkillSetup: Add, DropDownList, x40  y75  w80  Choose1 vSkill2Wave1Hero1,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y75  w90  Choose1 vSkill2Wave1Hero1Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y104 w16  h20 , 2:
		Gui, W_SkillSetup: Add, DropDownList, x40  y100 w80  Choose1 vSkill2Wave1Hero2,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y100 w90  Choose1 vSkill2Wave1Hero2Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y129 w16  h20 , 3:
		Gui, W_SkillSetup: Add, DropDownList, x40  y125 w80  Choose1 vSkill2Wave1Hero3,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y125 w90  Choose1 vSkill2Wave1Hero3Skill, %Skill%
		
		Gui, W_SkillSetup: Add, GroupBox,     x8   y160 w217 h100 , 두번째 웨이브
		Gui, W_SkillSetup: Add, Text,         x20  y184 w16  h20 , 1:
		Gui, W_SkillSetup: Add, DropDownList, x40  y180 w80  Choose1 vSkill2Wave2Hero1,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y180 w90  Choose1 vSkill2Wave2Hero1Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y209 w16  h20 , 2:
		Gui, W_SkillSetup: Add, DropDownList, x40  y205 w80  Choose1 vSkill2Wave2Hero2,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y205 w90  Choose1 vSkill2Wave2Hero2Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y234 w16  h20 , 3:
		Gui, W_SkillSetup: Add, DropDownList, x40  y230 w80  Choose1 vSkill2Wave2Hero3,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y230 w90  Choose1 vSkill2Wave2Hero3Skill, %Skill%
		
		Gui, W_SkillSetup: Add, GroupBox,     x8   y265 w217 h100 , 세번째 웨이브
		Gui, W_SkillSetup: Add, Text,         x20  y289 w16  h20 , 1:
		Gui, W_SkillSetup: Add, DropDownList, x40  y285 w80  Choose1 vSkill2Wave3Hero1,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y285 w90  Choose1 vSkill2Wave3Hero1Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y314 w16  h20 , 2:
		Gui, W_SkillSetup: Add, DropDownList, x40  y310 w80  Choose1 vSkill2Wave3Hero2,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y310 w90  Choose1 vSkill2Wave3Hero2Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y339 w16  h20 , 3:
		Gui, W_SkillSetup: Add, DropDownList, x40  y335 w80  Choose1 vSkill2Wave3Hero3,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y335 w90  Choose1 vSkill2Wave3Hero3Skill, %Skill%
	}
	
	{	; Skill Tab 3
		Gui, W_SkillSetup: Tab, 스킬3
		Gui, W_SkillSetup: Add, GroupBox,     x5   y35 w223 h333 , 스킬 설정
		Gui, W_SkillSetup: Add, GroupBox,     x8   y55  w217 h100  , 첫번째 웨이브
		Gui, W_SkillSetup: Add, Text,         x20  y79  w16  h20 , 1:
		Gui, W_SkillSetup: Add, DropDownList, x40  y75  w80  Choose1 vSkill3Wave1Hero1,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y75  w90  Choose1 vSkill3Wave1Hero1Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y104 w16  h20 , 2:
		Gui, W_SkillSetup: Add, DropDownList, x40  y100 w80  Choose1 vSkill3Wave1Hero2,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y100 w90  Choose1 vSkill3Wave1Hero2Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y129 w16  h20 , 3:
		Gui, W_SkillSetup: Add, DropDownList, x40  y125 w80  Choose1 vSkill3Wave1Hero3,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y125 w90  Choose1 vSkill3Wave1Hero3Skill, %Skill%
		
		Gui, W_SkillSetup: Add, GroupBox,     x8   y160 w217 h100 , 두번째 웨이브
		Gui, W_SkillSetup: Add, Text,         x20  y184 w16  h20 , 1:
		Gui, W_SkillSetup: Add, DropDownList, x40  y180 w80  Choose1 vSkill3Wave2Hero1,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y180 w90  Choose1 vSkill3Wave2Hero1Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y209 w16  h20 , 2:
		Gui, W_SkillSetup: Add, DropDownList, x40  y205 w80  Choose1 vSkill3Wave2Hero2,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y205 w90  Choose1 vSkill3Wave2Hero2Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y234 w16  h20 , 3:
		Gui, W_SkillSetup: Add, DropDownList, x40  y230 w80  Choose1 vSkill3Wave2Hero3,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y230 w90  Choose1 vSkill3Wave2Hero3Skill, %Skill%
		
		Gui, W_SkillSetup: Add, GroupBox,     x8   y265 w217 h100 , 세번째 웨이브
		Gui, W_SkillSetup: Add, Text,         x20  y289 w16  h20 , 1:
		Gui, W_SkillSetup: Add, DropDownList, x40  y285 w80  Choose1 vSkill3Wave3Hero1,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y285 w90  Choose1 vSkill3Wave3Hero1Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y314 w16  h20 , 2:
		Gui, W_SkillSetup: Add, DropDownList, x40  y310 w80  Choose1 vSkill3Wave3Hero2,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y310 w90  Choose1 vSkill3Wave3Hero2Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y339 w16  h20 , 3:
		Gui, W_SkillSetup: Add, DropDownList, x40  y335 w80  Choose1 vSkill3Wave3Hero3,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y335 w90  Choose1 vSkill3Wave3Hero3Skill, %Skill%
	}
	
	{	; Tower Skill
		Gui, W_SkillSetup: Tab, 황금의 방
		Gui, W_SkillSetup: Add, GroupBox,     x5   y35  w223 h177 ,                        스킬 설정
		Gui, W_SkillSetup: Add, GroupBox,     x8   y55  w217 h75 ,                         첫번째 웨이브
		Gui, W_SkillSetup: Add, Text,         x20  y79  w16  h20 ,                         1:
		Gui, W_SkillSetup: Add, DropDownList, x40  y75  w80  Choose1 vGoldWave1Hero1,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y75  w90  Choose1 vGoldWave1Hero1Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y104 w16  h20 ,                         2:
		Gui, W_SkillSetup: Add, DropDownList, x40  y100 w80  Choose1 vGoldWave1Hero2,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y100 w90  Choose1 vGoldWave1Hero2Skill, %Skill%
		Gui, W_SkillSetup: Add, GroupBox,     x8   y135 w217 h75 ,                         두번째 웨이브
		Gui, W_SkillSetup: Add, Text,         x20  y159 w16  h20 ,                         1:
		Gui, W_SkillSetup: Add, DropDownList, x40  y155 w80  Choose1 vGoldWave2Hero1,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y155 w90  Choose1 vGoldWave2Hero1Skill, %Skill%
		Gui, W_SkillSetup: Add, Text,         x20  y184 w16  h20 ,                         2:
		Gui, W_SkillSetup: Add, DropDownList, x40  y180 w80  Choose1 vGoldWave2Hero2,      %Hero%
		Gui, W_SkillSetup: Add, DropDownList, x125 y180 w90  Choose1 vGoldWave2Hero2Skill, %Skill%
	}

	Gui, W_SkillSetup: +OwnerW_Main
}

{	; Buy Key
	Gui, W_BuyKeySetup: Add, GroupBox,     x5  y6   w230 h107 ,                           열쇠 구입
	Gui, W_BuyKeySetup: Add, CheckBox,     x15 y22  w200 h20 vIsBuyKeyRubyAlways,         루비로 열쇠 구입 
	Gui, W_BuyKeySetup: Add, CheckBox,     x15 y44  w200 h20 vIsBuyKeyRubyHotTime,        루비로 열쇠 구입 (핫타임)
	Gui, W_BuyKeySetup: Add, CheckBox,     x15 y66  w200 h20 vIsBuyKeyHonor,              명예로 열쇠 구입 
	Gui, W_BuyKeySetup: Add, CheckBox,     x15 y88  w200 h20 vIsBuyKeyHonorHotTime,       명예로 열쇠 구입 (핫타임)
	
	Gui, W_BuyKeySetup: Add, GroupBox,     x5  y130 w230 h150 ,                           우편함
	;Gui, W_BuyKeySetup: Add, CheckBox,     x15 y146 w200 h20 vIsGetHonorInMailbox,        우편함에서 명예 찾기
	;Gui, W_BuyKeySetup: Add, CheckBox,     x15 y168 w200 h20 vIsGetHonorInMailboxHotTime, 우편함에서 명예 찾기 (핫타임)
	Gui, W_BuyKeySetup: Add, CheckBox,     x15 y190 w200 h20 vIsGetKeyInMailbox,          우편함에서 열쇠 찾기
	Gui, W_BuyKeySetup: Add, CheckBox,     x15 y212 w200 h20 vIsGetKeyInMailboxHotTime,   우편함에서 열쇠 찾기 (핫타임)
	;Gui, W_BuyKeySetup: Add, CheckBox,     x15 y234 w200 h20 vIsGetGoldWhenOpenMailbox,   우편함 확인 시 골드 찾기
	;Gui, W_BuyKeySetup: Add, CheckBox,     x15 y256 w200 h20 vIsGetRubyWhenOpenMailbox,   우편함 확인 시 루비 찾기
	Gui, W_BuyKeySetup: +OwnerW_Main
}

{	; Bluestacks
	Gui, W_Bluestacks: Add, GroupBox,     x12  y9  w420 h45 ,                     BlueStacks 경로 (HD-RunApp.exe)
	Gui, W_Bluestacks: Add, Text,         x22  y29 w390 h20   vBlueStacksLocation,
	Gui, W_Bluestacks: Add, Button,       x437 y14 w75  h40   gSelectBlueStacks,  지정
	Gui, W_Bluestacks: Add, GroupBox,     x12  y60 w420 h45 ,                     BlueStacks재시작
	Gui, W_Bluestacks: Add, CheckBox,     x22  y80 w390 h20   vIsAutoRestart,     푸쉬 보상 시 재시작
	Gui, W_Bluestacks: Add, Button,       x437 y65 w75  h40   gRegedit,           해상도 적용
	Gui, W_Bluestacks: +OwnerW_Main
}

{	; Speed
	Gui, W_SpeedSetup: Add, Text,         x22  y22  w130 h20 +Left, 새로고침 간격
	Gui, W_SpeedSetup: Add, Text,         x22  y52  w130 h20 +Left, 팝업 이미지 대기
	Gui, W_SpeedSetup: Add, Text,         x22  y82  w130 h20 +Left, 드래그 딜레이
	Gui, W_SpeedSetup: Add, Text,         x22  y112 w130 h20 +Left, 클릭 딜레이
	Gui, W_SpeedSetup: Add, Text,         x22  y142 w130 h20 +Left, 다시하기 대기
	Gui, W_SpeedSetup: Add, Text,         x22  y172 w130 h20 +Left, 이미지 검색 후 딜레이
	Gui, W_SpeedSetup: Add, Slider,       x162 y18  w250 h20 Range100-500  TickInterval100  Line10 ToolTipBottom vTIME_REFRESH,   200
	Gui, W_SpeedSetup: Add, Slider,       x162 y48  w250 h20 Range500-2000 TickInterval100         ToolTipBottom vTIME_WAITPOPUP, 1000
	Gui, W_SpeedSetup: Add, Slider,       x162 y78  w250 h20 Range500-2000 TickInterval100         ToolTipBottom vTIME_DRAG,      1500
	Gui, W_SpeedSetup: Add, Slider,       x162 y108 w250 h20 Range500-2000 TickInterval100         ToolTipBottom vTIME_CLICK,     1000
	Gui, W_SpeedSetup: Add, Slider,       x162 y138 w250 h20 Range200-3000 TickInterval100         ToolTipBottom vTIME_RESTART,   700
	Gui, W_SpeedSetup: Add, Slider,       x162 y168 w250 h20 Range200-3000 TickInterval100         ToolTipBottom vTIME_IMAGE,     700
	Gui, W_SpeedSetup: +OwnerW_Main
}

{	; Strengthen
	Gui, W_StrengthenSetup: Add, GroupBox,     x10  y5   h303 w338, 강화
	Gui, W_StrengthenSetup: Add, CheckBox,     x20  y25  h20  w100 vIsStrengthenHero, 자동 영웅 강화
	Gui, W_StrengthenSetup: Add, CheckBox,     x20  y50  h20  w100 vIsStrengthenCore, 원소 우선 강화
	Gui, W_StrengthenSetup: Add, Text,         x20  y83  h20  w65, 강화 성공:
	Gui, W_StrengthenSetup: Add, Edit,         x90  y80  h20  w65 +Center +ReadOnly vNumStrSuccess, 0
	Gui, W_StrengthenSetup: Add, Text,         x20  y108 h20  w65, 강화 실패:
	Gui, W_StrengthenSetup: Add, Edit,         x90  y105 h20  w65 +Center +ReadOnly vNumStrFailure, 0
	Gui, W_StrengthenSetup: Add, GroupBox,     x13  y140 h165 w160	, 일반 영웅
	Gui, W_StrengthenSetup: Add, Text,         x30  y160 h20  w125, 재료 영웅
	Gui, W_StrengthenSetup: Add, DropDownList, x30  y176      w125 vSacrificeStar Choose2 AltSubmit, 1성|2성|1성, 2성
	Gui, W_StrengthenSetup: Add, Text,         x30  y210 h20  w125, 대상 영웅 (2성 재료)
	Gui, W_StrengthenSetup: Add, DropDownList, x30  y226      w125 vStrengthenStar2 Choose3 AltSubmit, 3성|3성 > 4성|3성 > 4성 > 5성|4성|4성 > 3성|4성 > 3성 > 5성|4성 > 5성|4성 > 5성 > 3성|5성|5성 > 4성|5성 > 4성 > 3성
	Gui, W_StrengthenSetup: Add, Text,         x30  y260 h20  w125, 대상 영웅 (1성 재료)
	Gui, W_StrengthenSetup: Add, DropDownList, x30  y276      w125 vStrengthenStar1 Choose1 AltSubmit, 3성|3성 > 4성|4성|4성 > 3성
	
	Gui, W_StrengthenSetup: Add, GroupBox,     x175 y20 h285 w170, 원소 영웅
	Gui, W_StrengthenSetup: Add, GroupBox,     x178 y40 h165 w164, 대상 원소
	Gui, W_StrengthenSetup: Add, DropDownList, x195 y58 w130 vStrengthenCoreStar Choose7 AltSubmit, 1성|1성 > 2성|1성 > 2성 > 3성|1성 > 2성 > 3성 > 4성|2성|2성 > 3성|2성 > 3성 > 4성|3성|3성 > 2성|3성 > 2성 > 4성|3성 > 4성|3성 > 4성 > 2성|4성|4성 > 3성|4성 > 3성 > 2성
	Gui, W_StrengthenSetup: Add, Text,         x195 y85 h20 w35, 1순위:
	Gui, W_StrengthenSetup: Add, DropDownList, x240 y80 w85 vStrengthenCore1th Choose5 AltSubmit, 불|물|땅|빛|암흑|없음
	Gui, W_StrengthenSetup: Add, Text,         x195 y105 h20 w35, 2순위:
	Gui, W_StrengthenSetup: Add, DropDownList, x240 y100 w85 vStrengthenCore2th Choose2 AltSubmit, 불|물|땅|빛|암흑|없음
	Gui, W_StrengthenSetup: Add, Text,         x195 y125 h20 w35, 3순위:
	Gui, W_StrengthenSetup: Add, DropDownList, x240 y120 w85 vStrengthenCore3th Choose1 AltSubmit, 불|물|땅|빛|암흑|없음
	Gui, W_StrengthenSetup: Add, Text,         x195 y145 h20 w35, 4순위:
	Gui, W_StrengthenSetup: Add, DropDownList, x240 y140 w85 vStrengthenCore4th Choose4 AltSubmit, 불|물|땅|빛|암흑|없음
	Gui, W_StrengthenSetup: Add, Text,         x195 y165 h20 w35, 5순위:
	Gui, W_StrengthenSetup: Add, DropDownList, x240 y160 w85 vStrengthenCore5th Choose3 AltSubmit, 불|물|땅|빛|암흑|없음
	Gui, W_StrengthenSetup: Add, Text,         x195 y187 h15 w35, 우선:
	Gui, W_StrengthenSetup: Add, Radio,        x240 y185 h15 w45 vGradeFirst Checked, 등급
	Gui, W_StrengthenSetup: Add, Radio,        x285 y185 h15 w45 vKindFirst, 타입
	Gui, W_StrengthenSetup: Add, Text,         x185 y219 w20 w145, 재료 영웅 (3성 원소)
	Gui, W_StrengthenSetup: Add, DropDownList, x185 y235 w145 v3CoreSt Choose1 AltSubmit, 1성|2성|1성, 2성
	Gui, W_StrengthenSetup: Add, Text,         x185 y267 h20 w145, 강화 제외 2성 원소
	Gui, W_StrengthenSetup: Add, CheckBox,     x185 y280 h20 w30 vIsNotStrengthen2Core1, 불
	Gui, W_StrengthenSetup: Add, CheckBox,     x215 y280 h20 w30 vIsNotStrengthen2Core2, 물
	Gui, W_StrengthenSetup: Add, CheckBox,     x245 y280 h20 w30 vIsNotStrengthen2Core3, 땅
	Gui, W_StrengthenSetup: Add, CheckBox,     x275 y280 h20 w30 vIsNotStrengthen2Core4, 빛
	Gui, W_StrengthenSetup: Add, CheckBox,     x305 y280 h20 w30 vIsNotStrengthen2Core5, 암
	Gui, W_StrengthenSetup: +OwnerW_Main
}

{	; HotKey
	Gui, W_HotKeySetup: Add, Text,         x20  y15  h20 w110, 실행
	Gui, W_HotKeySetup: Add, Hotkey,       x120 y10  h20 w125  vOneClickHK  gSetOneClickKey
	Gui, W_HotKeySetup: Add, Text,         x20  y40  h20 w110, 재시작
	Gui, W_HotKeySetup: Add, Hotkey,       x120 y35  h20 w125  vResetHK     gSetResetKey
	Gui, W_HotKeySetup: Add, Text,         x20  y65  h20 w110, 화면이동
	Gui, W_HotKeySetup: Add, Hotkey,       x120 y60  h20 w125  vMonitorHK   gSetMonitorKey
	Gui, W_HotKeySetup: Add, Text,         x20  y90  h20 w110, 스크린샷
	Gui, W_HotKeySetup: Add, Hotkey,       x120 y85  h20 w125  vCaptureHK   gSetCaptureKey
	Gui, W_HotKeySetup: +OwnerW_Main
}

{	; PushBullet
	Gui, W_PushSetup: Add, GroupBox,     x12  y15 w370 h75 , PushBullet
	Gui, W_PushSetup: Add, CheckBox,     x22  y33 w80  h20  vAlarmAll,        알림사용
	Gui, W_PushSetup: Add, CheckBox,     x107 y33 w80  h20  vAlarmPeriodic,   정기보고
	Gui, W_PushSetup: Add, CheckBox,     x192 y33 w80  h20  vAlarmImage,      이미지알림
	Gui, W_PushSetup: Add, Text,         x22  y67 w40  h20  +Left,            토큰:
	Gui, W_PushSetup: Add, Edit,         x62  y63 w300 h20  vToken,
}

{	; Raid Skill
	{	; Raid First Skill
		Gui, W_RaidSetup: Add, GroupBox,     x10   y10 w196  h315 ,                              제 1 공격대
		Gui, W_RaidSetup: Add, GroupBox,     x13   y27 w190  h145 ,                              예약 스킬
		Gui, W_RaidSetup: Add, Text,         x25   y49 w50   h20  ,                              예약 1 :
		Gui, W_RaidSetup: Add, DropDownList, x75   y45 w120  Choose1 vRaidFirstReserveSkill1,    %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x25   y74 w50   h20  ,                              예약 2 :
		Gui, W_RaidSetup: Add, DropDownList, x75   y70 w120  Choose1 vRaidFirstReserveSkill2,    %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x25   y99 w50   h20  ,                              예약 3 :
		Gui, W_RaidSetup: Add, DropDownList, x75   y95 w120  Choose1 vRaidFirstReserveSkill3,    %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x25   y124 w50  h20 ,                               예약 4 :
		Gui, W_RaidSetup: Add, DropDownList, x75   y120 w120 Choose1 vRaidFirstReserveSkill4,    %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x25   y149 w50  h20 ,                               예약 5 :
		Gui, W_RaidSetup: Add, DropDownList, x75   y145 w120 Choose1 vRaidFirstReserveSkill5,    %SKILL_LIST%
		Gui, W_RaidSetup: Add, GroupBox,     x13   y177 w190 h145 ,                              반복 스킬
		Gui, W_RaidSetup: Add, Text,         x25   y199 w50  h20  ,                              반복 1 :
		Gui, W_RaidSetup: Add, DropDownList, x75   y195 w120 Choose1 vRaidFirstRepeatSkill1,     %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x25   y224 w50  h20  ,                              반복 2 :
		Gui, W_RaidSetup: Add, DropDownList, x75   y220 w120 Choose1 vRaidFirstRepeatSkill2,     %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x25   y249 w50  h20  ,                              반복 3 :
		Gui, W_RaidSetup: Add, DropDownList, x75   y245 w120 Choose1 vRaidFirstRepeatSkill3,     %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x25   y274 w50  h20 ,                               반복 4 :
		Gui, W_RaidSetup: Add, DropDownList, x75   y270 w120 Choose1 vRaidFirstRepeatSkill4,     %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x25   y299 w50  h20 ,                               반복 5 :
		Gui, W_RaidSetup: Add, DropDownList, x75   y295 w120 Choose1 vRaidFirstRepeatSkill5,     %SKILL_LIST%
	}
	
	{	; Raid Second Skill
		Gui, W_RaidSetup: Add, GroupBox,     x210   y10 w196  h315 ,                             제 2 공격대
		Gui, W_RaidSetup: Add, GroupBox,     x213   y27 w190  h145 ,                             예약 스킬
		Gui, W_RaidSetup: Add, Text,         x225   y49 w50   h20 ,                              예약 1 :
		Gui, W_RaidSetup: Add, DropDownList, x275   y45 w120  Choose1 vRaidSecondReserveSkill1,  %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x225   y74 w50   h20 ,                              예약 2 :
		Gui, W_RaidSetup: Add, DropDownList, x275   y70 w120  Choose1 vRaidSecondReserveSkill2,  %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x225   y99 w50   h20 ,                              예약 3 :
		Gui, W_RaidSetup: Add, DropDownList, x275   y95 w120  Choose1 vRaidSecondReserveSkill3,  %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x225   y124 w50  h20 ,                              예약 4 :
		Gui, W_RaidSetup: Add, DropDownList, x275   y120 w120 Choose1 vRaidSecondReserveSkill4,  %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x225   y149 w50  h20 ,                              예약 5 :
		Gui, W_RaidSetup: Add, DropDownList, x275   y145 w120 Choose1 vRaidSecondReserveSkill5,  %SKILL_LIST%
		Gui, W_RaidSetup: Add, GroupBox,     x213   y177 w190 h145 ,                             반복 스킬
		Gui, W_RaidSetup: Add, Text,         x225   y199 w50  h20  ,                             반복 1 :
		Gui, W_RaidSetup: Add, DropDownList, x275   y195 w120 Choose1 vRaidSecondRepeatSkill1,   %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x225   y224 w50  h20  ,                             반복 2 :
		Gui, W_RaidSetup: Add, DropDownList, x275   y220 w120 Choose1 vRaidSecondRepeatSkill2,   %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x225   y249 w50  h20  ,                             반복 3 :
		Gui, W_RaidSetup: Add, DropDownList, x275   y245 w120 Choose1 vRaidSecondRepeatSkill3,   %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x225   y274 w50  h20 ,                              반복 4 :
		Gui, W_RaidSetup: Add, DropDownList, x275   y270 w120 Choose1 vRaidSecondRepeatSkill4,   %SKILL_LIST%
		Gui, W_RaidSetup: Add, Text,         x225   y299 w50  h20 ,                              반복 5 :
		Gui, W_RaidSetup: Add, DropDownList, x275   y295 w120 Choose1 vRaidSecondRepeatSkill5,   %SKILL_LIST%
	}
	
	{	; Raid Setup
		Gui, W_RaidSetup: Add, GroupBox,     x12  y329 w390 h69 , 레이드
		Gui, W_RaidSetup: Add, Text,         x22  y348 w30  h20  +Left,                    반복:
		Gui, W_RaidSetup: Add, DropDownList, x55  y344 w37       Choose1 vRaidRepeatCount, 1|2|3|4|5|6|7|8|9|10
		Gui, W_RaidSetup: Add, Text,         x102 y348 w30  h20  +Left,                    참여:
		Gui, W_RaidSetup: Add, DropDownList, x137 y344 w30       Choose1 vRaidJoinCount,   1|2|3
		Gui, W_RaidSetup: Add, Text,         x177 y348 w30  h20  +Left,                    플스:
		Gui, W_RaidSetup: Add, DropDownList, x212 y344 w30       Choose1 vRaidPlayerSkill, 1|2|3
		Gui, W_RaidSetup: Add, Button,       x287 y341 w110 h26  gOPENSkillSelect ,        레이드 스킬 선택
		Gui, W_RaidSetup: Add, Text,         x22  y375 w30  h20,                           입장:
		Gui, W_RaidSetup: Add, DropDownList, x55  y371 w120      Choose1 vRaidAwakenType,  1. 각성|2. 일반|3. 각성 + 일반
		Gui, W_RaidSetup: Add, CheckBox,     x187 y372 w80  h20  vRaidIsAttackUnderAnHour, 1시간 이하
		Gui, W_RaidSetup: Add, CheckBox,     x277 y372 w120 h20  vRaidIsSkipReserveSkill,  예약스킬 스킵가능
	}
	
	Gui, W_RaidSetup: +OwnerW_Main
}

{	; Siege
	Gui, W_SiegeSetup: Add, GroupBox,     x7   y5   w200 h306 , 스킬 설정

	Gui, W_SiegeSetup: Add, GroupBox,     x10  y25  w194 h95 ,                        첫 라운드 예약 스킬
	Gui, W_SiegeSetup: Add, Text,         x17  y44  w80  h20 ,                         스킬 예약 1 :
	Gui, W_SiegeSetup: Add, DropDownList, x97  y40  w100 Choose1 vStartBufferSkill1,  %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x17  y69  w80  h20 ,                         스킬 예약 2 :
	Gui, W_SiegeSetup: Add, DropDownList, x97  y65  w100 Choose1 vStartBufferSkill2,  %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x17  y94  w80  h20 ,                         스킬 예약 3 :
	Gui, W_SiegeSetup: Add, DropDownList, x97  y90  w100 Choose1 vStartBufferSkill3,  %SKILL_LIST%

	Gui, W_SiegeSetup: Add, GroupBox,     x10  y130 w194  h145 ,                       보스 라운드 예약 스킬
	Gui, W_SiegeSetup: Add, Text,         x17  y149 w80   h20 ,                        스킬 예약 1 :
	Gui, W_SiegeSetup: Add, DropDownList, x97  y145 w100  Choose1 vBossStartSkill1,   %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x17  y174 w80   h20 ,                        스킬 예약 2 :
	Gui, W_SiegeSetup: Add, DropDownList, x97  y170 w100  Choose1 vBossStartSkill2,   %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x17  y199 w80   h20 ,                        스킬 예약 3 :
	Gui, W_SiegeSetup: Add, DropDownList, x97  y195 w100  Choose1 vBossStartSkill3,   %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x17  y224 w80   h20 ,                        스킬 예약 4 :
	Gui, W_SiegeSetup: Add, DropDownList, x97  y220 w100  Choose1 vBossStartSkill4,   %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x17  y249 w80   h20 ,                        스킬 예약 5 :
	Gui, W_SiegeSetup: Add, DropDownList, x97  y245 w100  Choose1 vBossStartSkill5,   %SKILL_LIST%
	
	Gui, W_SiegeSetup: Add, CheckBox,     x15   y285 w140 h20 vIsSkipReserveSkill,     예약 스킬 스킵 가능

	Gui, W_SiegeSetup: Add, GroupBox,     x214  y5    w200 h306 ,                      반복 스킬 설정
	Gui, W_SiegeSetup: Add, Text,         x221  y29   w80 h20 ,                        반복 스킬  1 :
	Gui, W_SiegeSetup: Add, DropDownList, x305 y25   w100 Choose1 vBossRepeatSkill1,  %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x221  y54   w80 h20 ,                        반복 스킬  2 :
	Gui, W_SiegeSetup: Add, DropDownList, x305  y50   w100 Choose1 vBossRepeatSkill2,  %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x221  y79   w80 h20 ,                        반복 스킬  3 :
	Gui, W_SiegeSetup: Add, DropDownList, x305  y75   w100 Choose1 vBossRepeatSkill3,  %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x221  y104  w80 h20 ,                        반복 스킬  4 :
	Gui, W_SiegeSetup: Add, DropDownList, x305  y100  w100 Choose1 vBossRepeatSkill4,  %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x221  y129  w80 h20 ,                        반복 스킬  5 :
	Gui, W_SiegeSetup: Add, DropDownList, x305  y125  w100 Choose1 vBossRepeatSkill5,  %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x221  y154  w80 h20 ,                        반복 스킬  6 :
	Gui, W_SiegeSetup: Add, DropDownList, x305  y150  w100 Choose1 vBossRepeatSkill6,  %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x221  y179  w80 h20 ,                        반복 스킬  7 :
	Gui, W_SiegeSetup: Add, DropDownList, x305  y175  w100 Choose1 vBossRepeatSkill7,  %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x221  y204  w80 h20 ,                        반복 스킬  8 :
	Gui, W_SiegeSetup: Add, DropDownList, x305  y200  w100 Choose1 vBossRepeatSkill8,  %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x221  y229  w80 h20 ,                        반복 스킬  9 :
	Gui, W_SiegeSetup: Add, DropDownList, x305  y225  w100 Choose1 vBossRepeatSkill9,  %SKILL_LIST%
	Gui, W_SiegeSetup: Add, Text,         x221  y254  w80 h20 ,                        반복 스킬 10 :
	Gui, W_SiegeSetup: Add, DropDownList, x305  y250  w100 Choose1 vBossRepeatSkill10, %SKILL_LIST%
	
	Gui, W_SiegeSetup: +OwnerW_Main
}

{	; Restart Execute
	Gui, W_RestartExecute: Add, CheckBox,     x12 y12  w200 h20 vIsRestartSendHonor,           명예 보내기
	Gui, W_RestartExecute: Add, CheckBox,     x12 y34  w200 h20 vIsRestartGuildAttendance,     길드 출석체크
	Gui, W_RestartExecute: +OwnerW_Main	
}

{	; Hero Skill Select
	IniRead, IniHeroesSkillsCount, 	%SkillsFile%, Count, HeroesSkillsCount
	
	Loop, %IniHeroesSkillsCount% {
		
		IniRead, IniHeroesSkillName%A_Index%, %SkillsFile%, HeroesSkills, HeroesSkillName%A_Index%
		Skill  := IniHeroesSkillName%A_Index%
		
		IniRead, IniHeroesSkillUse%A_Index%, %SkillsFile%, HeroesSkillsUse, %Skill%
		SkillUse  := IniHeroesSkillUse%A_Index%
		
		if (Mod(A_Index, 20) = 1) {
			quotient := Round(A_Index / 20)
			
			if (quotient = 0) {
				XPoint := 5
			} else {
				XPoint := 100
			}
			
			Gui, W_SkillSelect: Add, CheckBox, xp+%XPoint% y10    w100 h18 vHeroesSkillUse%A_Index%, %Skill%
		} else {
			Gui, W_SkillSelect: Add, CheckBox, xp          yp+19  w100 h18 vHeroesSkillUse%A_Index%, %Skill%
		}
	}
	
	Gui, W_SkillSelect: +OwnerW_Main
}

{
	IfExist, %OptionFile%
		Gosub, LoadOption
	else
		Gosub, InitOption

	Gosub, LoadCount

	;~ WinSet, AlwaysOnTop, On, BlueStacks App Player

	SetTimer, ObserveTeamViewer,       1000
	SetTimer, ObserveSevenKnights,     15000

	WatcherCount := 0

	Gui, W_Main: Show, x%initX% y%initY% h404 w234, %MacroID% %MacroVersion%

	AddLog("# 동작 대기")
}

; 아래 리턴 없으면 시작시 설정창 열림
Return
;---------------------gui end--------------------------------------
;---------------------gui open start--------------------------------------

OPENHotKey:
{
	RealWinSize(posX, posY, width, height, MacroID)
	ChildX := posX
	ChildY := posY
	Gui, W_Setting: +Disabled
	Gui, W_HotKeySetup: Show, x%ChildX% y%ChildY%, 단축키
	
	Return
}

OPENSpeed:
{
	RealWinSize(posX, posY, width, height, MacroID)
	ChildX := posX
	ChildY := posY
	Gui, W_Main: +Disabled
	Gui, W_Setting: +Disabled
	Gui, W_SpeedSetup: Show, x%ChildX% y%ChildY% h205, 속도 설정
	
	Return
}

OPENSetting:
{
	RealWinSize(posX, posY, width, height, MacroID)
	ChildX := posX
	ChildY := posY
	
	Gui, W_Main: +Disabled
	Gui, W_Setting: Show, x%ChildX% y%ChildY% w520 h404, 설정
	
	Return
}

OPENLog:
{
	RealWinSize(posX, posY, width, height, MacroID)
	ChildX := posX + width + 10
	ChildY := posY
	
	Gui, W_Log: Show, x%ChildX% y%ChildY% w450 h404, 기록 ;w304
	
	Return
}

OPENCount:
{
	RealWinSize(posX, posY, width, height, MacroID)
	ChildX := posX
	ChildY := posY
	
	Gui, W_Status: Show, x%ChildX% y%ChildY% h404, 통계
	
	Return
}

OPENStrengthen:
{
	RealWinSize(posX, posY, width, height, MacroID)
	ChildX := posX
	ChildY := posY
	
	Gui, W_Main: +Disabled
	Gui, W_Setting: +Disabled
	Gui, W_StrengthenSetup: Show, x%ChildX% y%ChildY%, 강화
	
	Return
}

OPENSkillSetup:
{
	RealWinSize(posX, posY, width, height, MacroID)
	ChildX := posX
	ChildY := posY
	
	Gui, W_Main: +Disabled
	Gui, W_Setting: +Disabled
	Gui, W_SkillSetup: Show, x%ChildX% y%ChildY% w237, 스킬 옵션
	
	Return
}

OPENBuyKey:
{
	RealWinSize(posX, posY, width, height, MacroID)
	ChildX := posX
	ChildY := posY
	
	Gui, W_Main: +Disabled
	Gui, W_Setting: +Disabled
	Gui, W_BuyKeySetup: Show, x%ChildX% y%ChildY% w240, 열쇠/우편함 설정
	
	Return
}

OPENBlueStacks:
{
	RealWinSize(posX, posY, width, height, MacroID)
	ChildX := posX
	ChildY := posY
	
	Gui, W_Main: +Disabled
	Gui, W_Setting: +Disabled
	Gui, W_Bluestacks: Show, x%ChildX% y%ChildY% w520, 블루스택 옵션
	
	Return
}

OPENPushSetup:
{
	RealWinSize(posX, posY, width, height, MacroID)
	ChildX := posX
	ChildY := posY
	
	Gui, W_Main: +Disabled
	Gui, W_Setting: +Disabled
	Gui, W_PushSetup: Show, x%ChildX% y%ChildY% , PushBullet 옵션
	
	Return
}

OPENHappySell:
{
	HappySell()
	return
}

OPENRaidSetup:
{
	RealWinSize(posX, posY, width, height, MacroID)
	ChildX := posX
	ChildY := posY
	
	Gui, W_Setting: +Disabled
	Gui, W_RaidSetup: Show, x%ChildX% y%ChildY%, 레이드 설정
	
	Return
}

OPENRestart:
{
	RealWinSize(posX, posY, width, height, MacroID)
	ChildX := posX
	ChildY := posY
	Gui, W_Setting: +Disabled
	Gui, W_RestartExecute: Show, x%ChildX% y%ChildY%, 재시작 시 실행 설정
	
	Return
}

OPENSkillSelect:
{
	RealWinSize(posX, posY, width, height, MacroID)
	ChildX := posX
	ChildY := posY
	
	Gui, W_RaidSetup:   +Disabled
	Gui, W_SiegeSetup:  +Disabled
	Gui, W_SkillSelect: -Disabled
	Gui, W_SkillSelect: Show, x%ChildX% y%ChildY% h404, 영웅 스킬 선택
	
	IniRead, IniHeroesSkillsCount, 	%SkillsFile%, Count, HeroesSkillsCount
	
	Loop, %IniHeroesSkillsCount% {
		
		IniRead,    IniHeroesSkillName%A_Index%, %SkillsFile%, HeroesSkills, HeroesSkillName%A_Index%
		Skill    := IniHeroesSkillName%A_Index%
		
		IniRead,    IniHeroesSkillUse%A_Index%, %SkillsFile%, HeroesSkillsUse, %Skill%
		SkillUse := IniHeroesSkillUse%A_Index%
		
		if (SkillUse = "Y") {
			GuiControl, W_SkillSelect:, HeroesSkillUse%A_Index%, 1
		}
	}

	Return
}
;---------------------gui open end--------------------------------------
;---------------------gui close start--------------------------------------

W_MainGuiClose:
Terminate:
{
	WinGetPos, posX, posY, width, height,  %MacroID%
	
	if (OnRunning)
		PushNote("[Nebula]  프로그램" ,"종료")
	
	if (posX < 0 || posY <0)
	{
		posX := 100
		posY := 100
	}
	
	IniWrite, %posX%, %OptionFile%, Position, X
	IniWrite, %posY%, %OptionFile%, Position, Y
	
	Gosub, SaveCount
	
	FileDelete, Utility\DB.ini
	
	ExitApp
	
	return
}

W_SettingGuiClose:
{
	Gui, W_Setting: Hide
	Gui, W_Main: -Disabled
	Gui, W_Main: Show

	Return
}

W_LogGuiClose:
{
	Gui, W_Log: Hide
	Gui, W_Main: -Disabled
	Gui, W_Main: Show

	Return
}

W_StatusGuiClose:
{
	Gui, W_Status: Hide
	Gui, W_Main: -Disabled
	Gui, W_Main: Show

	Return
}

W_SkillSetupGuiClose:
{
	Gui, W_SkillSetup: Hide
	Gui, W_Setting: -Disabled
	Gui, W_Setting: Show

	Return
}

W_BuyKeySetupGuiClose:
{
	Gui, W_BuyKeySetup: Hide
	Gui, W_Setting: -Disabled
	Gui, W_Setting: Show

	Return
}

W_BluestacksGuiClose:
{
	Gui, W_Bluestacks: Hide
	Gui, W_Setting: -Disabled
	Gui, W_Setting: Show

	Return
}

W_SpeedSetupGuiClose:
{
	Gui, W_SpeedSetup: Hide
	Gui, W_Setting: -Disabled
	Gui, W_Setting: Show

	Return
}

W_StrengthenSetupGuiClose: 
{
	Gui, W_StrengthenSetup: Hide
	Gui, W_Setting: -Disabled
	Gui, W_Setting: Show

	Return
}

W_HotKeySetupGuiClose:
{
	Gui, W_HotKeySetup: Hide
	Gui, W_Setting: -Disabled
	Gui, W_Setting: Show

	Return
}

W_PushSetupGuiClose:
{
	Gui, W_PushSetup: Hide
	Gui, W_Setting: -Disabled
	Gui, W_Setting: Show

	Return
}

W_RaidSetupGuiClose:
{
	Gui, W_RaidSetup: Hide
	Gui, W_Setting: -Disabled
	Gui, W_Setting: Show

	Return
}

W_SiegeSetupGuiClose:
{
	Gui, W_SiegeSetup: Hide
	Gui, W_Setting: -Disabled
	Gui, W_Setting: Show

	Return
}

W_RestartExecuteGuiClose:
{
	Gui, W_RestartExecute: Hide
	Gui, W_Setting: -Disabled
	Gui, W_Setting: Show

	Return
}

W_SkillSelectGuiClose:
{
	Gui, W_SkillSelect: +Disabled
	
	IniRead, IniHeroesSkillsCount, 	%SkillsFile%, Count, HeroesSkillsCount
	
	Loop, %IniHeroesSkillsCount% {
		IniRead,  IniHeroesSkillName%A_Index%, %SkillsFile%, HeroesSkills, HeroesSkillName%A_Index%
		Skill  := IniHeroesSkillName%A_Index%
		
		HeroSkill = HeroesSkillUse%A_Index%
		
		GuiControlGet, %HeroSkill%, W_SkillSelect:
		
		IsUse    := HeroesSkillUse%A_Index%
		
		if (IsUse = 1) {
			SkillUse := "Y"
		} else {
			SkillUse := "N"
		}
		
		IniWrite, %SkillUse%, %SkillsFile%, HeroesSkillsUse, %Skill%
	}
	
	HeroesSkillsLoad()
	
	HeroesSkillsReset()
	
	gosub, LoadOption
	
	Gui, W_SkillSelect: Hide
	Gui, W_RaidSetup:   -Disabled
	Gui, W_SiegeSetup:  -Disabled

	Return
}
;---------------------gui close end--------------------------------------
;---------------------labels start--------------------------------------
; Nebula.Labels.ahk

ObserveTeamViewer:
{
	IfWinExist, 후원 세션
	{
		WinActivate
		Send, {Enter}
	}

	Return
}

ObserveSevenKnights:
{
	Process, Exist, HD-Frontend.exe
	pidBlueStacks := ErrorLevel
	WatcherCount++
	
	watX := 0
	watY := 0
	
	GuiControlGet, IsAutoRestart, W_Bluestacks:
	GuiControlGet, AlarmAll,      W_Setting:
	GuiControlGet, AlarmPeriodic, W_Setting:
	
	if (IsAutoRestart)
	{
		if (OnRunning)
		{
			if (!pidBlueStacks && !OnRestart)
			{
				AddLog("# 보초의 보고 : 블루스택이 꺼졌습니다.  재시작 합니다.")
				PushNote("[Nebula] 블루스택" ,"꺼짐")
				RestartSevenKnights()
				AfterRestart := 1
			}
			
			if (IsImageDisplay("Image\BlueStacks\Overlap.bmp", 60, 0))
			{
				AddLog("# 보초의 보고 : 접속 오류입니다. 15분 대기하고 재시작 합니다. ")
				AddLog("# 보초의 보고 :  " A_Hour "시 " A_Min "분 대기 시작")
				PushNote("[Nebula] 중복 접속 15분 대기","")
				
				SleepLog(900000)
				
				PushNote("[Nebula] 블루스택","중복 접속 대기 완료")
				
				RestartSevenKnights()
				AfterRestart := 1
			}
			
			if (IsImageDisplay("Image\BlueStacks\Error.bmp", 60, 0))
			{
				AddLog("# 보초의 보고 : Null Point Error")
				PushNote("[Nebula] 블루스택","Null Point Error")
				RestartSevenKnights()
				AfterRestart := 1
			}
			
			if (IsImageDisplay("Image\BlueStacks\ServerConnection.bmp", 60, 0))
			{
				AddLog("# 보초의 보고 : 서버 연결 오류")
				IsImagePlus(watX, watY, "Image\BlueStacks\ServerConnectionYes.bmp", 60, 0)
				Click(watX, watY)
			}
			
			pushTime := IsPushTime()
			
			if (OnStart=1 and IsImageDisplay("Image\BlueStacks\Icon.bmp", 60, 0))
			{
				AddLog("# 세븐 나이츠: 튕김 현상입니다. 재시작 합니다 ")
				PushNote("[Nebula] 세븐 나이츠","튕김")
				
				AfterRestart := 1
				OnCore       := 0
				OnStart       := 0
			}
			
			if ((checkTime != pushTime) && pushTime)
			{
				AddLog("# 보초의 보고 : Push 보상! 재시작을 예약 합니다. ")
				PushNote("[Nebula] 세븐 나이츠","Push 보상 시간")
				checkTime  := pushTime
				SetRestart := 1
			}
			
			if (OnCore && !OnRestart)
			{
				
				if ((Mod(WatcherCount, 130) = 0) && AlarmPeriodic && AlarmAll) {
					GuiControlGet, NumAdventure,   W_Status:
					GuiControlGet, NumTower,       W_Status:
					GuiControlGet, NumArena,       W_Status:
					GuiControlGet, NumRaid,        W_Status:
					GuiControlGet, NumGetHero,     W_Status:
					GuiControlGet, NumFullLevelUp, W_Status:
					GuiControlGet, NumStrSuccess,  W_StrengthenSetup:
					
					IniRead, IniNumSellHero, %CountFile%, Count, NumSellHero
					NumSellHero := IniNumSellHero
					
					alramString := "모험 : " NumAdventure " / 무한의 탑 : " NumTower " / 결투장 : " NumArena " / 레이드 : " NumRaid " / 영웅 획득 : " NumGetHero " / 만렙 달성 : "  NumFullLevelUp " / 영웅 강화 : " NumStrSuccess " / 영웅 판매 : " NumSellHero
					
					AddLog("# 보초의 보고 : 주기적 보고")
					PushNote("[Nebula] 주기적 보고", alramString)
				}
			}
		}
	}
	
	Return
}

CertChecker:
{
	rsvCert := 0
	
	Return
}

BetweenTimer:
{
	bTime++
	
	Return
}

SetOneClickKey:
{
	If OneClickHK in +,^,!,+^,+!,^!,+^!
		return
	
	If (savedOHK) {
		Hotkey, %savedOHK%, OneClick, Off
		savedOHK .= " OFF"
	}
	
	If (OneClickHK = "") {
		savedOHK =
		return
	}
	
	Gui, Submit, NoHide
	
	If (StrLen(OneClickHK) = 1)
		OneClickHK := "~" OneClickHK
	
	Hotkey, %OneClickHK%, OneClick, On
	savedOHK := OneClickHK
	
	Return
}
	
SetResetKey:
{
	If ResetHK in +,^,!,+^,+!,^!,+^!
		return
	
	If (savedRHK)
	{
		Hotkey, %savedRHK%, Reset, Off
		savedRHK .= " OFF"
	}
	
	If (ResetHK = "")
	{
		savedRHK =
		return
	}
	
	Gui, Submit, NoHide
	
	If StrLen(ResetHK) = 1
		ResetHK := "~" ResetHK
	
	Hotkey, %ResetHK%, Reset, On
	savedRHK := ResetHK
	
	Return
}
	
SetMonitorKey:
{
	If MonitorHK in +,^,!,+^,+!,^!,+^!
		return

	If (savedMHK)
	{
		Hotkey, %savedMHK%, SetMonitor, Off
		savedMHK .= " OFF"
	}
	
	If (MonitorHK = "")
	{
		savedMHK =
		return
	}
	
	Gui, Submit, NoHide
	
	If StrLen(MonitorHK) = 1
		MonitorHK := "~" MonitorHK
	
	Hotkey, %MonitorHK%, SetMonitor, On
	savedMHK := MonitorHK
	
	Return
}
	
SetCaptureKey:
{
	If CaptureHK in +,^,!,+^,+!,^!,+^!
		return
	
	If (savedCHK)
	{
		Hotkey, %savedCHK%, Capture, Off
		savedCHK .= " OFF"
	}
	
	If (CaptureHK = "")
	{
		savedCHK =
		return
	}
	
	Gui, Submit, NoHide
	
	If StrLen(CaptureHK) = 1
		CaptureHK := "~" CaptureHK
	
	Hotkey, %CaptureHK%, Capture, On
	savedCHK := CaptureHK
	
	Return
}
	
SetRaidSkillKey:
{
	If RaidSkillHK in +,^,!,+^,+!,^!,+^!
		return
	
	If (savedSHK)
	{
		Hotkey, %savedSHK%, Capture, Off
		savedSHK .= " OFF"
	}
	
	If (RaidSkillHK = "")
	{
		savedSHK =
		return
	}
	
	Gui, Submit, NoHide
	
	If StrLen(RaidSkillHK) = 1
		RaidSkillHK := "~" RaidSkillHK
	
	Hotkey, %RaidSkillHK%, GetRaidSkill, On
	savedSHK := RaidSkillHK
	
	Return
}
	
SetMonitor:
{
	if (IsMainMonitor)
	{
		WinGet, ActiveID, ID, BlueStacks App Player
		SysGet, monitorCount, MonitorCount
		
		if (monitorCount = 1)
		{
			MsgBox, 이동할 수 없습니다.
		}
		else
		{
			log := "# 화면 이동 : 주 모니터 -> 서브 모니터"
			AddLog(log)
			moveX := A_ScreenWidth + 100
			WinMove, ahk_id %ActiveID%,, %moveX%, 100
			WinSet, AlwaysOnTop, On, BlueStacks App Player
			IsMainMonitor := 0
		}
	}
	else
	{
		log := "# 화면 이동 : 서브 모니터 -> 주 모니터"
		AddLog(log)
		
		WinGet, ActiveID, ID, BlueStacks App Player
		WinMove, ahk_id %ActiveID%,, 200, 100
		WinSet, AlwaysOnTop, On, BlueStacks App Player
		IsMainMonitor := 1
	}

	Return
}

Capture:
{
	fileName := "Capture\" A_DD "_" A_HOUR "_" A_MIN "_" A_SEC "_capture.png"
	Capture(fileName)

	return
}

GetRaidSkill:
{
	if (RaidWave)
	{
		log := "# 스킬 가져오기: 꼭 자동 스킬 및 예약된 스킬을 해제하십시오"
		AddLog(log)
		if (RaidWave = 1)
		{
			log := "# 스킬 가져오기: 첫번째 웨이브 보호진형 스킬"
			AddLog(log)
			IfExist,    "Image\Raid\SkillRefresh12.bmp"
			FileDelete, "Image\Raid\SkillRefresh12.bmp"
			IfExist,    "Image\Raid\SkillRefresh11.bmp"
			FileDelete, "Image\Raid\SkillRefresh11.bmp"
			
			CaptureSquare("Image\Raid\SkillRefresh12.bmp", 374, 326, 396, 374)
			CaptureSquare("Image\Raid\SkillRefresh11.bmp", 374, 275, 396, 322)
			
			log := "# 스킬 가져오기: 완료"
			AddLog(log)
		}
		else if (RaidWave = 2)
		{
			log := "# 스킬 가져오기: 두번째 웨이브 보호진형 스킬"
			AddLog(log)
			IfExist, "Image\Raid\SkillRefresh22.bmp"
			FileDelete, "Image\Raid\SkillRefresh22.bmp"
			IfExist, "Image\Raid\SkillRefresh21.bmp"
			FileDelete, "Image\Raid\SkillRefresh21.bmp"
			CaptureSquare("Image\Raid\SkillRefresh22.bmp", 374, 326, 396, 374)
			CaptureSquare("Image\Raid\SkillRefresh21.bmp", 374, 275, 396, 322)
			log := "# 스킬 가져오기: 완료"
			AddLog(log)
		}
		else
		{
			log := "# 스킬 가져오기: 비정상 웨이브입니다."
			AddLog(log)
		}
	}
	else
	{
		log := "# 스킬 가져오기: 레이드 전투 중이 아닙니다"
		AddLog(log)
	}

	Return
}
	
RadioDefault:
{
	log := "# 속도 : 표준"
	AddLog(log)
	
	TIME_REFRESH   := 200
	TIME_WAITPOPUP := 1000
	TIME_CLICK     := 1000
	TIME_DRAG      := 1500
	TIME_IMAGE     := 700
	TIME_RESTART   := 700
	
	Return
}
	
RadioSpeedy:
{
	log := "# 속도 : 고속"
	AddLog(log)
	
	TIME_REFRESH   := 100
	TIME_WAITPOPUP := 700
	TIME_CLICK     := 500
	TIME_DRAG      := 700
	TIME_IMAGE     := 200
	TIME_RESTART   := 300
	
	Return
}

RadioSetting:
{
	log := "# 속도 : 설정"
	AddLog(log)
	
	GuiControlGet, TIME_REFRESH,   W_SpeedSetup:
	GuiControlGet, TIME_WAITPOPUP, W_SpeedSetup:
	GuiControlGet, TIME_CLICK,     W_SpeedSetup:
	GuiControlGet, TIME_DRAG,      W_SpeedSetup:
	GuiControlGet, TIME_IMAGE,     W_SpeedSetup:
	GuiControlGet, TIME_RESTART,   W_SpeedSetup:
	
	Return
}

RadioInit:
{
	log := "# 속도 : 표준"
	AddLog(log)
	
	TIME_REFRESH   := 200
	TIME_WAITPOPUP := 1000
	TIME_CLICK     := 1000
	TIME_DRAG      := 1500
	TIME_IMAGE     := 700
	TIME_RESTART   := 700
	
	GuiControl, W_SpeedSetup:, TIME_REFRESH,   %TIME_REFRESH%
	GuiControl, W_SpeedSetup:, TIME_WAITPOPUP, %TIME_WAITPOPUP%
	GuiControl, W_SpeedSetup:, TIME_CLICK,     %TIME_CLICK%
	GuiControl, W_SpeedSetup:, TIME_DRAG,      %TIME_DRAG%
	GuiControl, W_SpeedSetup:, TIME_IMAGE,     %TIME_IMAGE%
	GuiControl, W_SpeedSetup:, TIME_RESTART,   %TIME_RESTART%
	
	Return
}

SelectBlueStacks:
{
	FileSelectFile, blueStacks
	GuiControl, W_Bluestacks:, BlueStacksLocation, %blueStacks%
	BlueStacksFile := blueStacks
	
	Return
}

SaveOption:
{
	IfExist, %OptionFile%
		FileDelete, %OptionFile%

	WinGetPos, posX, posY, width, height,  %MacroID%
	
	IniWrite, %posX%,			%OptionFile%,	Position,	X
	IniWrite, %posY%,			%OptionFile%,	Position,	Y
	IniWrite, %IsMainMonitor%,	%OptionFile%,	Monitor,	IsMainMonitor
	
	{	; Main
		GuiControlGet,	NBSendHonor,            	W_Main:
		GuiControlGet,	NBTower,                	W_Main:
		GuiControlGet,	NBArena,                	W_Main:
		GuiControlGet,	NBRaid,                 	W_Main:
		GuiControlGet,	NBAdventure,            	W_Main:
		GuiControlGet,	NBGuildAttendance,      	W_Main:
		
		IniWrite,		%NBSendHonor%,				%OptionFile%,	Main,		NBSendHonor
		IniWrite,		%NBTower%,					%OptionFile%,	Main,		NBTower
		IniWrite,		%NBArena%,					%OptionFile%,	Main,		NBArena
		IniWrite,		%NBRaid%,					%OptionFile%,	Main,		NBRaid
		IniWrite,		%NBAdventure%,				%OptionFile%,	Main,		NBAdventure
		IniWrite,		%NBGuildAttendance%,		%OptionFile%,	Main,		NBGuildAttendance
	}
	
	{	; Setting
		{
			GuiControlGet,	MainAdventureLocation,		W_Setting:
			GuiControlGet,	SubAdventureLocation,		W_Setting:
			GuiControlGet,	TeamAdventureM,				W_Setting:
			GuiControlGet,	TeamAdventureS,				W_Setting:
			GuiControlGet,	PSAdventureM,				W_Setting:
			GuiControlGet,	PSAdventureS,				W_Setting:
			GuiControlGet,	SKAdventureM,				W_Setting:
			GuiControlGet,	SKAdventureS,				W_Setting:
			GuiControlGet,	IslandDifficulty,			W_Setting:
			
			IniWrite,		%MainAdventureLocation%,	%OptionFile%,	Adventure,	MainAdventureLocation
			IniWrite,		%SubAdventureLocation%,		%OptionFile%,	Adventure,	SubAdventureLocation
			IniWrite,		%TeamAdventureM%,			%OptionFile%,	Adventure,	TeamAdventureM
			IniWrite,		%TeamAdventureS%,			%OptionFile%,	Adventure,	TeamAdventureS
			IniWrite,		%PSAdventureM%,				%OptionFile%,	Adventure,	PSAdventureM
			IniWrite,		%PSAdventureS%,				%OptionFile%,	Adventure,	PSAdventureS
			IniWrite,		%SKAdventureM%,				%OptionFile%,	Adventure,	SKAdventureM
			IniWrite,		%SKAdventureS%,				%OptionFile%,	Adventure,	SKAdventureS
			IniWrite,		%IslandDifficulty%,			%OptionFile%,	Adventure,	IslandDifficulty
		}
		
		{
			GuiControlGet,	IsHeroChange,				W_Setting:
			GuiControlGet,	IsHeroSellingLowLevel,		W_Setting:
			GuiControlGet,	HeroChangeOption,			W_Setting:
			GuiControlGet,	HeroSellingOption,			W_Setting:
			
			StringLeft,		HeroChangeOptionValue,		HeroChangeOption,	1
			StringLeft,		HeroSellingOptionValue,		HeroSellingOption,	1
			
			IniWrite,		%IsHeroChange%,				%OptionFile%,	Adventure,	IsHeroChange
			IniWrite,		%IsHeroSellingLowLevel%,	%OptionFile%,	Adventure,	IsHeroSellingLowLevel
			IniWrite,		%HeroChangeOptionValue%,	%OptionFile%,	Adventure,	HeroChangeOption
			IniWrite,		%HeroSellingOptionValue%,	%OptionFile%,	Adventure,	HeroSellingOption
		}
		
		{
			GuiControlGet,	IsTowerGoldroom,			W_Setting:
			GuiControlGet,	IsTowerFloor,				W_Setting:
			GuiControlGet,	TeamTower,					W_Setting:
			
			IniWrite,		%IsTowerGoldroom%,			%OptionFile%,	Tower,		IsTowerGoldroom
			IniWrite,		%IsTowerFloor%,				%OptionFile%,	Tower,		IsTowerFloor
			IniWrite,		%TeamTower%,				%OptionFile%,	Tower,		TeamTower
		}
		
		{
			GuiControlGet,	IsArenaQuickLoss,			W_Setting:
			GuiControlGet,	PSArena,					W_Setting:
			
			IniWrite,		%IsArenaQuickLoss%,			%OptionFile%,	Arena,		IsArenaQuickLoss
			IniWrite,		%PSArena%,					%OptionFile%,	Arena,		PSArena
		}
		
		{
			GuiControlGet,	IsCallFriends,				W_Setting:
			GuiControlGet,	IsSelectedSkill,			W_Setting:
			GuiControlGet,	IsCapture,					W_Setting:
			GuiControlGet,	TimeWait,					W_Setting:
			
			IniWrite,		%IsCallFriends%,			%OptionFile%,	Option,		IsCallFriends
			IniWrite,		%IsSelectedSkill%,			%OptionFile%,	Option,		IsSelectedSkill
			IniWrite,		%IsCapture%,				%OptionFile%,	Option,		IsCapture
			IniWrite,		%TimeWait%,					%OptionFile%,	Option,		TimeWait
		}
	}
	
	{	; Strengthen
		GuiControlGet,	IsStrengthenHero,			W_StrengthenSetup:
		GuiControlGet,	IsStrengthenCore,			W_StrengthenSetup:
		
		GuiControlGet,	SacrificeStar,				W_StrengthenSetup:
		GuiControlGet,	StrengthenStar2,			W_StrengthenSetup:
		GuiControlGet,	StrengthenStar1,			W_StrengthenSetup:
		
		GuiControlGet,	StrengthenCoreStar,			W_StrengthenSetup:
		GuiControlGet,	StrengthenCore1th,			W_StrengthenSetup:
		GuiControlGet,	StrengthenCore2th,			W_StrengthenSetup:
		GuiControlGet,	StrengthenCore3th,			W_StrengthenSetup:
		GuiControlGet,	StrengthenCore4th,			W_StrengthenSetup:
		GuiControlGet,	StrengthenCore5th,			W_StrengthenSetup:
		GuiControlGet,	GradeFirst,					W_StrengthenSetup:
		GuiControlGet,	KindFirst,					W_StrengthenSetup:
		
		GuiControlGet,	3CoreSt,					W_StrengthenSetup:
		GuiControlGet,	IsNotStrengthen2Core1,		W_StrengthenSetup:
		GuiControlGet,	IsNotStrengthen2Core2,		W_StrengthenSetup:
		GuiControlGet,	IsNotStrengthen2Core3,		W_StrengthenSetup:
		GuiControlGet,	IsNotStrengthen2Core4,		W_StrengthenSetup:
		GuiControlGet,	IsNotStrengthen2Core5,		W_StrengthenSetup:
		
		IniWrite,		%IsStrengthenHero%,			%OptionFile%,	Strengthen,	IsStrengthenHero
		IniWrite,		%IsStrengthenCore%,			%OptionFile%,	Strengthen,	IsStrengthenCore
		
		IniWrite,		%SacrificeStar%,			%OptionFile%,	Strengthen,	SacrificeStar
		IniWrite,		%StrengthenStar2%,			%OptionFile%,	Strengthen,	StrengthenStar2
		IniWrite,		%StrengthenStar1%,			%OptionFile%,	Strengthen,	StrengthenStar1
		
		IniWrite,		%StrengthenCoreStar%,		%OptionFile%,	Strengthen,	StrengthenCoreStar
		IniWrite,		%StrengthenCore1th%,		%OptionFile%,	Strengthen,	StrengthenCore1th
		IniWrite,		%StrengthenCore2th%,		%OptionFile%,	Strengthen,	StrengthenCore2th
		IniWrite,		%StrengthenCore3th%,		%OptionFile%,	Strengthen,	StrengthenCore3th
		IniWrite,		%StrengthenCore4th%,		%OptionFile%,	Strengthen,	StrengthenCore4th
		IniWrite,		%StrengthenCore5th%,		%OptionFile%,	Strengthen,	StrengthenCore5th
		IniWrite,		%GradeFirst%,				%OptionFile%,	Strengthen,	GradeFirst
		IniWrite,		%KindFirst%,				%OptionFile%,	Strengthen,	KindFirst
		
		IniWrite,		%3CoreSt%,					%OptionFile%,	Strengthen,	3CoreSt
		IniWrite,		%IsNotStrengthen2Core1%,	%OptionFile%,	Strengthen,	IsNotStrengthen2Core1
		IniWrite,		%IsNotStrengthen2Core2%,	%OptionFile%,	Strengthen,	IsNotStrengthen2Core2
		IniWrite,		%IsNotStrengthen2Core3%,	%OptionFile%,	Strengthen,	IsNotStrengthen2Core3
		IniWrite,		%IsNotStrengthen2Core4%,	%OptionFile%,	Strengthen,	IsNotStrengthen2Core4
		IniWrite,		%IsNotStrengthen2Core5%,	%OptionFile%,	Strengthen,	IsNotStrengthen2Core5
	}
	
	{	; Skill
		Loop, 3 {
			SkillLoop := A_Index
		
			Loop, 3 {
				WaveLoop := A_Index
				
				Loop, 3 {
					SkillHero =		Skill%SkillLoop%Wave%WaveLoop%Hero%A_Index%
					
					GuiControlGet,	%SkillHero%,		W_SkillSetup:
					GuiControlGet,	%SkillHero%Skill,	W_SkillSetup:
					Hero	:=		%SkillHero%
					Skill	:=		%SkillHero%Skill
					IniWrite,		%Hero%,				%OptionFile%,	Skill%SkillLoop%Wave%WaveLoop%,	%SkillHero%
					IniWrite,		%Skill%,			%OptionFile%,	Skill%SkillLoop%Wave%WaveLoop%,	%SkillHero%Skill
				}
			}
		}

		Loop, 2 {
			WaveLoop := A_Index
			
			Loop, 2 {
				SkillHero = 		GoldWave%WaveLoop%Hero%A_Index%
			
				GuiControlGet,		%SkillHero%,		W_SkillSetup:
				GuiControlGet,		%SkillHero%Skill,	W_SkillSetup:
				Hero	:=			%SkillHero%
				Skill	:=			%SkillHero%Skill
				IniWrite,			%Hero%,				%OptionFile%,	GoldWave%WaveLoop%,	%SkillHero%
				IniWrite,			%Skill%,			%OptionFile%,	GoldWave%WaveLoop%,	%SkillHero%Skill
			}
		}
	}
	
	{	; Key
		GuiControlGet,	IsBuyKeyRubyAlways,				W_BuyKeySetup:
		GuiControlGet,	IsBuyKeyRubyHotTime,			W_BuyKeySetup:
		GuiControlGet,	IsBuyKeyHonor,					W_BuyKeySetup:
		GuiControlGet,	IsBuyKeyHonorHotTime,			W_BuyKeySetup:
		GuiControlGet,	IsGetHonorInMailbox,			W_BuyKeySetup:
		GuiControlGet,	IsGetHonorInMailboxHotTime,		W_BuyKeySetup:
		GuiControlGet,	IsGetKeyInMailbox,				W_BuyKeySetup:
		GuiControlGet,	IsGetKeyInMailboxHotTime,		W_BuyKeySetup:
		GuiControlGet,	IsGetGoldWhenOpenMailbox,		W_BuyKeySetup:
		GuiControlGet,	IsGetRubyWhenOpenMailbox,		W_BuyKeySetup:
		
		IniWrite,		%IsBuyKeyRubyAlways%,			%OptionFile%,	Key,		IsBuyKeyRubyAlways
		IniWrite,		%IsBuyKeyRubyHotTime%,			%OptionFile%,	Key,		IsBuyKeyRubyHotTime
		IniWrite,		%IsBuyKeyHonor%,				%OptionFile%,	Key,		IsBuyKeyHonor
		IniWrite,		%IsBuyKeyHonorHotTime%,			%OptionFile%,	Key,		IsBuyKeyHonorHotTime
		IniWrite,		%IsGetHonorInMailbox%,			%OptionFile%,	Key,		IsGetHonorInMailbox
		IniWrite,		%IsGetHonorInMailboxHotTime%,	%OptionFile%,	Key,		IsGetHonorInMailboxHotTime
		IniWrite,		%IsGetKeyInMailbox%,			%OptionFile%,	Key,		IsGetKeyInMailbox
		IniWrite,		%IsGetKeyInMailboxHotTime%,		%OptionFile%,	Key,		IsGetKeyInMailboxHotTime
		IniWrite,		%IsGetGoldWhenOpenMailbox%,		%OptionFile%,	Key,		IsGetGoldWhenOpenMailbox
		IniWrite,		%IsGetRubyWhenOpenMailbox%,		%OptionFile%,	Key,		IsGetRubyWhenOpenMailbox
	}
	
	{	; Restart
		GuiControlGet,	IsRestartSendHonor,				W_RestartExecute:
		GuiControlGet,	IsRestartGuildAttendance,		W_RestartExecute:
		
		IniWrite,		%IsRestartSendHonor%,			%OptionFile%,	Restart,	IsRestartSendHonor
		IniWrite,		%IsRestartGuildAttendance%,		%OptionFile%,	Restart,	IsRestartGuildAttendance
	}
	
	{	; Raid
		GuiControlGet,		RaidRepeatCount,					W_RaidSetup:
		GuiControlGet,		RaidJoinCount,						W_RaidSetup:
		GuiControlGet,		RaidPlayerSkill,					W_RaidSetup:
		GuiControlGet,		RaidAwakenType,						W_RaidSetup:
		GuiControlGet,		RaidIsSkipReserveSkill,				W_RaidSetup:
		GuiControlGet,		RaidIsAttackUnderAnHour,			W_RaidSetup:
		
		IniWrite,			%RaidRepeatCount%,					%OptionFile%,	Raid,		RaidRepeatCount
		IniWrite,			%RaidJoinCount%,					%OptionFile%,	Raid,		RaidJoinCount
		IniWrite,			%RaidPlayerSkill%,					%OptionFile%,	Raid,		RaidPlayerSkill
		IniWrite,			%RaidAwakenType%,					%OptionFile%,	Raid,		RaidAwakenType
		IniWrite,			%RaidIsSkipReserveSkill%,			%OptionFile%,	Raid,		RaidIsSkipReserveSkill
		IniWrite,			%RaidIsAttackUnderAnHour%,			%OptionFile%,	Raid,		RaidIsAttackUnderAnHour
		
		Loop, 5 {
			GuiControlGet,	RaidFirstReserveSkill%A_Index%,		W_RaidSetup:
			GuiControlGet,	RaidFirstRepeatSkill%A_Index%,		W_RaidSetup:
			GuiControlGet,	RaidSecondReserveSkill%A_Index%,	W_RaidSetup:
			GuiControlGet,	RaidSecondRepeatSkill%A_Index%,		W_RaidSetup:
			
			FirstReserve	= RaidFirstReserveSkill%A_Index%
			FirstRepeat		= RaidFirstRepeatSkill%A_Index%
			SecondReserve	= RaidSecondReserveSkill%A_Index%
			SecondRepeat	= RaidSecondRepeatSkill%A_Index%
			
			FirstReserveSkill	:= %FirstReserve%
			FirstRepeatSkill	:= %FirstRepeat%
			SecondReserveSkill	:= %SecondReserve%
			SecondRepeatSkill	:= %SecondRepeat%
			
			IniWrite,		%FirstReserveSkill%,				%OptionFile%,	Raid,		%FirstReserve%
			IniWrite,		%FirstRepeatSkill%,					%OptionFile%,	Raid,		%FirstRepeat%
			IniWrite,		%SecondReserveSkill%,				%OptionFile%,	Raid,		%SecondReserve%
			IniWrite,		%SecondRepeatSkill%,				%OptionFile%,	Raid,		%SecondRepeat%
		}
	}
	
	{	; Siege
		GuiControlGet,		IsSkipReserveSkill,			W_SiegeSetup:
		
		IniWrite,			%IsSkipReserveSkill%,		%OptionFile%,	Siege,	IsSkipReserveSkill
		
		Loop, 3 {
			GuiControlGet,	StartBufferSkill%A_Index%,	W_SiegeSetup:
			BufferSkill :=	StartBufferSkill%A_Index%
			IniWrite,		%BufferSkill%,				%OptionFile%,	Siege,	StartBufferSkill%A_Index%
		}
		
		Loop, 5 {
			GuiControlGet,	BossStartSkill%A_Index%,	W_SiegeSetup:
			BossSkill :=	BossStartSkill%A_Index%
			IniWrite,		%BossSkill%,				%OptionFile%,	Siege,	BossStartSkill%A_Index%
		}
		
		Loop, 10 {
			GuiControlGet,	BossRepeatSkill%A_Index%,	W_SiegeSetup:
			RepeatSkill :=	BossRepeatSkill%A_Index%
			IniWrite,		%RepeatSkill%,				%OptionFile%,	Siege,	BossRepeatSkill%A_Index%
		}
	}
	
	{	; Speed
		GuiControlGet,	SpeedDefault,			W_Main:
		GuiControlGet,	SpeedSpeedy,			W_Main:
		GuiControlGet,	SpeedSetting,			W_Main:
		
		GuiControlGet,	TIME_REFRESH,			W_SpeedSetup:
		GuiControlGet,	TIME_WAITPOPUP,			W_SpeedSetup:
		GuiControlGet,	TIME_CLICK,				W_SpeedSetup:
		GuiControlGet,	TIME_DRAG,				W_SpeedSetup:
		GuiControlGet,	TIME_IMAGE,				W_SpeedSetup:
		GuiControlGet,	TIME_RESTART,			W_SpeedSetup:
		
		IniWrite,		%SpeedDefault%,			%OptionFile%,	Speed,	SpeedDefault
		IniWrite,		%SpeedSpeedy%,			%OptionFile%,	Speed,	SpeedSpeedy
		IniWrite,		%SpeedSetting%,			%OptionFile%,	Speed,	SpeedSetting
		
		IniWrite,		%TIME_REFRESH%,			%OptionFile%,	Speed,	TIME_REFRESH
		IniWrite,		%TIME_WAITPOPUP%,		%OptionFile%,	Speed,	TIME_WAITPOPUP
		IniWrite,		%TIME_CLICK%,			%OptionFile%,	Speed,	TIME_CLICK
		IniWrite,		%TIME_DRAG%,			%OptionFile%,	Speed,	TIME_DRAG
		IniWrite,		%TIME_IMAGE%,			%OptionFile%,	Speed,	TIME_IMAGE
		IniWrite,		%TIME_RESTART%,			%OptionFile%,	Speed,	TIME_RESTART
	}
	
	{	; Push
		GuiControlGet,	Token,					W_PushSetup:
		GuiControlGet,	AlarmAll,				W_PushSetup:
		GuiControlGet,	AlarmPeriodic,			W_PushSetup:
		GuiControlGet,	AlarmImage,				W_PushSetup:
		
		IniWrite,		%Token%,				%OptionFile%, Push, Token
		IniWrite,		%AlarmAll%,				%OptionFile%, Push, AlarmAll
		IniWrite,		%AlarmPeriodic%,		%OptionFile%, Push, AlarmPeriodic
		IniWrite,		%AlarmImage%,			%OptionFile%, Push, AlarmImage
	}
	
	{	; HotKey
		GuiControlGet,	OneClickHK,				W_HotKeySetup:
		GuiControlGet,	ResetHK,				W_HotKeySetup:
		GuiControlGet,	MonitorHK,				W_HotKeySetup:
		GuiControlGet,	CaptureHK,				W_HotKeySetup:
		
		IniWrite,		%MonitorHK%,			%OptionFile%,	HotKey,	MonitorHotKey
		IniWrite,		%CaptureHK%,			%OptionFile%,	HotKey,	CaptureHotKey
		IniWrite,		%ResetHK%,				%OptionFile%,	HotKey,	ResetHotKey
		IniWrite,		%OneClickHK%,			%OptionFile%,	HotKey,	OneClickHotKey
	}
	
	{	; Bluestacks
		GuiControlGet,	BlueStacksLocation,		W_Bluestacks:
		GuiControlGet,	IsAutoRestart,			W_Bluestacks:
		
		IniWrite,		%IsAutoRestart%,		%OptionFile%,	BlueStacks,	IsAutoRestart
		IniWrite,		%BlueStacksLocation%,	%OptionFile%,	BlueStacks,	BlueStacksLocation
	}
	
	AddLog("# 설정 저장 완료")
	
	gosub, W_SettingGuiClose
	
	Return
}

LoadOption:
{
	IniRead, initX, %OptionFile%, Position, X
	IniRead, initY, %OptionFile%, Position, Y

	if ((initX < 0) || (initY < 0)) {
		initX := 100
		initY := 100
	}

	IniRead, IniIsMainMonitor, %OptionFile%, Monitor, IsMainMonitor

	if (IniIsMainMonitor = "ERROR") {
		IsMainMonitor := 1
		
		RegRead, bluestacksDir, HKEY_LOCAL_MACHINE, SOFTWARE\BlueStacks\, InstallDir
		BlueStacksLocation := bluestacksDir "HD-RunApp.exe"
		
		GuiControl,	W_Main:,					SpeedDefault,				1
		
		GuiControl,	W_Main:,					NBSendHonor,				1
		GuiControl,	W_Main:,					NBTower,					1
		GuiControl,	W_Main:,					NBArena,					1
		GuiControl,	W_Main:,					NBRaid,						0
		GuiControl,	W_Main:,					NBAdventure,				1
		GuiControl,	W_Main:,					NBGuildAttendance,			0
		
		GuiControl, W_Setting: Choose,			MainAdventureLocation,		최근 모험
		GuiControl, W_Setting: Choose,			SubAdventureLocation,		최근 모험
		GuiControl, W_Setting: Choose,			TeamAdventureM,				1
		GuiControl, W_Setting: Choose,			TeamAdventureS,				1
		GuiControl, W_Setting: Choose,			PSAdventureM,				1
		GuiControl, W_Setting: Choose,			PSAdventureS,				1
		GuiControl, W_Setting: Choose,			SKAdventureM,				1
		GuiControl, W_Setting: Choose,			SKAdventureS,				1
		GuiControl, W_Setting: Choose,			IslandDifficulty,			쉬움
		GuiControl, W_Setting: Choose,			HeroChangeOption,			1
		GuiControl, W_Setting:,					IsHeroChange,				1
		GuiControl, W_Setting: Choose,			HeroSellingOption,			1
		GuiControl, W_Setting:,					IsHeroSellingLowLevel,		0
		GuiControl, W_Setting:,					IsTowerGoldroom,			1
		GuiControl, W_Setting:,					IsTowerFloor,				0
		GuiControl, W_Setting: Choose,			TeamTower,					1
		GuiControl, W_Setting:,					IsArenaQuickLoss,			0
		GuiControl, W_Setting: Choose,			PSArena,					1
		GuiControl, W_Setting:,					IsCallFriends,				1
		GuiControl, W_Setting:,					IsSelectedSkill,			1
		GuiControl, W_Setting:,       			IsCapture,					1
		GuiControl, W_Setting: Choose,			TimeWait,					60분
		
		GuiControl, W_StrengthenSetup:,			IsStrengthenHero,			0
		GuiControl, W_StrengthenSetup:,			IsStrengthenCore,			0
		GuiControl, W_StrengthenSetup: Choose,	SacrificeStar,				2
		GuiControl, W_StrengthenSetup: Choose,	StrengthenStar2,			3
		GuiControl, W_StrengthenSetup: Choose,	StrengthenStar1,			1
		GuiControl, W_StrengthenSetup: Choose,	StrengthenCoreStar,			7
		GuiControl, W_StrengthenSetup: Choose,	StrengthenCore1th,			5
		GuiControl, W_StrengthenSetup: Choose,	StrengthenCore2th,			2
		GuiControl, W_StrengthenSetup: Choose,	StrengthenCore3th,			1
		GuiControl, W_StrengthenSetup: Choose,	StrengthenCore4th,			4
		GuiControl, W_StrengthenSetup: Choose,	StrengthenCore5th,			3
		GuiControl, W_StrengthenSetup:,			GradeFirst,					1
		GuiControl, W_StrengthenSetup:,			KindFirst,					0
		GuiControl, W_StrengthenSetup: Choose,	3CoreSt,					1
		GuiControl, W_StrengthenSetup:,			IsNotStrengthen2Core1,		0
		GuiControl, W_StrengthenSetup:,			IsNotStrengthen2Core2,		0
		GuiControl, W_StrengthenSetup:,			IsNotStrengthen2Core3,		0
		GuiControl, W_StrengthenSetup:,			IsNotStrengthen2Core4,		0
		GuiControl, W_StrengthenSetup:,			IsNotStrengthen2Core5,		0
		
		GuiControl, W_BuyKeySetup:,				IsBuyKeyRubyAlways,			0
		GuiControl, W_BuyKeySetup:,				IsBuyKeyRubyHotTime,		0
		GuiControl, W_BuyKeySetup:,				IsBuyKeyHonor,				0
		GuiControl, W_BuyKeySetup:,				IsBuyKeyHonorHotTime,		0
		GuiControl, W_BuyKeySetup:,				IsGetKeyInMailbox,			0
		GuiControl, W_BuyKeySetup:,				IsGetKeyInMailboxHotTime,	0
		
		GuiControl, W_RestartExecute:,			IsRestartSendHonor,			1
		GuiControl, W_RestartExecute:,			IsRestartGuildAttendance,	1
		
		GuiControl, W_RaidSetup: Choose,		RaidAwakenType,				2. 일반용
		
		GuiControl,	W_PushSetup:,   			AlarmAll,					0
		GuiControl,	W_PushSetup:,   			AlarmPeriodic,				0
		GuiControl,	W_PushSetup:,   			AlarmImage,					0
		
		GuiControl,	W_HotKeySetup:,				OneClickHK,					+F9
		GuiControl,	W_HotKeySetup:,				ResetHK,					+F10
		GuiControl,	W_HotKeySetup:,				MonitorHK,					+F11
		GuiControl,	W_HotKeySetup:,				CaptureHK,					+F12
		
		GuiControl,	W_Bluestacks:,				BlueStacksLocation,			%BlueStacksLocation%
		GuiControl,	W_Bluestacks:,				IsAutoRestart,				1
		
		AddLog("# 설정 불러오기 오류 - 초기화")
		
		gosub, SaveOption
		
		Return
	}

	{	; Main
		IniRead, IniNBSendHonor,				%OptionFile%, Main,			NBSendHonor
		IniRead, IniNBTower,					%OptionFile%, Main,			NBTower
		IniRead, IniNBArena,					%OptionFile%, Main,			NBArena
		IniRead, IniNBRaid,						%OptionFile%, Main,			NBRaid
		IniRead, IniNBAdventure,				%OptionFile%, Main,			NBAdventure
		IniRead, IniNBGuildAttendance,			%OptionFile%, Main,			NBGuildAttendance
		
		GuiControl, W_Main:,					NBSendHonor,				%IniNBSendHonor%
		GuiControl, W_Main:,					NBGuildAttendance,			%IniNBGuildAttendance%
		GuiControl, W_Main:,					NBTower,					%IniNBTower%
		GuiControl, W_Main:,					NBArena,					%IniNBArena%
		GuiControl, W_Main:,					NBRaid,						%IniNBRaid%
		GuiControl, W_Main:,					NBAdventure,				%IniNBAdventure%
	}
	
	{	; Setting
		IniRead, IniMainAdventureLocation,		%OptionFile%, Adventure,	MainAdventureLocation
		IniRead, IniSubAdventureLocation,		%OptionFile%, Adventure,	SubAdventureLocation
		IniRead, IniTeamAdventureM,				%OptionFile%, Adventure,	TeamAdventureM
		IniRead, IniTeamAdventureS,				%OptionFile%, Adventure,	TeamAdventureS
		IniRead, IniPSAdventureM,				%OptionFile%, Adventure,	PSAdventureM
		IniRead, IniPSAdventureS,				%OptionFile%, Adventure,	PSAdventureS
		IniRead, IniSKAdventureM,				%OptionFile%, Adventure,	SKAdventureM
		IniRead, IniSKAdventureS,				%OptionFile%, Adventure,	SKAdventureS
		IniRead, IniIslandDifficulty,			%OptionFile%, Adventure,	IslandDifficulty
		
		IniRead, IniIsHeroChange,				%OptionFile%, Adventure,	IsHeroChange
		IniRead, IniIsHeroSellingLowLevel,		%OptionFile%, Adventure,	IsHeroSellingLowLevel
		IniRead, IniHeroChangeOption,			%OptionFile%, Adventure,	HeroChangeOption
		IniRead, IniHeroSellingOption,			%OptionFile%, Adventure,	HeroSellingOption
		
		IniRead, IniIsTowerGoldroom,			%OptionFile%, Tower,		IsTowerGoldroom
		IniRead, IniIsTowerFloor,				%OptionFile%, Tower,		IsTowerFloor
		IniRead, IniTeamTower,					%OptionFile%, Tower,		TeamTower
		
		IniRead, IniIsArenaQuickLoss,			%OptionFile%, Arena,		IsArenaQuickLoss
		IniRead, IniArenaPlayerSkill,			%OptionFile%, Arena,		PSArena
		
		IniRead, IniIsCallFriends,				%OptionFile%, Option,		IsCallFriends
		IniRead, IniIsSelectedSkill,			%OptionFile%, Option,		IsSelectedSkill
		IniRead, IniIsCapture,					%OptionFile%, Option,		IsCapture
		IniRead, IniTimeWait,					%OptionFile%, Option,		TimeWait
	
		GuiControl, W_Setting: Choose,			MainAdventureLocation,		%IniMainAdventureLocation%
		GuiControl, W_Setting: Choose,			SubAdventureLocation,		%IniSubAdventureLocation%
		GuiControl, W_Setting: Choose,			TeamAdventureM,				%IniTeamAdventureM%
		GuiControl, W_Setting: Choose,			TeamAdventureS,				%IniTeamAdventureS%
		GuiControl, W_Setting: Choose,			PSAdventureM,				%IniPSAdventureM%
		GuiControl, W_Setting: Choose,			PSAdventureS,				%IniPSAdventureS%
		GuiControl, W_Setting: Choose,			SKAdventureM,				%IniSKAdventureM%
		GuiControl, W_Setting: Choose,			SKAdventureS,				%IniSKAdventureS%
		GuiControl, W_Setting: Choose,			IslandDifficulty,			%IniIslandDifficulty%
		
		GuiControl, W_Setting: Choose,			HeroChangeOption,			%IniHeroChangeOption%
		GuiControl, W_Setting:,					IsHeroChange,				%IniIsHeroChange%
		GuiControl, W_Setting: Choose,			HeroSellingOption,			%IniHeroSellingOption%
		GuiControl, W_Setting:,					IsHeroSellingLowLevel,		%IniIsHeroSellingLowLevel%
		
		GuiControl, W_Setting:,					IsTowerGoldroom,			%IniIsTowerGoldroom%
		GuiControl, W_Setting:,					IsTowerFloor,				%IniIsTowerFloor%
		GuiControl, W_Setting: Choose,			TeamTower,					%IniTeamTower%
		
		GuiControl, W_Setting:,					IsArenaQuickLoss,			%IniIsArenaQuickLoss%
		GuiControl, W_Setting: Choose,			PSArena,					%IniArenaPlayerSkill%
		
		GuiControl, W_Setting:,					IsCallFriends,				%IniIsCallFriends%
		GuiControl, W_Setting:,					IsSelectedSkill,			%IniIsSelectedSkill%
		GuiControl, W_Setting:,       			IsCapture,					%IniIsCapture%
		GuiControl, W_Setting: Choose,			TimeWait,					%IniTimeWait%
	}
	
	{	; Strengthen
		IniRead, IniIsStrengthenHero,			%OptionFile%, Strengthen, 	IsStrengthenHero
		IniRead, IniIsStrengthenCore,			%OptionFile%, Strengthen, 	IsStrengthenCore
		
		IniRead, IniSacrificeStar,				%OptionFile%, Strengthen, 	SacrificeStar
		IniRead, IniStrengthenStar2,			%OptionFile%, Strengthen, 	StrengthenStar2
		IniRead, IniStrengthenStar1,			%OptionFile%, Strengthen, 	StrengthenStar1
		
		IniRead, IniStrengthenCoreStar,			%OptionFile%, Strengthen, 	StrengthenCoreStar
		IniRead, IniStrengthenCore1th,			%OptionFile%, Strengthen,	StrengthenCore1th
		IniRead, IniStrengthenCore2th,			%OptionFile%, Strengthen,	StrengthenCore2th
		IniRead, IniStrengthenCore3th,			%OptionFile%, Strengthen,	StrengthenCore3th
		IniRead, IniStrengthenCore4th,			%OptionFile%, Strengthen,	StrengthenCore4th
		IniRead, IniStrengthenCore5th,			%OptionFile%, Strengthen,	StrengthenCore5th
		IniRead, IniGradeFirst,					%OptionFile%, Strengthen, 	GradeFirst
		IniRead, IniKindFirst,					%OptionFile%, Strengthen, 	KindFirst
		
		IniRead, IniSacrificeHeroTo3Star,		%OptionFile%, Strengthen, 	3CoreSt
		IniRead, IniIsNotStrengthen2Core1, 		%OptionFile%, Strengthen,	IsNotStrengthen2Core1
		IniRead, IniIsNotStrengthen2Core2, 		%OptionFile%, Strengthen,	IsNotStrengthen2Core2
		IniRead, IniIsNotStrengthen2Core3, 		%OptionFile%, Strengthen,	IsNotStrengthen2Core3
		IniRead, IniIsNotStrengthen2Core4, 		%OptionFile%, Strengthen,	IsNotStrengthen2Core4
		IniRead, IniIsNotStrengthen2Core5, 		%OptionFile%, Strengthen,	IsNotStrengthen2Core5
		
		GuiControl, W_StrengthenSetup:,			IsStrengthenHero,			%IniIsStrengthenHero%
		GuiControl, W_StrengthenSetup:,			IsStrengthenCore,			%IniIsStrengthenCore%
		
		GuiControl, W_StrengthenSetup: Choose,	SacrificeStar,				%IniSacrificeStar%
		GuiControl, W_StrengthenSetup: Choose,	StrengthenStar2,			%IniStrengthenStar2%
		GuiControl, W_StrengthenSetup: Choose,	StrengthenStar1,			%IniStrengthenStar1%
		
		GuiControl, W_StrengthenSetup: Choose,	StrengthenCoreStar,			%IniStrengthenCoreStar%
		GuiControl, W_StrengthenSetup: Choose,	StrengthenCore1th,			%IniStrengthenCore1th%
		GuiControl, W_StrengthenSetup: Choose,	StrengthenCore2th,			%IniStrengthenCore2th%
		GuiControl, W_StrengthenSetup: Choose,	StrengthenCore3th,			%IniStrengthenCore3th%
		GuiControl, W_StrengthenSetup: Choose,	StrengthenCore4th,			%IniStrengthenCore4th%
		GuiControl, W_StrengthenSetup: Choose,	StrengthenCore5th,			%IniStrengthenCore5th%
		GuiControl, W_StrengthenSetup:,			GradeFirst,					%IniGradeFirst%
		GuiControl, W_StrengthenSetup:,			KindFirst,					%IniKindFirst%
		
		GuiControl, W_StrengthenSetup: Choose,	3CoreSt,					%IniSacrificeHeroTo3Star%
		GuiControl, W_StrengthenSetup:,			IsNotStrengthen2Core1,		%IniIsNotStrengthen2Core1%
		GuiControl, W_StrengthenSetup:,			IsNotStrengthen2Core2,		%IniIsNotStrengthen2Core2%
		GuiControl, W_StrengthenSetup:,			IsNotStrengthen2Core3,		%IniIsNotStrengthen2Core3%
		GuiControl, W_StrengthenSetup:,			IsNotStrengthen2Core4,		%IniIsNotStrengthen2Core4%
		GuiControl, W_StrengthenSetup:,			IsNotStrengthen2Core5,		%IniIsNotStrengthen2Core5%
	}
	
	{	; Skill
		Loop, 3 {
			SkillLoop := A_Index
			
			Loop, 3 {
				WaveLoop := A_Index
				
				Loop, 3 {
					SkillHero = Skill%SkillLoop%Wave%WaveLoop%Hero%A_Index%
				
					IniRead, Ini%SkillHero%,      %OptionFile%, Skill%SkillLoop%Wave%WaveLoop%, %SkillHero%
					IniRead, Ini%SkillHero%Skill, %OptionFile%, Skill%SkillLoop%Wave%WaveLoop%, %SkillHero%Skill
					Hero  := Ini%SkillHero%
					Skill := Ini%SkillHero%Skill
					
					if (Hero = "사용 안함") {
						HeroNumber = 1
					} else {
						StringLeft, HeroNumber, Hero, 1
						HeroNumber++
					}
					
					if (Skill = "사용 안함") {
						SkillNumber = 1
					} else {
						StringLeft, SkillNumber, Skill, 10
						SkillNumber++
					}
					
					GuiControl, W_SkillSetup: Choose, %SkillHero%,      %HeroNumber%
					GuiControl, W_SkillSetup: Choose, %SkillHero%Skill, %SkillNumber%
				}
			}
		}
		
		Loop, 2 {
			WaveLoop := A_Index
			
			Loop, 2 {
				SkillHero = GoldWave%WaveLoop%Hero%A_Index%
			
				IniRead, Ini%SkillHero%,      %OptionFile%, GoldWave%WaveLoop%, %SkillHero%
				IniRead, Ini%SkillHero%Skill, %OptionFile%, GoldWave%WaveLoop%, %SkillHero%Skill
				Hero  := Ini%SkillHero%
				Skill := Ini%SkillHero%Skill
				
				if (Hero = "사용 안함") {
					HeroNumber = 1
				} else {
					StringLeft, HeroNumber, Hero, 1
					HeroNumber++
				}
				
				if (Skill = "사용 안함") {
					SkillNumber = 1
				} else {
					StringLeft, SkillNumber, Skill, 10
					SkillNumber++
				}
				
				GuiControl, W_SkillSetup: Choose, %SkillHero%,      %HeroNumber%
				GuiControl, W_SkillSetup: Choose, %SkillHero%Skill, %SkillNumber%
			}
		}
	}
	
	{	; Key
		IniRead, IniIsBuyKeyRubyAlways,				%OptionFile%,	Key,			IsBuyKeyRubyAlways
		IniRead, IniIsBuyKeyRubyHotTime,			%OptionFile%,	Key,			IsBuyKeyRubyHotTime
		IniRead, IniIsBuyKeyHonor,					%OptionFile%,	Key,			IsBuyKeyHonor
		IniRead, IniIsBuyKeyHonorHotTime,			%OptionFile%,	Key,			IsBuyKeyHonorHotTime
		IniRead, IniIsGetHonorInMailbox,			%OptionFile%,	Key,			IsGetHonorInMailbox
		IniRead, IniIsGetHonorInMailboxHotTime,		%OptionFile%,	Key,			IsGetHonorInMailboxHotTime
		IniRead, IniIsGetKeyInMailbox,				%OptionFile%,	Key,			IsGetKeyInMailbox
		IniRead, IniIsGetKeyInMailboxHotTime,		%OptionFile%,	Key,			IsGetKeyInMailboxHotTime
		IniRead, IniIsGetRubyWhenOpenMailbox,		%OptionFile%,	Key,			IsGetGoldWhenOpenMailbox
		IniRead, IniIsGetRubyWhenOpenMailbox,		%OptionFile%,	Key,			IsGetRubyWhenOpenMailbox
		
		if (IniIsGetHonorInMailbox = "ERROR") {
			IniIsGetHonorInMailbox := 0
		}
		
		if (IniIsGetHonorInMailboxHotTime = "ERROR") {
			IniIsGetHonorInMailboxHotTime := 0
		}
		
		if (IniIsGetRubyWhenOpenMailbox = "ERROR") {
			IniIsGetRubyWhenOpenMailbox := 0
		}
		
		if (IniIsGetRubyWhenOpenMailbox = "ERROR") {
			IniIsGetRubyWhenOpenMailbox := 0
		}
		
		GuiControl, W_BuyKeySetup:,					IsBuyKeyRubyAlways,				%IniIsBuyKeyRubyAlways%
		GuiControl, W_BuyKeySetup:,					IsBuyKeyRubyHotTime,			%IniIsBuyKeyRubyHotTime%
		GuiControl, W_BuyKeySetup:,					IsBuyKeyHonor,					%IniIsBuyKeyHonor%
		GuiControl, W_BuyKeySetup:,					IsBuyKeyHonorHotTime,			%IniIsBuyKeyHonorHotTime%
		GuiControl, W_BuyKeySetup:,					IsGetHonorInMailbox,			%IniIsGetHonorInMailbox%
		GuiControl, W_BuyKeySetup:,					IsGetHonorInMailboxHotTime,		%IniIsGetHonorInMailboxHotTime%
		GuiControl, W_BuyKeySetup:,					IsGetKeyInMailbox,				%IniIsGetKeyInMailbox%
		GuiControl, W_BuyKeySetup:,					IsGetKeyInMailboxHotTime,		%IniIsGetKeyInMailboxHotTime%
		GuiControl, W_BuyKeySetup:,					IsGetGoldWhenOpenMailbox,		%IniIsGetRubyWhenOpenMailbox%
		GuiControl, W_BuyKeySetup:,					IsGetRubyWhenOpenMailbox,		%IniIsGetRubyWhenOpenMailbox%
	}
	
	{	; Restart
		IniRead, IniIsRestartSendHonor,				%OptionFile%,	Restart,		IsRestartSendHonor
		IniRead, IniIsRestartGuildAttendance,		%OptionFile%,	Restart,		IsRestartGuildAttendance

		GuiControl, W_RestartExecute:,				IsRestartSendHonor,				%IniIsRestartSendHonor%
		GuiControl, W_RestartExecute:,				IsRestartGuildAttendance,		%IniIsRestartGuildAttendance%
	}
	
	{	; Raid
		IniRead, IniRaidRepeatCount,				%OptionFile%,	Raid,			RaidRepeatCount
		IniRead, IniRaidJoinCount,					%OptionFile%,	Raid,			RaidJoinCount
		IniRead, IniRaidPlayerSkill,				%OptionFile%,	Raid,			RaidPlayerSkill
		IniRead, IniRaidAwakenType,					%OptionFile%,	Raid,			RaidAwakenType
		IniRead, IniRaidIsSkipReserveSkill,			%OptionFile%,	Raid,			RaidIsSkipReserveSkill
		IniRead, IniRaidIsAttackUnderAnHour,		%OptionFile%,	Raid,			RaidIsAttackUnderAnHour
		
		GuiControl, W_RaidSetup: Choose,			RaidRepeatCount,				%IniRaidRepeatCount%
		GuiControl, W_RaidSetup: Choose,			RaidJoinCount,					%IniRaidJoinCount%
		GuiControl, W_RaidSetup: Choose,			RaidPlayerSkill,				%IniRaidPlayerSkill%
		GuiControl, W_RaidSetup: Choose,			RaidAwakenType,					%IniRaidAwakenType%
		GuiControl, W_RaidSetup:,					RaidIsSkipReserveSkill,			%IniRaidIsSkipReserveSkill%
		GuiControl, W_RaidSetup:,					RaidIsAttackUnderAnHour,		%IniRaidIsAttackUnderAnHour%
		
		Loop, 5 {
			FirstReserve		 = RaidFirstReserveSkill%A_Index%
			FirstRepeat			 = RaidFirstRepeatSkill%A_Index%
			SecondReserve		 = RaidSecondReserveSkill%A_Index%
			SecondRepeat		 = RaidSecondRepeatSkill%A_Index%
			
			IniRead, Ini%FirstReserve%,			%OptionFile%,	Raid,		%FirstReserve%
			IniRead, Ini%FirstRepeat%,			%OptionFile%,	Raid,		%FirstRepeat%
			IniRead, Ini%SecondReserve%,		%OptionFile%,	Raid,		%SecondReserve%
			IniRead, Ini%SecondRepeat%,			%OptionFile%,	Raid,		%SecondRepeat%
			
			FirstReserveSkill	:= Ini%FirstReserve%
			FirstRepeatSkill	:= Ini%FirstRepeat%
			SecondReserveSkill	:= Ini%SecondReserve%
			SecondRepeatSkill	:= Ini%SecondRepeat%
			
			GuiControl, W_RaidSetup: Choose,	%FirstReserve%,				%FirstReserveSkill%
			GuiControl, W_RaidSetup: Choose,	%FirstRepeat%,				%FirstRepeatSkill%
			GuiControl, W_RaidSetup: Choose,	%SecondReserve%,			%SecondReserveSkill%
			GuiControl, W_RaidSetup: Choose,	%SecondRepeat%,				%SecondRepeatSkill%
		}
	}
	
	{	; Siege
		IniRead, IniIsSkipReserveSkill,				%OptionFile%,	Siege,		IsSkipReserveSkill
		
		GuiControl, W_SiegeSetup:,					IsSkipReserveSkill,			%IniIsSkipReserveSkill%
		
		Loop, 3 {
			IniRead,  StartBufferSkill%A_Index%,	%OptionFile%,	Siege,		StartBufferSkill%A_Index%
			Skill  := StartBufferSkill%A_Index%
			StartBufferSkill%A_Index%  := Skill
			
			GuiControl, W_SiegeSetup: Choose, 		StartBufferSkill%A_Index%,	%Skill%
		}
		
		Loop, 5 {
			IniRead,  IniBossStartSkill%A_Index%, 	%OptionFile%,	Siege,		BossStartSkill%A_Index%
			Skill  := IniBossStartSkill%A_Index%
			BossStartSkill%A_Index%  := Skill
			
			GuiControl, W_SiegeSetup: Choose,		BossStartSkill%A_Index%,	%Skill%
		}
		
		Loop, 10 {
			IniRead,  IniBossRepeatSkill%A_Index%,	%OptionFile%,	Siege,		BossRepeatSkill%A_Index%
			Skill  := IniBossRepeatSkill%A_Index%
			BossRepeatSkill%A_Index%  := Skill
			
			GuiControl, W_SiegeSetup: Choose, 		BossRepeatSkill%A_Index%,	%Skill%
		}
	}
	
	{	; Speed
		IniRead, IniSpeedDefault,	%OptionFile%,	Speed,	SpeedDefault
		
		if (IniSpeedDefault = "ERROR") {
			GuiControl, W_Main:,	SpeedDefault,	1
		} else {
			IniRead, IniSpeedSpeedy,		%OptionFile%,	Speed,	SpeedSpeedy
			IniRead, IniSpeedSetting,		%OptionFile%,	Speed,	SpeedSetting
			
			GuiControl, W_Main:,			SpeedDefault,			%IniSpeedDefault%
			GuiControl, W_Main:,			SpeedSpeedy,			%IniSpeedSpeedy%
			GuiControl, W_Main:,			SpeedSetting,			%IniSpeedSetting%
		}
		
		IniRead, IniTIME_REFRESH,			%OptionFile%,	Speed,	TIME_REFRESH
		
		if (IniTIME_REFRESH = "ERROR") {
			Gosub, RadioInit
		} else {
			IniRead, IniTIME_WAITPOPUP,		%OptionFile%,	Speed,	TIME_WAITPOPUP
			IniRead, IniTIME_CLICK,			%OptionFile%,	Speed,	TIME_CLICK
			IniRead, IniTIME_DRAG,			%OptionFile%,	Speed,	TIME_DRAG
			IniRead, IniTIME_IMAGE,			%OptionFile%,	Speed,	TIME_IMAGE
			IniRead, IniTIME_RESTART,		%OptionFile%,	Speed,	TIME_RESTART
			
			GuiControl, W_SpeedSetup:,		TIME_REFRESH,			%IniTIME_REFRESH%
			GuiControl, W_SpeedSetup:,		TIME_WAITPOPUP,			%IniTIME_WAITPOPUP%
			GuiControl, W_SpeedSetup:,		TIME_CLICK,				%IniTIME_CLICK%
			GuiControl, W_SpeedSetup:,		TIME_DRAG,				%IniTIME_DRAG%
			GuiControl, W_SpeedSetup:,		TIME_IMAGE,				%IniTIME_IMAGE%
			GuiControl, W_SpeedSetup:,		TIME_RESTART,			%IniTIME_RESTART%
		}
		
		if (IniSpeedDefault) {
			Gosub, RadioDefault
		} else if (IniSpeedSpeedy) {
			Gosub, RadioSpeedy
		} else if (IniSpeedSetting) {
			Gosub, RadioSetting
		}
	}
	
	{	; Push
		IniRead, IniToken,				%OptionFile%,	Push,	Token
		IniRead, IniAlarmAll,			%OptionFile%,	Push,	AlarmAll
		IniRead, IniAlarmPeriodic,		%OptionFile%,	Push,	AlarmPeriodic
		IniRead, IniAlarmImage,			%OptionFile%,	Push,	AlarmImage
		
		GuiControl, W_PushSetup:,		Token,					%IniToken%
		GuiControl, W_PushSetup:,		AlarmAll,				%IniAlarmAll%
		GuiControl, W_PushSetup:,		AlarmPeriodic,			%IniAlarmPeriodic%
		GuiControl, W_PushSetup:,		AlarmImage,				%IniAlarmImage%
	}
	
	{	; HotKey
		IniRead, OneClickHK,			%OptionFile%,	HotKey,	OneClickHotKey
		IniRead, ResetHK,				%OptionFile%,	HotKey,	ResetHotKey
		IniRead, MonitorHK,				%OptionFile%,	HotKey,	MonitorHotKey
		IniRead, CaptureHK,				%OptionFile%,	HotKey,	CaptureHotKey
		
		GuiControl, W_HotKeySetup:,		OneClickHK,				%OneClickHK%
		GuiControl, W_HotKeySetup:,		ResetHK,				%ResetHK%
		GuiControl, W_HotKeySetup:,		MonitorHK,				%MonitorHK%
		GuiControl, W_HotKeySetup:,		CaptureHK,				%CaptureHK%
	}
	
	{	; Bluestacks
		IniRead, IniBlueStacksLocation,		%OptionFile%,	BlueStacks,	BlueStacksLocation
		IniRead, IniIsAutoRestart,			%OptionFile%,	BlueStacks,	IsAutoRestart
		
		GuiControl, W_Bluestacks:,			BlueStacksLocation,			%IniBlueStacksLocation%
		GuiControl, W_Bluestacks:,			IsAutoRestart,				%IniIsAutoRestart%
	}
	
	IsMainMonitor := IniIsMainMonitor

	Gosub, SetOneClickKey
	Gosub, SetResetKey
	Gosub, SetMonitorKey
	Gosub, SetCaptureKey
	Gosub, SetRaidSkillKey
	
	AddLog("# 설정 불러오기 완료")
	
	Return
}

SaveCount:
{
	IfExist, %CountFile%
		FileDelete, %CountFile%
	
	GuiControlGet, NumAdventure, W_Status:
	GuiControlGet, NumTower, W_Status:
	GuiControlGet, NumArena, W_Status:
	GuiControlGet, NumRaid, W_Status:
	GuiControlGet, NumReward, W_Status:
	GuiControlGet, NumMission, W_Status:
	GuiControlGet, NumFullLevelUp, W_Status:
	GuiControlGet, NumGetHero, W_Status:
	GuiControlGet, NumGetEquipment, W_Status:
	GuiControlGet, NumGetGold, W_Status:
	GuiControlGet, NumStrSuccess, W_StrengthenSetup:
	GuiControlGet, NumStrFailure, W_StrengthenSetup:
	
	IniWrite, %NumAdventure%, %CountFile%, Count, NumAdventure
	IniWrite, %NumTower%, %CountFile%, Count, NumTower
	IniWrite, %NumArena%, %CountFile%, Count, NumArena
	IniWrite, %NumRaid%, %CountFile%, Count, NumRaid
	IniWrite, %NumReward%, %CountFile%, Count, NumReward
	IniWrite, %NumMission%, %CountFile%, Count, NumMission
	IniWrite, %NumFullLevelUp%, %CountFile%, Count, NumFullLevelUp
	IniWrite, %NumGetHero%, %CountFile%, Count, NumGetHero
	IniWrite, %NumGetEquipment%, %CountFile%, Count, NumGetEquipment
	IniWrite, %NumGetGold%, %CountFile%, Count, NumGetGold
	IniWrite, %NumStrSuccess%, %CountFile%, Count, NumStrSuccess
	IniWrite, %NumStrFailure%, %CountFile%, Count, NumStrFailure
	
	Return
}

LoadCount:
{
	IfNotExist, %CountFile%
	{
		log := "# 통계 파일 없음"
		AddLog(log)
		
		Gosub, ResetCount
	}
	else
	{
		log := "# 통계 불러오기 완료"
		AddLog(log)
		
		IniRead, IniNumAdventure, %CountFile%, Count, NumAdventure
		IniRead, IniNumTower, %CountFile%, Count, NumTower
		IniRead, IniNumArena, %CountFile%, Count, NumArena
		IniRead, IniNumRaid, %NumRaid%, Count, NumRaid
		IniRead, IniNumReward, %NumReward%, Count, NumReward
		IniRead, IniNumMission, %CountFile%, Count, NumMission
		IniRead, IniNumFullLevelUp, %CountFile%, Count, NumFullLevelUp
		IniRead, IniNumGetHero, %CountFile%, Count, NumGetHero
		IniRead, IniNumGetEquipment, %CountFile%, Count, NumGetEquipment
		IniRead, IniNumGetGold, %CountFile%, Count, NumGetGold
		IniRead, IniNumSellHero, %CountFile%, Count, NumSellHero
		GuiControl, W_Status:, NumAdventure, %IniNumAdventure%
		GuiControl, W_Status:, NumTower, %IniNumTower%
		GuiControl, W_Status:, NumArena, %IniNumArena%
		GuiControl, W_Status:, NumRaid, %IniNumRaid%
		GuiControl, W_Status:, NumReward, %IniNumReward%
		GuiControl, W_Status:, NumMission, %IniNumMission%
		GuiControl, W_Status:, NumFullLevelUp, %IniNumFullLevelUp%
		GuiControl, W_Status:, NumGetHero, %IniNumGetHero%
		GuiControl, W_Status:, NumGetEquipment, %IniNumGetEquipment%
		GuiControl, W_Status:, NumGetGold, %IniNumGetGold%
		IniRead, IniNumStrSuccess, %CountFile%, Count, NumStrSuccess
		IniRead, IniNumStrFailure, %CountFile%, Count, NumStrFailure
		GuiControl, W_StrengthenSetup:, NumStrSuccess, %IniNumStrSuccess%
		GuiControl, W_StrengthenSetup:, NumStrFailure, %IniNumStrFailure%
		NumSellHero := IniNumSellHero
	}
	
	Return
}

SaveLog:
{
	logLast := nLog  - 1
	fileName := "Log\LOG_" A_DD "_" A_HOUR "_" A_MIN "_" A_SEC
	logfilename := fileName ".ini"
	bmpfileName := fileName ".png"
	
	IfExist, %logfilename%
		FileDelete, %logfilename%
	
	IfExist, %bmpfileName%
		FileDelete, %bmpfileName%
	
	GuiControlGet, IsCapture, W_Setting:
	GuiControlGet, AlarmImage, W_Setting:
	
	if (IsCapture)
	{
		filename := "Capture\" A_DD "_" A_HOUR "_" A_MIN "_" A_SEC "_Log.png"
		Capture(filename)
		
		if (AlarmImage)
			PushImage(filename)
	}
	
	logStart := logLast - 40
	
	if (logStart < 1)
		logStart := 1
	
	Loop
	{
		GuiControl, W_Log: Choose, LogList, %logStart%
		GuiControlGet, LogList, W_Log:
		IniWrite, %LogList%, %logfilename%, Log, %logStart%
		
		if (logStart = logLast)
			break
		
		logStart++
	}
	
	GuiControl, W_Log: Choose, LogList, nLog
	
	log := "# 로그 저장 완료!"
	AddLog(log)
	
	Return
}

ResetCount:
{
	GuiControl, W_Status:, NumAdventure, 0
	GuiControl, W_Status:, NumTower, 0
	GuiControl, W_Status:, NumArena, 0
	GuiControl, W_Status:, NumRaid, 0
	GuiControl, W_Status:, NumReward, 0
	GuiControl, W_Status:, NumMission, 0
	GuiControl, W_Status:, NumFullLevelUp, 0
	GuiControl, W_Status:, NumGetHero, 0
	GuiControl, W_Status:, NumGetEquipment, 0
	GuiControl, W_Status:, NumGetGold, 0
	GuiControl, W_StrengthenSetup:, NumStrSuccess, 0
	GuiControl, W_StrengthenSetup:, NumStrFailure, 0
	
	Return
}

OneClick:
{
	GuiControl, W_Main:, Progress, 100
	GuiControl, disable, 실행
	GuiControl, enable, 일시정지
	
	AddLog("# 한방 클릭")
	
	if (OnRunning = 1) {
		AddLog("# 중복 동작 : 매크로가 동작 중입니다.")
		
		Return
	}
	
	OnRunning := 1
	
	GuiControl, disable, NBSendHonor
	GuiControl, disable, NBTower
	GuiControl, disable, NBArena
	GuiControl, disable, NBRaid
	GuiControl, disable, NBAdventure
	GuiControl, disable, NBGuildAttendance
	
	Process, Exist, HD-Frontend.exe
	
	if (!ErrorLevel) {
		GuiControl, W_Main:, SimpleLog, <실행 중>
		
		if (!RunSevenKnights())
			RestartSevenKnights()
	}
	
	NebulaBefore()
	
	if (!NebulaCore()) {
		AddLog("# 동작 중지")
		GuiControl, W_Main:, Progress, 0
		GuiControl, enable, 실행
		GuiControl, disable, 일시정지
	}
	
	OnRunning := 0
	
	GuiControl, enable, NBSendHonor
	GuiControl, enable, NBTower
	GuiControl, enable, NBArena
	GuiControl, enable, NBRaid
	GuiControl, enable, NBAdventure
	GuiControl, enable, NBGuildAttendance
	GuiControl, W_Main:, Progress, 0
	GuiControl, W_Main:, SimpleLog, <동작 종료>
	
	Return
}
	
Pause:
{
	AddLog("# 일시 정지")
	
	GuiControl, show, 계속하기
	GuiControl, hide, 일시정지
	GuiControl, W_Main:, SimpleLog, <일시 정지>
	
	Pause, On
	
	Return 
}
	
Resume:
{
	AddLog("# 계속하기")
	
	Pause, Off
	
	GuiControl, hide, 계속하기
	GuiControl, show, 일시정지
	GuiControl, , SimpleLog, <실행 중>
	
    Return
}
	
Reset:
{
	Gosub, SaveCount
	Reload
	
	Return
}

Regedit:
{
	REG = HKEY_LOCAL_MACHINE\SOFTWARE\BlueStacks\Guests\Android\FrameBuffer\0
	
	Run, %comspec% /c set regadd=reg add "%REG%" ,,hide
	Run, %comspec% /c reg add "%REG%" /v "GuestWidth"   /t REG_DWORD /d 1440 /f ,,hide
	Run, %comspec% /c reg add "%REG%" /v "GuestHeight"  /t REG_DWORD /d  900 /f ,,hide
	Run, %comspec% /c reg add "%REG%" /v "WindowWidth"  /t REG_DWORD /d  640 /f ,,hide
	Run, %comspec% /c reg add "%REG%" /v "WindowHeight" /t REG_DWORD /d  400 /f ,,hide
	
	RegRead, bluestacksDir, HKEY_LOCAL_MACHINE, SOFTWARE\BlueStacks\, InstallDir
	hdRestart := bluestacksDir "HD-Restart.exe Android"
	RunWait, %hdRestart%
	MsgBox,,완료,해상도 변경이 완료되었습니다.
	
	return
}

CaptureScreen:
{
	IfNotExist, %A_WorkingDir%\Capture
		FileCreateDir, %A_WorkingDir%\Capture
	
	filename := "Capture\Capture_" A_YYYY A_MM A_DD A_HOUR A_MIN A_SEC ".png"
	Capture(filename)
	
	Return
}

CaptureSkills:
{
	InputBox, HeroName, 스킬 캡쳐하기, 영웅 이름을 입력하세요., , 240, 120
	
	if (HeroName = "") {
		return
	}
	
	IfNotExist, %A_WorkingDir%\Capture
		FileCreateDir, %A_WorkingDir%\Capture
	
	IfNotExist, %A_WorkingDir%\Capture\Skill
		FileCreateDir,  %A_WorkingDir%\Capture\Skill
	
	if (IsImagePlus(clickX, clickY, "Image\Common\SkillBox.bmp", 60, "BLACK", 584, 222, 636, 273))
		CaptureSquare("Capture\Skill\" HeroName "_3.bmp", 628, 224, 634, 229)
	
	if (IsImagePlus(clickX, clickY, "Image\Common\SkillBox.bmp", 60, "BLACK", 584, 273, 636, 324))
		CaptureSquare("Capture\Skill\" HeroName "_1.bmp", 614, 278, 634, 303)
	
	CaptureSquare("Capture\Skill\" HeroName "_2.bmp", 614, 330, 634, 355)
	
	if (IsImagePlus(clickX, clickY, "Image\Common\Preview.Back.bmp", 60, 0, 550, 0, 640, 50)) {
		Click(clickX, clickY)
		SleepLog(TIME_CLICK)
	}
	
	if (IsImagePlus(clickX, clickY, "Image\Common\Preview.Close.bmp", 60, 0, 550, 0, 640, 50)) {
		Click(clickX, clickY)
		SleepLog(TIME_CLICK)
	}
	
	Return
}

InitOption:
{
	initX := 100
	initY := 100
	
	IsMainMonitor := 1
	
	RegRead, BlueStacksDir, HKEY_LOCAL_MACHINE, SOFTWARE\BlueStacks\, InstallDir
	BlueStacksLocation := BlueStacksDir "HD-RunApp.exe"
	
	GuiControl, W_Main:,                   SpeedDefault,          1
	GuiControl, W_Main:,                   NBSendHonor,           1
	GuiControl, W_Main:,                   NBAdventure,           1
	GuiControl, W_Main:,                   NBTower,               1
	GuiControl, W_Main:,                   NBArena,               1
	GuiControl, W_Main:,                   NBRaid,                1
	GuiControl, W_Main:,                   NBGuildAttendance,     1
	
	GuiControl, W_Setting:,                IsCapture,             0
	GuiControl, W_Setting:,                IsCallFriends,         0
	GuiControl, W_Setting:,                IsTowerFloor,          1
	GuiControl, W_Setting:,                IsArenaQuickLoss,      0
	GuiControl, W_Setting:,                IsHeroChange,          1
	GuiControl, W_Setting:,                IsHeroSellingLowLevel, 0
	GuiControl, W_Setting:,                IsSelectedSkill,       1
	
	GuiControl, W_Bluestacks:,             IsAutoRestart,         1
	GuiControl, W_Bluestacks:,             BlueStacksLocation,    %BlueStacksLocation%
	
	GuiControl, W_BuyKeySetup:,            IsBuyKeyHonor,         1
	GuiControl, W_BuyKeySetup:,            IsBuyKeyRubyAlways,    0
	GuiControl, W_BuyKeySetup:,            IsBuyKeyRubyHotTime,   1
	
	GuiControl, W_StrengthenSetup:,        IsStrengthenCore,      0
	GuiControl, W_StrengthenSetup:,        IsHeroStrengthen,      1
	GuiControl, W_StrengthenSetup: Choose, SacrificeStar,         2
	GuiControl, W_StrengthenSetup: Choose, StrengthenStar,        7
	
	GuiControl, W_HotKeySetup:,            OneClickHK,            +F9
	GuiControl, W_HotKeySetup:,            ResetHK,               +F10
	GuiControl, W_HotKeySetup:,            MonitorHK,             +F11
	GuiControl, W_HotKeySetup:,            CaptureHK,             +F12
	GuiControl, W_HotKeySetup:,            RaidSkillHK,           +F5
	
	GuiControl, W_PushSetup:,              AlarmAll,              1
	GuiControl, W_PushSetup:,              AlarmPeriodic,         1
	GuiControl, W_PushSetup:,              AlarmImage,            0
	
	AddLog("# 설정 초기값 지정")
	
	Return
}
;---------------------labels end--------------------------------------
;---------------------functions start--------------------------------------
ReadURL(URL, encoding = "utf-8") 
{
	static a := "AutoHotkey/" A_AhkVersion
	
	if (!DllCall("LoadLibrary", "str", "wininet") || !(h := DllCall("wininet\InternetOpen", "str", a, "uint", 1, "ptr", 0, "ptr", 0, "uint", 0, "ptr")))
		return 0
	
	c := s := 0, o := ""
	
	if (f := DllCall("wininet\InternetOpenUrl", "ptr", h, "str", url, "ptr", 0, "uint", 0, "uint", 0x80003000, "ptr", 0, "ptr"))
	{
		while (DllCall("wininet\InternetQueryDataAvailable", "ptr", f, "uint*", s, "uint", 0, "ptr", 0) && s > 0)
		{
			VarSetCapacity(b, s, 0)
			DllCall("wininet\InternetReadFile", "ptr", f, "ptr", &b, "uint", s, "uint*", r)
			o .= StrGet(&b, r >> (encoding = "utf-16" || encoding = "cp1200"), encoding)
		}
		DllCall("wininet\InternetCloseHandle", "ptr", f)
	}
	
	DllCall("wininet\InternetCloseHandle", "ptr", h)
	
	return o
}

URLDownloadToVar(url)
{
	hObject:=ComObjCreate("WinHttp.WinHttpRequest.5.1")
	hObject.Open("GET",url)
	hObject.Send()
	
	return hObject.ResponseText
}

GetPixelColors(sX, sY, eX, eY, PixelFile = "Pixel.txt")
{
	CoordMode, Pixel, Screen
	RealWinSize(posX, posY, width, height, "BlueStacks App Player")
	SysGet, wFrame, 7
	SysGet, wCaption, 4
	PixelFile := "Pixel\" PixelFile
	
	log := "  @ 해당 영역의 픽셀 색상 값을 저장합니다 : " PixelFile
	AddDebugLog( log )
	
	log := "  @ 영역 : " sX " " sY " to " eX " " eY
	AddDebugLog( log )
	
	sX := sX + posX + wFrame
	sY := sY + posY + wFrame + wCaption
	eX := eX + posX + wFrame
	eY := eY + posY + wFrame + wCaption
	width := eX - sX + 1
	height := eY - sY + 1
	
	IfExist, %PixelFile%
	FileDelete, %PixelFile%
	cY := sY
	
	Loop, %height%
	{
		log := "  @ Y : " cY-wFrame-wCaption-posY
		Addlog( log )
		cX := sX
		Loop, %width%
		{
			PixelGetColor, pxColor, %cX%, %cY%, RGB
			StringRight, printHex, pxColor, 6
			FileAppend, %printHex%`t, %PixelFile%
			cX ++
		}
		FileAppend, `n, %PixelFile%
		cY++
	}
}

APixelColor(X, Y)
{
	CoordMode, Pixel, Screen
	RealWinSize(posX, posY, width, height, "BlueStacks App Player")
	SysGet, wFrame, 7
	SysGet, wCaption, 4
	tX := X + posX + wFrame
	tY := Y + posY + wFrame + wCaption
	PixelGetColor, pxColor, %tX%, %tY%, RGB
	
	return pxColor
}

GetErrorRange(fileName, errStart, trans, sX = 0, sY = 0, eX = 0,  eY = 0)
{
	Loop, 70
	{
		if(IsImagePlus(clickX, clickY, fileName, errStart, trans, sX, sY, eX, eY))
		{
			log := "  @ 에러 및 위치 :" errStart " " clickX " " clickY
			AddDebugLog( log )
			break
		}
		errStart++
	}
}

AddLog(String)
{
	Gui, W_Log: Font, S7 CDefault, Verdana
	GuiControl, W_Log: Font, LogList
	nowTime := "(" A_HOUR ":" A_MIN ") "
	LogList .= nowTime String "|"
	GuiControl, W_Log:, LogList, %LogList%
	GuiControl, W_Log: Choose, LogList, %nLog%
	nLog++
	Gui, W_Log: Font, S8 CDefault, Verdana
	
	AddDebugLog(String)
}

AddDebugLog(String)
{
	LogTime := "(" A_HOUR ":" A_MIN ":" A_SEC ") " 
	
	FileAppend, %LogTime% %String%`n, %LogFile%
}

PushNote(Title, Body)
{
	GuiControlGet,	Token,			W_PushSetup:
	GuiControlGet,	AlarmAll,		W_PushSetup:
	GuiControlGet,	AlarmPeriodic,	W_PushSetup:
	GuiControlGet,	AlarmImage,		W_PushSetup:
	
	if(AlarmAll && Token != "")
	{
		log := "# 알람 : 보내기"
		AddLog(log)
		plusTime := "(" A_HOUR "시 " A_MIN "분) " Body
		Title:=UriEncode(Title)
		Body:=UriEncode(plusTime)
		RunWait, Utility\curl.exe https://api.pushbullet.com/api/pushes -u %Token%: -d type=note -d title=%Title% -d body=%Body% -X POST -k,, Hide
		
		return true
	}
	else
	{
		log := "# 알람 : 보내지 않음"
		AddLog(log)
		return false
	}
}

PushImage(filename)
{
	GuiControlGet,	Token,			W_PushSetup:
	GuiControlGet,	AlarmAll,		W_PushSetup:
	GuiControlGet,	AlarmPeriodic,	W_PushSetup:
	GuiControlGet,	AlarmImage,		W_PushSetup:
	
	Title := UriEncode("[Nebula] 이미지 알림")
	
	if(AlarmAll && AlarmImage)
	{
		log := "# 알람 : 이미지 보내기"
		AddLog(log)
		SendImage(filename, Title)
		log := "# 알람 : 이미지 보내기 성공"
		AddLog(log)
	}
	else
	{
		log := "# 알람 : 보내지 않음"
		AddLog(log)
		
		return false
	}
}

SendImage(ImagePath, Title)
{
	GuiControlGet,	Token,			W_PushSetup:
	SplitPath,		ImagePath,	,,	ext
	stringreplace,	ImagePath,	ImagePath,	\,/,	all
	Runwait, %comspec% /c Utility\curl https://api.pushbullet.com/v2/upload-request -u %Token%: -d file_name=%image_name% -d file_type=image/%ext% -X POST -k | clip ,,hide
	
	Pos            := RegExMatch(clipboard,"\Cacl\C:\C(.*?)\C,\Cawsaccesskeyid\C:\C(.*?)\C,\Ccontent-type\C:\C(.*?)\C,\Ckey\C:\C(.*?)\C,\Cpolicy\C:\C(.*?)\C,\Csignature\C:\C(.*?)\C},\Cfile_name\C:\C(.*?)\C,\Cfile_type\C:\C(.*?)\C,\Cfile_url\C:\C(.*?)\C,\Cupload_url\C:\C(.*?)\C}",m)
	acl            := m1
	awsaccesskeyid := m2
	content_type   := m3
	key            := m4
	policy         := m5
	signature      := m6
	file_type      := m8
	file_url       := m9
	upload_url     := m10
	
	RunWait, Utility\curl.exe -s -i %upload_url% -X POST -F acl=%acl%  -F awsaccesskeyid=%awsaccesskeyid% -F key=%key% -F signature=%signature% -F policy=%policy% -F content-type=%content_type% -F file=@%ImagePath% -k ,,hide
	RunWait, Utility\curl.exe https://api.pushbullet.com/api/pushes -u %Token%: -d type=file -d file_name=%image_name% -d file_type=%file_type% -d file_url=%file_url% -X POST -k ,,hide
	
	Return
}

UriEncode(Uri, Enc = "UTF-8")
{
	StrPutVar(Uri, Var, Enc)
	f := A_FormatInteger
	SetFormat, IntegerFast, H
	
	Loop
	{
		Code := NumGet(Var, A_Index - 1, "UChar")
		
		If (!Code)
			Break
		
		If (Code >= 0x30 && Code <= 0x39 || Code >= 0x41 && Code <= 0x5A || Code >= 0x61 && Code <= 0x7A)
			Res .= Chr(Code)
		Else
			Res .= "%" . SubStr(Code + 0x100, -1)
	}
	
	SetFormat, IntegerFast, %f%
	
	Return, Res
}

StrPutVar(Str, ByRef Var, Enc = "")
{
	Len := StrPut(Str, Enc) * (Enc = "UTF-16" || Enc = "CP1200" ? 2 : 1)
	VarSetCapacity(Var, Len, 0)
	
	Return, StrPut(Str, &Var, Enc)
}

IsImagePlus(ByRef clickX, ByRef clickY, ImageName, errorRange, trans, sX = 0, sY = 0, eX = 0, eY = 0)
{
	/*
	bResult := GImageSearch(clickX, clickY, ImageName, errorRange, trans, sX, sY, eX, eY)
	
	return bResult
	*/
	
	CoordMode, Pixel, Screen
	RealWinSize(posX, posY, width, height, "BlueStacks App Player")
	
	SysGet, wFrame, 7
	SysGet, wCaption, 4
	
	IfNotExist, %ImageName%
	{
		log := "  @ 이미지 없음: " ImageName
		AddLog(log)
		
		return false
	}
	
	if(sX = 0 && sY = 0 && eX = 0 && eY = 0)
	{
		sX := posX + wFrame
		sY := posY + wCaption + wFrame
		eX := sX + width
		eY := sY + height
	}
	else
	{
		sX := sX + posX + wFrame
		sY := sY + posY + wCaption + wFrame
		eX := eX + posX + wFrame
		eY := eY + posY + wCaption + wFrame
	}

	if(trans = "BLACK")
		ImageSearch, vX, vY, sX, sY, eX, eY, *transBlack *%errorRange% %ImageName%
	else if(trans = "WHITE")
		ImageSearch, vX, vY, sX, sY, eX, eY, *transWhite *%errorRange% %ImageName%
	else
		ImageSearch, vX, vY, sX, sY, eX, eY, *%errorRange% %ImageName%
	
	if (ErrorLevel = 0)
	{
		log := "  @ 이미지 찾음: " ImageName
		;~ AddLog(log)
		
		clickX := vX - posX - wFrame
		clickY := vY-  posY - wCaption - wFrame
		
		return true
	}
	
	if (ErrorLevel = 1)
	{
		log := "  @ 이미지 못찾음: " ImageName
		;~ AddLog(log)
		
		clickX := 0
		clickY := 0
		
		return false
	}
	
	if (ErrorLevel = 2)
	{
		log := "  @ 이미지 손상: " ImageName
		;~ AddLog(log)
		
		clickX := 0
		clickY := 0
		
		return false
	}
}

IsImageDisplay(ImageName, errorRange, trans, sX = 0, sY = 0, eX = 0, eY = 0)
{
	/*
	bResult := GImageSearch(clickX, clickY, ImageName, errorRange, trans, sX, sY, eX, eY)
	
	return bResult
	*/
	CoordMode, Pixel, Screen
	RealWinSize(posX, posY, width, height, "BlueStacks App Player")
	
	SysGet, wFrame, 7
	SysGet, wCaption, 4
	
	IfNotExist, %ImageName%
	{
		log := "  @ 이미지 없음: " ImageName
		AddDebugLog(log)
		
		return false
	}
	
	if(sX = 0 && sY = 0 && eX = 0 && eY = 0)
	{
		sX := posX + wFrame
		sY := posY + wCaption + wFrame
		eX := sX + width
		eY := sY + height
	}
	else
	{
		sX := sX + posX + wFrame
		sY := sY + posY + wCaption + wFrame
		eX := eX + posX + wFrame
		eY := eY + posY + wCaption + wFrame
	}
	
	if(trans = "BLACK")
		ImageSearch, vX, vY, sX, sY, eX, eY, *transBlack *%errorRange% %ImageName%
	else if(trans = "WHITE")
		ImageSearch, vX, vY, sX, sY, eX, eY, *transWhite *%errorRange% %ImageName%
	else
		ImageSearch, vX, vY, sX, sY, eX, eY, *%errorRange% %ImageName%
	
	if (ErrorLevel = 0)
		return true
	
	if (ErrorLevel = 1)
		return false
}

WaitImagePlus(ByRef clickX, ByRef clickY, ImageName, errorRange, trans, sX = 0, sY = 0, eX = 0, eY = 0)
{
	if(ImageName = "") {
		AddDebugLog("  @ 이미지 파일명 없음")
		
		return false
	}
	
	IfNotExist, %ImageName%
	{
		AddDebugLog("  @ 이미지 없음: " ImageName)
		
		return false
	}
	
	if(ImageName != "Image\Adventure\Store.bmp") {
		AddDebugLog("  @ 이미지 대기: " ImageName)
	}
	
	Delay = 0
	
	Loop
	{
		if(IsImagePlus(clickX, clickY, ImageName, errorRange, trans, sX, sY, eX, eY))
		{
			SleepLog( TIME_IMAGE )
			return true
		}
		
		if(AfterRestart = 1)
		{
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			
			return false
		}
		
		sleep, %TIME_REFRESH%
		Delay++
		
		;if(TIME_REFRESH * Delay > TIME_WAITIMAGE)
		if(TIME_REFRESH * Delay > 30000)
		{
			waitTime := TIME_REFRESH * Delay
			
			log := "  @ 이미지 대기: 제한 시간 초과 (" waitTime "ms)"
			AddDebugLog(log)
			
			PushNote("[Nebula] 이미지 대기 시간 초과","")
			
			if(RestartSevenKnights())
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				AfterRestart := 1
				
				return false
			}
		}
	}
}

WaitImageMulti(ByRef clickX, ByRef clickY, limitTime, strImage)
{
	StringSplit, orgImage, strImage, |
	
	Loop, %orgImage0%
		StringSplit, tarImage%A_Index%, orgImage%A_Index%, -
	
	Delay = 0
	
	Loop
	{
		Loop, %orgImage0%
		{
			if(tarImage%A_Index%0 = 3 || tarImage%A_Index%0 = 7)
			{
				if(IsImagePlus(clickX, clickY, tarImage%A_Index%1, tarImage%A_Index%2, tarImage%A_Index%3, tarImage%A_Index%4, tarImage%A_Index%5, tarImage%A_Index%6, tarImage%A_Index%7))
				{
					SleepLog( TIME_IMAGE )
					
					return tarImage%A_Index%1
				}
			}
			else
			{
				log := "	@ 잘못된 매개변수"
				AddDebugLog(log)
			}
		}
		if(AfterRestart = 1)
		{
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			
			return false
		}
		
		sleep, %TIME_REFRESH%
		Delay++
		
		if(TIME_REFRESH * Delay > limitTime)
		{
			waitTime := TIME_REFRESH * Delay
			
			log := "  @ 이미지 대기: 제한 시간 초과 (" waitTime "ms)"
			AddDebugLog(log)
			
			PushNote("[Nebula] 이미지 대기 시간 초과","")
			
			if(RestartSevenKnights())
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				AfterRestart := 1
				
				return false
			}
		}
	}
}

Capture(filename)
{
	pToken := Gdip_Startup()
	
	WinGetPos, X, Y, W, H, BlueStacks App Player
	SysGet, wFrame, 7
	SysGet, wCaption, 4
	
	posX   := X + wFrame
	posY   := Y + wFrame + wCaption
	width  := W - wFrame * 2
	height := H - wFrame * 2 - wCaption
	snap   := Gdip_BitmapFromScreen(posX "|" posY "|" width "|" height)
	
	Gdip_SaveBitmapToFile(snap, filename)
	Gdip_DisposeImage(snap)
	Gdip_ShutDown(pToken)
	
	log := "# 캡처 완료"
	AddLog(log)
}

CaptureSquare(filename, sX = 0, sY = 0, eX = 0, eY = 0)
{
	pToken := Gdip_Startup()
	
	WinGetPos, X, Y, W, H, BlueStacks App Player
	SysGet, wFrame, 7
	SysGet, wCaption, 4
	
	if(sX = 0 && sY = 0 && eX = 0 && eY = 0)
	{
		posX   := X + wFrame
		posY   := Y + wCaption + wFrame
		width  := W - wFrame * 2
		height := H - wFrame * 2 - wCaption
	}
	else
	{
		posX   := sX + X + wFrame
		posY   := sY + Y + wCaption + wFrame
		width  := eX - sX
		height := eY - sY
	}
	
	snap := Gdip_BitmapFromScreen(posX "|" posY "|" width "|" height)
	
	Gdip_SaveBitmapToFile(snap, filename)
	Gdip_DisposeImage(snap)
	Gdip_ShutDown(pToken)
	
	log := "# 캡처 완료"
	AddLog(log)
}

Click(x, y)
{
	sleep, %TIME_REFRESH%
	Coor := x | y<<16
	WinGet, ActiveID, ID, BlueStacks App Player
	
	if(x = 0 && y = 0)
	{
		log := "  @ 이미지 검색 실패로 클릭 실패"
		AddDebugLog(log)
		return false
	}
	
	if not getkeystate("Ctrl" , "p")
	{
		PostMessage, 0x201, 0, %Coor%,, ahk_id %ActiveID%
		PostMessage, 0x202, 0, %Coor%,, ahk_id %ActiveID%
		sleep, %TIME_REFRESH%
	}
	else if getkeystate("Ctrl" , "p")
	{
		log := "# 클릭 대기 : Ctrl "
		AddLog(log)
		
		Loop
		{
			if not getkeystate("Ctrl" , "p")
			{
				PostMessage, 0x201, 0, %Coor%,, ahk_id %ActiveID%
				PostMessage, 0x202, 0, %Coor%,, ahk_id %ActiveID%
				
				sleep, %TIME_REFRESH%
				
				break
			}
			
			sleep, 100
		}
	}
}

ClickFast(X, Y)
{
	Coor := x | y<<16
	WinGet, ActiveID, ID, BlueStacks App Player
	
	if(x = 0 && y = 0)
	{
		log := "  @ 이미지 검색 실패로 클릭 실패"
		AddDebugLog(log)
		
		return false
	}
	
	if not getkeystate("Ctrl" , "p")
	{
		PostMessage, 0x201, 0, %Coor%,, ahk_id %ActiveID%
		PostMessage, 0x202, 0, %Coor%,, ahk_id %ActiveID%
	}
	else if getkeystate("Ctrl" , "p")
	{
		log := "# 클릭 대기 : Ctrl "
		AddLog(log)
		
		Loop
		{
			if not getkeystate("Ctrl" , "p")
			{
				PostMessage, 0x201, 0, %Coor%,, ahk_id %ActiveID%
				PostMessage, 0x202, 0, %Coor%,, ahk_id %ActiveID%
				
				break
			}
			
			sleep, 100
		}
	}
}

ClickWithoutLog(x, y)
{
	sleep, %TIME_REFRESH%
	Coor := x | y<<16
	WinGet, ActiveID, ID, BlueStacks App Player
	
	if(x = 0 && y = 0)
	{
		log := "  @ 이미지 검색 실패로 클릭 실패"
		AddDebugLog(log)
		
		return false
	}
	
	if not getkeystate("Ctrl" , "p")
	{
		PostMessage, 0x201, 0, %Coor%,, ahk_id %ActiveID%
		PostMessage, 0x202, 0, %Coor%,, ahk_id %ActiveID%
		sleep, %TIME_REFRESH%
	}
	else if getkeystate("Ctrl" , "p")
	{
		log := "# 클릭 대기 : Ctrl "
		AddLog(log)
		
		Loop
		{
			if not getkeystate("Ctrl" , "p")
			{
				PostMessage, 0x201, 0, %Coor%,, ahk_id %ActiveID%
				PostMessage, 0x202, 0, %Coor%,, ahk_id %ActiveID%
				sleep, %TIME_REFRESH%
				
				break
			}
			
			sleep, 100
		}
	}
}

ClickToWaitImage(ByRef clickX, ByRef clickY, ImageName)
{
	sleep, %TIME_REFRESH%
	Coor := clickX | clickY <<16
	x := clickX
	y := clickY
	WinGet, ActiveID, ID, BlueStacks App Player
	
	if(clickX= 0 && clickY = 0)
	{
		log := "  @ 이미지 검색 실패로 클릭 실패"
		AddDebugLog(log)
		
		return false
	}
	
	Loop
	{
		if not getkeystate("Ctrl" , "p")
		{
			PostMessage, 0x201, 0, %Coor%,, ahk_id %ActiveID%
			PostMessage, 0x202, 0, %Coor%,, ahk_id %ActiveID%
			
			log := "# 클릭: (" x ", " y ")후 이미지 대기 " ImageName
			AddLog(log)
			
			sleep, %TIME_REFRESH%
		}
		else if getkeystate("Ctrl" , "p")
		{
			log := "# 클릭 대기 : Ctrl "
			AddLog(log)
			
			Loop
			{
				if not getkeystate("Ctrl" , "p")
				{
					PostMessage, 0x201, 0, %Coor%,, ahk_id %ActiveID%
					PostMessage, 0x202, 0, %Coor%,, ahk_id %ActiveID%
					log := "# 클릭: (" x ", " y ")후 이미지 대기 " ImageName
					AddLog(log)
					sleep, %TIME_REFRESH%
					break
				}
				
				sleep, %TIME_REFRESH%
			}
		}
		
		Loop, 100
		{
			if(IsImagePlus(clickX, clickY, ImageName, 60, 0))
				return true
			
			if(AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				return false
			}
			
			sleep, %TIME_REFRESH%
		}
		
		if(A_Index > 10)
			AfterRestart := 1
		
		if(AfterRestart = 1)
		{
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			
			return false
		}
	}
}

Drag(oldX, oldY, newX, newY)
{
	sleep, %TIME_REFRESH%
	oldCoor := oldX | oldY<<16
	newCoor := newX | newY<<16
	WinGet, ActiveID, ID, BlueStacks App Player
	
	if not getkeystate("Ctrl" , "p")
	{
		PostMessage, 0x201, 0, %oldCoor%,, ahk_id %ActiveID%
		PostMessage, 0x200, 0, %newCoor%,, ahk_id %ActiveID%
		PostMessage, 0x202, 0, %newCoor%,, ahk_id %ActiveID%
		
		log := "  @ 드래그: " oldX ", " oldY " to " newX ", " newY
		AddDebugLog(log)
		
		sleep, %TIME_REFRESH%
	}
	else if getkeystate("Ctrl" , "p")
	{
		log := "# 드래그 대기 : Ctrl "
		AddLog(log)
		
		Loop
		{
			if not getkeystate("Ctrl" , "p")
			{
				PostMessage, 0x201, 0, %oldCoor%,, ahk_id %ActiveID%
				PostMessage, 0x200, 0, %newCoor%,, ahk_id %ActiveID%
				PostMessage, 0x202, 0, %newCoor%,, ahk_id %ActiveID%
				
				log := "  @ 드래그: " oldX ", " oldY " to " newX ", " newY
				AddLog(log)
				
				sleep, %TIME_REFRESH%
				break
			}
			
			sleep, %TIME_REFRESH%
		}
	}
}

SleepLog(SleepTime)
{
	Log := "  @ 대기: " SleepTime "ms"
	AddDebugLog(Log)
	
	sleep, %SleepTime%
}

RealWinSize(ByRef posX, ByRef posY, ByRef width , ByRef height, ProcessID)
{
	WinGetPos, X, Y, W, H, %ProcessID%
	SysGet, wFrame, 7
	SysGet, wCaption, 4
	posX   := X
	posY   := Y
	width  := W - wFrame * 2
	height := H - wFrame * 2 - wCaption
	
	return
}

;---------------------functions end--------------------------------------

RestartSevenKnights()
{
	OnRestart := 1
	GuiControl, W_Main:, SimpleLog, <재시작>
	
	Loop
	{
		AddLog("# 블루스택 재시작")
		PushNote("[Nebula] 블루스택","재시작")
		
		Process, Exist, HD-Frontend.exe
		pidBlueStacks := ErrorLevel
		
		if (pidBlueStacks)
		{
			WinClose, BlueStacks App Player
			Process, WaitClose, %pidBlueStacks%, 10
			
			if (ErrorLevel)
				continue
		}
		
		if (RunSevenKnights())
		{
			OnRestart := 0
			
			return true
		}
		
		if (A_Index > 5)
			return false
		
		sleep, %TIME_REFRESH%
	}
}

RunSevenKnights()
{
	OnStart := 1
	GuiControlGet, BlueStacksLocation, W_Bluestacks:
	BlueStacksFile = `"%BlueStacksLocation%`"  -p com.cjenm.sknights -a com.cjenm.sknights.MainActivity
	Process, Exist, HD-Frontend.exe
	
	if (!ErrorLevel) {
		IfNotExist, %BlueStacksLocation% 
		{
			log := "# 블루스택 경로 재설정 필요"
			AddLog(log)
			OnStart := 0
			
			return false
		}
		else
		{
			RunWait, %BlueStacksFile%
			if (ErrorLevel = "ERROR")
			{
				log := "# 블루스택 실행 실패"
				AddLog(log)
				OnStart := 0

				return false
			}
		}

		log := "# 블루스택 실행"
		AddLog(log)

		Loop
		{
			Process, Exist, HD-Frontend.exe

			if (ErrorLevel != 0)
			{
				log := "  @ 블루스택 : 로딩"
				AddLog(log)
				WinSet, AlwaysOnTop, On, BlueStacks App Player
				if (!IsMainMonitor)
				{
					WinGet, ActiveID, ID, BlueStacks App Player
					moveX := A_ScreenWidth + 100
					WinMove, ahk_id %ActiveID%,, %moveX%, 100
					WinSet, AlwaysOnTop, On, BlueStacks App Player
				}
				break
			}

			if (A_Index > 200)
			{
				log := "# 실패 : 시간 초과"
				AddLog(log)
				OnStart := 0
				
				return false
			}

			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				OnStart := 0
				
				return true
			}

			sleep, %TIME_REFRESH%
		}

		log := "# 세븐 나이츠 실행"
		AddLog(log)
		PushNote("[Nebula] 세븐 나이츠","실행")

		Loop
		{
			if (IsImagePlus(clickX, clickY, "Image\BlueStacks\Icon.bmp", 60, 0)) {
				AddLog("# 세븐 나이츠: 사용준비중, 아이콘 클릭 ")
				
				Click(clickX, clickY)
				SleepLog(TIME_CLICK)
			}
			
			if (IsImagePlus(clickX, clickY, "Image\BlueStacks\SponsorApp.bmp", 60, 0))
			{
				AddLog("# 스폰서 앱 클릭")
				
				Click(clickX, clickY)
				SleepLog(TIME_CLICK)
			}
			
			if (IsImageDisplay("Image\BlueStacks\KaKao.bmp", 60, 0))
			{
				log := "# 블루스택 실행 : 카카오 게임"
				AddLog(log)
				break
			}

			if (IsImageDisplay("Image\BlueStacks\MainTouch.bmp", 60, 0))
			{
				log := "# 블루스택 실행 : 메인 화면"
				AddLog(log)
				break
			}

			if (IsImageDisplay("Image\BlueStacks\NoticeX.bmp", 60, 0, 295, 0, 345, 15))
			{
				break
			}

			if (A_Index > 600)
			{
				log := "# 실패 : 시간 초과"
				AddLog(log)
				OnStart := 0
				
				return false
			}

			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				OnStart := 0
				
				return true
			}

			sleep, %TIME_REFRESH%
		}

		log := "# 광고, 공지 닫기"
		AddLog(log)

		loopCount:=0
		
		Loop
		{
			WinSet, AlwaysOnTop, On, BlueStacks App Player

			if (!IsMainMonitor)
			{
				WinGet, ActiveID, ID, BlueStacks App Player
				moveX := A_ScreenWidth + 100
				WinMove, ahk_id %ActiveID%,, %moveX%, 100
				WinSet, AlwaysOnTop, On, BlueStacks App Player
			}

			if (IsImageDisplay("Image\BlueStacks\NoticeX.bmp", 60, 0, 295, 0, 345, 15))
			{
				log := "# 블루스택 실행 : 공지 닫기"
				AddLog(log)
				Click(630, 10)
				SleepLog(TIME_CLICK)
			}

			if (IsImagePlus(clickX, clickY, "Image\BlueStacks\PopUpX.bmp", 70, "BLACK", 485, 50, 525, 85))
			{
				log := "# 블루스택 실행 :광고 닫기"
				AddLog(log)
				Click(clickX, clickY)
				SleepLog(TIME_CLICK)
			}

			if (IsImagePlus(clickX, clickY, "Image\BlueStacks\PopUpX2.bmp", 60, 0))
			{
				log := "# 블루스택 실행 : 광고 닫기2"
				AddLog(log)
				Click(clickX, clickY)
				SleepLog(TIME_CLICK)
			}

			if (IsImagePlus(clickX, clickY, "Image\BlueStacks\PopUpX3.bmp", 60, "BLACK", 190, 307, 220, 336))
			{
				log := "# 블루스택 실행 : 광고 닫기3"
				AddLog(log)
				Click(clickX, clickY + 10)
				SleepLog(TIME_CLICK)
			}
			
			if (IsImagePlus(clickX, clickY, "Image\BlueStacks\PopUpX4.bmp", 60, 0))
			{
				log := "# 블루스택 실행 : 광고 닫기4"
				AddLog(log)
				Click(clickX, clickY)
				SleepLog(TIME_CLICK)
			}

			if (IsImagePlus(clickX, clickY, "Image\BlueStacks\AdX.bmp", 80 ,0, 595, 355, 640, 375))
			{
				log := "# 블루스택 실행 : 광고 닫기"
				AddLog(log)
				Click(12, 365)
				Click(clickX, clickY)
				SleepLog(TIME_CLICK)
			}

			if (IsImagePlus(clickX, clickY, "Image\BlueStacks\Icon.bmp", 60, 0))
			{
				log := "# 블루스택 실행 : 세븐 나이츠 튕김"
				AddLog(log)
				return false
			}
			
			if (IsImagePlus(clickX, clickY, "Image\BlueStacks\SponsorApp.bmp", 60, 0))
			{
				AddLog("# 스폰서 앱 클릭")
				
				Click(clickX, clickY)
				SleepLog(TIME_CLICK)
			}

			if (IsImagePlus(clickX, clickY, "Image\BlueStacks\PopUpUpdate.bmp", 60, 0))
			{
				log := "# 블루스택 실행 : 업데이트 발견"
				AddLog(log)
				Click(clickX, clickY)
				SleepLog(TIME_CLICK)

				if (WaitImagePlus(clickX, clickY, "Image\BlueStacks\Update.bmp", 60, 0))
				{
					Click(clickX, clickY)
					SleepLog(TIME_CLICK)

					if (WaitImagePlus(clickX, clickY, "Image\BlueStacks\UpdateYes.bmp", 60, 0))
					{
						Click(clickX, clickY)
						SleepLog(TIME_CLICK)

						if (WaitImagePlus(clickX, clickY, "Image\BlueStacks\UpdateCompelete.bmp", 60, 0))
						{
							Click(clickX, clickY)
							log := "# 블루스택 실행 : 업데이트 완료"
							AddLog(log)
							SleepLog(TIME_CLICK)
						}
						else
						{
							return false
						}
					}
					else
					{
						return false
					}
				}
				else
				{
					return false
				}
			}

			if (IsImageDisplay("Image\BlueStacks\ServerOff.bmp", 60, 0))
			{
				log := "# 블루스택 실행 : 점검 중, 30분 대기"
				AddLog(log)
				IsImagePlus(clickX, clickY, "Image\BlueStacks\ServerOffYes.bmp", 60, 0)
				Click(clickX, clickY)
				OnStart := 0
				SleepLog(1800000)
				
				return false
			}

			if (IsImagePlus(clickX, clickY, "Image\BlueStacks\MainTouch.bmp", 60, 0))
			{
				log := "# 블루스택 실행 : 터치"
				AddLog(log)
				Click(clickX, clickY)
				SleepLog(3000)
			}
			else if(loopCount >= 600000)
			{
				Click(323, 238)
			}
/*
			if (IsImageDisplay("Image\BlueStacks\Season2Event.bmp", 60, 0))
			{
				LOG := "# 블루스택 실행 : 시즌2 맞이 선물"
				AddLog(LOG)
				
				Click(615, 20)
				SleepLog(TIME_CLICK)
			}
*/
			if (IsImagePlus(clickX, clickY, "Image\BlueStacks\Attendance.bmp", 60, 0))
			{
				log := "# 블루스택 실행 : 출석"
				AddLog(log)
				Click(clickX, clickY)
				SleepLog(TIME_CLICK)
			}

			if (IsImagePlus(clickX, clickY, "Image\BlueStacks\Helper.bmp", 60, 0))
			{
				log := "# 블루스택 실행 : 도우미 이력"
				AddLog(log)
				Click(clickX, clickY)
				SleepLog(TIME_CLICK)
			}

			if (IsImageDisplay("Image\Common\BattleEnter.bmp", 60, 0))
			{
				AddLog("# 블루스택 실행 : 메인 화면")
				SleepLog(TIME_CLICK)
				
				GuiControlGet,	IsRestartSendHonor,				W_RestartExecute:
				GuiControlGet,	IsRestartGuildAttendance,		W_RestartExecute:

				; 명예보내기
				if (IsRestartSendHonor) {
					AddLog("# 블루스택 실행 : 명예 보내기")
					SendHonor()
				}
				
				; 길드 출석체크
				if (IsRestartGuildAttendance) {
					AddLog("# 블루스택 실행 : 길드 출석하기")
					GetGuildCompensation()
				}
				
				break
			}

			if (A_Index > 1000)
			{
				log := "# 실패 : 시간 초과"
				AddLog(log)
				OnStart := 0
				
				return false
			}

			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				OnStart := 0
				
				return true
			}

			loopCount:=loopCount+%TIME_REFRESH%
			sleep, %TIME_REFRESH%
		}
		
		log := "# 세븐 나이츠 실행 완료"
		AddLog(log)
		PushNote("[Nebula] 세븐 나이츠","실행 완료")
		WinSet, AlwaysOnTop, On, BlueStacks App Player
		
		if (!IsMainMonitor)
		{
			WinGet, ActiveID, ID, BlueStacks App Player
			moveX := A_ScreenWidth + 100
			WinMove, ahk_id %ActiveID%,, %moveX%, 100
			WinSet, AlwaysOnTop, On, BlueStacks App Player
		}

		return true
	}
}

NebulaBefore()
{
	GuiControlGet, NBSendHonor,       W_Main:
	GuiControlGet, NBGuildAttendance, W_Main:
	
	if (!(NBSendHonor || NBGuildAttendance)) {
		return
	}
	
	if (NBSendHonor) {
		SendHonor()
	}
	
	if (NBGuildAttendance) {
		GetGuildCompensation()
	}
}

NebulaCore()
{
	GuiControlGet, NBSendHonor,       W_Main:
	GuiControlGet, NBGuildAttendance, W_Main:
	GuiControlGet, NBTower,           W_Main:
	GuiControlGet, NBArena,           W_Main:
	GuiControlGet, NBRaid,            W_Main:
	GuiControlGet, NBAdventure,       W_Main:
	
	AbleGetKey=1
	GuiControlGet, TimeWait, W_Setting:
	StringReplace, TimeWaitMin, TimeWait, 분,  , All
	TimeWaitSecond := TimeWaitMin * 60
	
	if (!(NBTower || NBArena || NBRaid || NBAdventure)) {
		AddLog("# 이벤트 루프 : 선택한 동작 없음")
		
		return false
	}
	
	if (!SetMainToBegin()) {
		RestartSevenKnights()
		SetMainToBegin()
	}
	
	PushNote("[Nebula] 세븐 나이츠", "반복 시작")
	
	Loop
	{
		log := "# 이벤트 루프 : 반복 중"
		AddLog(log)
		
		OnCore       := 1
		AfterRestart := 0
		onSubRestart := 0
		bTime        := 0
		
		SetTimer, BetweenTimer, 1000
		
		if (IsHotTime() && NBAdventure)
		{
			log := "# 핫타임이므로 바로 모험!"
			AddLog(log)
			PushNote("[Nebula] 세븐 나이츠", "핫타임 모험 시작")
			
			if ((NBRaid || NBAdventure) && !onSubRestart)
				SetBattleMainToAdventureMain() ;모험화면으로 이동
			
			if (NBAdventure && !onSubRestart)
			{
				if (!subInfiniteAdventure())
				{
					RestartSevenKnights()
					SetMainToBegin()
					onSubRestart := 1
				}
			}
			
			if ((NBTower || NBArena) && !onSubRestart)
			{
				if (IsImageDisplay("Image\Common\BattleOut.bmp", 60, 0) = false)
				{
					if (!SetAdventureMainToBattleMain())
					{
						RestartSevenKnights()
						SetMainToBegin()
						GuiControl, W_Main:, Progress, 100
						GuiControl, W_Main:, SimpleLog, <한방 클릭>
					}
				}
			}
		}
		else
		{
			
			if (NBTower && !onSubRestart) {
				if (!subTower())
				{
					RestartSevenKnights()
					SetMainToBegin()
					onSubRestart := 1
				}
			}
			
			if (NBArena && !onSubRestart) {
				if (!subArena())
				{
					RestartSevenKnights()
					SetMainToBegin()
					onSubRestart := 1
				}
			}
			
			if ((NBRaid || NBAdventure) && !onSubRestart) {
				SetBattleMainToAdventureMain()
			}
			
			if (NBRaid && !onSubRestart) {
				if (!subRaid())
				{
					RestartSevenKnights()
					SetMainToBegin()
					onSubRestart := 1
				}
			}
			
			if (NBAdventure && !onSubRestart)
			{
				if (!subInfiniteAdventure())
				{
					RestartSevenKnights()
					SetMainToBegin()
					onSubRestart := 1
				}
			}
			
			if ((NBTower || NBArena) && !onSubRestart)
			{
				if (IsImageDisplay("Image\Common\BattleOut.bmp", 60, 0) = false)
				{
					if (!SetAdventureMainToBattleMain())
					{
						RestartSevenKnights()
						SetMainToBegin()
						GuiControl, W_Main:, Progress, 100
						GuiControl, W_Main:, SimpleLog, <한방 클릭>
					}
				}
			}
			else if (!onSubRestart)
			{
				if (IsImageDisplay("Image\Adventure\LatestAdventure.bmp", 60, 0) = false)
				{
					RestartSevenKnights()
					SetMainToBegin()
					GuiControl, W_Main:, Progress, 100
					GuiControl, W_Main:, SimpleLog, <한방 클릭>
				}
			}
		}
		
		OnCore := 0
		sleep, %TIME_REFRESH%
	}
	
	return false
}

HeroAutoSelling()
{
	GuiControlGet, HeroSellingOption, W_Setting:
	GuiControlGet, IsHeroSellingLowLevel, W_Setting:
	StringLeft, SellingType, HeroSellingOption, 1
	
	Loop
	{
		if (IsImagePlus(clickX, clickY, "Image\Hero\Setting.bmp", 60, 0))
			break
		
		if (IsImagePlus(clickX, clickY, "Image\Hero\Setting2.bmp", 60, 0))
			break
		
		if (A_Index > 10000)
		{
			log := "# 실패 : 시간 초과"
			AddLog(log)
			OnStart := 0
			
			return false
		}
		
		if (AfterRestart = 1)
		{
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			OnStart := 0
			
			return true
		}
		
		sleep, %TIME_REFRESH%
	}
	
	ClickToWaitImage(clickX, clickY, "Image\Hero\SettingOut.bmp")
	X := clickX
	Y := clickY
	
	if (SellingType = 1)
	{
		log := "# 영웅 판매 안함"
		AddLog(log)
		Click(X, Y)
		
		Loop
		{
			log := "# 영웅 판매: 종료"
			AddLog(log)
			
			if (IsImagePlus(clickX, clickY, "Image\Adventure\Start.bmp", 60, 0))
				break
			
			if (IsImagePlus(clickX, clickY, "Image\Tower\Start.bmp", 60, 0))
				break
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				return false
			}
			
			if (A_Index > 500)
				AfterRestart := 1
			
			sleep, %TIME_REFRESH%
		}
		
		return true
	}
	
	log := "# 영웅 자동 판매"
	AddLog(log)
	
	PushNote("[Nebula] 영웅", "판매")
	X := clickX
	Y := clickY
	
	log := "# 영웅 : 오름순 등급순 정렬"
	AddLog(log)
	
	SetOrder("Rank")
	
	if (IsHeroSellingLowLevel)
	{
		log := "# 30 레벨이 아닌 영웅도 판매"
		AddLog(log)
	}
	
	num := 1
	
	if (SellingType = 2)
	{
		log := "# 1성 영웅 판매"
		AddLog(log)
		Rank := 1
		sellingTry := 1
	}
	else if (SellingType = 3)
	{
		log := "# 2성 영웅 판매"
		AddLog(log)
		Rank := 2
		sellingTry := 1
	}
	else if (SellingType = 4)
	{
		log := "# 1성, 2성 영웅 판매"
		AddLog(log)
		Rank := 1
		sellingTry := 2
	}
	
	Loop, %sellingTry%
	{
		log := "# 영웅 판매: " Rank "성 시작"
		AddLog(log)
		
		FileName := "Image\Hero\Rank" Rank ".bmp"
		
		sellLimit := Rank + 1
		LimitName := "Image\Hero\Rank" sellLimit ".bmp"
		cntDrag   := 1
		
		ResetChecker:=0
		Loop
		{
			if (num > 8)
			{
				log := "# 다음 8명 판매 시도"
				AddLog(log)
				
				if (cntDrag = 1 || cntDrag = 2 || cntDrag = 4)
					Drag(315, 325, 315, 132)
				else if (cntDrag = 3 || cntDrag = 5)
					Drag(315, 325, 315, 133)
				
				cntDrag++
				
				if (cntDrag > 5)
					cntDrag = 1
				
				SleepLog(TIME_DRAG)
				num := 1
			}
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				return false
			}
			
			if (ResetChecker > 100)
			{
				log := "# 대기 시간 초과"
				AddLog(log)
				AfterRestart := 1
			}
			else
			{
				ResetChecker++
			}
			
			log := "# " num "번 영웅 확인"
			AddLog(log)
			
			if (!WaitImagePlus(clickX, clickY, "Image\Hero\SettingOut.bmp", 60, 0))
				return false
			
			if (IsImagePlus(clickX, clickY, "Image\Hero\HeroLocked.bmp", 60, 0, HeroMainPosition[num].sX, HeroMainPosition[num].sY, HeroMainPosition[num].eX-65, HeroMainPosition[num].eY-75))
			{
				AddLog("# 잠금 영웅 패스")
				num++
				continue
			}
			
			if (IsImagePlus(clickX, clickY, FileName, 60, "WHITE", HeroMainPosition[num].sX, HeroMainPosition[num].sY, HeroMainPosition[num].eX, HeroMainPosition[num].eY))
			{
				rankX := clickX
				rankY := clickY
				
				if (IsImagePlus(clickX, clickY, "Image\Hero\MainFullLevel.bmp", 60, "WHITE", HeroMainPosition[num].sX+65, HeroMainPosition[num].sY+75, HeroMainPosition[num].eX, HeroMainPosition[num].eY))
				{
					Click(clickX, clickY)
					
					if (WaitImagePlus(clickX, clickY, "Image\Hero\Leader.bmp", 60, 0))
					{
						if (IsImagePlus(clickX, clickY, "Image\Hero\Selling.bmp", 60, 0))
						{
							Click(clickX, clickY)
							
							Loop
							{
								if (IsImagePlus(clickX, clickY, "Image\Hero\SellingConfirm.bmp", 60, 0))
								{
									Click(clickX, clickY)
								}
							
								if (IsImagePlus(clickX, clickY, "Image\Hero\HeroSellYes.bmp", 60, 0))
								{
									log := "# 영웅 판매 성공"
									AddLog(log)
									Click(clickX, clickY)
									SleepLog(TIME_CLICK)
									ResetChecker:=0
									
									if(WaitImagePlus(clickX, clickY, "Image\Hero\Comp.bmp", 60, 0))
									{
										Click(clickX, clickY)
									}
									
									break
								}
								
								if (IsImagePlus(clickX, clickY, "Image\Hero\SellFailLock.bmp", 60, 0))
								{
									log := "# 영웅 잠금으로 판매 안함"
									AddLog(log)
									
									ClickToWaitImage(clickX, clickY, "Image\Hero\X.bmp")
									num++
									Click(clickX, clickY)
									
									break
								}
								
								if (IsImagePlus(clickX, clickY, "Image\Hero\SellFailSpecial.bmp", 60, 0))
								{
									log := "# 특수 영웅이라 판매 안함"
									AddLog(log)
									
									WaitImagePlus(clickX, clickY,  "Image\Common\No2.bmp", 60, 0)
									ClickToWaitImage(clickX, clickY, "Image\Hero\X.bmp")
									num++
									Click(clickX, clickY)
									
									break
								}
								
								if (AfterRestart = 1)
								{
									log := "# 재시작이 일어났습니다"
									AddLog(log)
									return false
								}
								
								if (A_Index > 50)
								{
									log := "# 대기 시간 초과"
									AddLog(log)
									AfterRestart := 1
								}
								
								sleep, %TIME_REFRESH%
							}
						}
						else
						{
							if (IsImagePlus(clickX, clickY, "Image\Hero\X.bmp", 60, 0))
							{
								log := "# 영웅 판매 실패"
								AddLog(log)
								
								num++
								Click(clickX, clickY)
							}
						}
					}
				}
				else if (IsHeroSellingLowLevel)
				{
					Click(rankX, rankY)
					
					if (WaitImagePlus(clickX, clickY, "Image\Hero\Leader.bmp", 60, 0))
					{
						if (IsImagePlus(clickX, clickY, "Image\Hero\Selling.bmp", 60, 0))
						{
							if (WaitImagePlus(clickX, clickY, "Image\Hero\SellingConfirm.bmp", 60, 0))
							{
								Click(clickX, clickY)
							}
								
							log := "# 영웅 판매 성공"
							AddLog(log)
							
							IniRead, IniNumSellHero, %CountFile%, Count, NumSellHero
							NumSellHero := IniNumSellHero
							
							NumSellHero++
							
							IniWrite, %NumSellHero%, %CountFile%, Count, NumSellHero
							
							if(WaitImagePlus(clickX, clickY, "Image\Hero\HeroSellYes.bmp", 60, 0))
							{
								Click(clickX, clickY)
							}
							
							SleepLog(TIME_CLICK)
							
							if(WaitImagePlus(clickX, clickY, "Image\Hero\Comp.bmp", 60, 0))
							{
								Click(clickX, clickY)
							}
						}
						else
						{
							if (IsImagePlus(clickX, clickY, "Image\Hero\X.bmp", 60, 0))
							{
								log := "# 영웅 판매 실패"
								AddLog(log)
								num++
								Click(clickX, clickY)
							}
						}
					}
				}
				else
				{
					num++
				}
			}
			else
			{
				if (IsImagePlus(clickX, clickY, LimitName, 30, "WHITE", HeroMainPosition[num].sX, HeroMainPosition[num].sY, HeroMainPosition[num].eX, HeroMainPosition[num].eY))
				{
					log := "# 영웅 판매: " Rank "성 완료"
					AddLog(log)
					Rank++
					break
				}
				else
				{
					num++
				}
			}
		}
	}
	
	log := "# 영웅 판매: 완료"
	AddLog(log)
	Click(X, Y)
	
	Loop
	{
		log := "# 영웅 판매: 종료"
		AddLog(log)
		
		if (IsImagePlus(clickX, clickY, "Image\Adventure\Start.bmp", 60, 0))
			break
		
		if (IsImagePlus(clickX, clickY, "Image\Tower\Start.bmp", 60, 0))
			break
		
		if (AfterRestart = 1)
		{
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			
			return false
		}
		
		if (A_Index > 50)
		{
			log := "# 대기 시간 초과"
			AddLog(log)
			AfterRestart := 1
		}
		
		sleep, %TIME_REFRESH%
	}
	return true
}

EquipAutoSelling()
{
	log := "# 장비 판매 시작"
	AddLog(log)
	PushNote("[Nebula] 장비", "판매")
	
	IsFinal := 0
	
	if (!WaitImagePlus(clickX, clickY, "Image\Equipment\Out.bmp", 60, 0))
		return false
	
	log := "# 장비 판매 창 다시 들어가기"
	AddLog(log)
	
	ClickToWaitImage(clickX, clickY, "Image\Adventure\Start.bmp")
	SleepLog(2000)
	ClickToWaitImage(clickX, clickY, "Image\Equipment\Equip.bmp")
	ClickToWaitImage(clickX, clickY, "Image\Equipment\Out.bmp")
	
	if (!IsImagePlus(clickX, clickY, "Image\Equipment\AscendingOrder.bmp", 60, 0, 390, 35, 450, 60))
	{
		SleepLog(1000)
		Click(415, 45)
		
		if (!WaitImagePlus(clickX, clickY, "Image\Equipment\AscendingOrder.bmp", 60, 0, 390, 35, 450, 60))
			return false
		
		SleepLog(2000)
	}
	
	log := "# 장비 판매 창 정렬"
	AddLog(log)
	
	target    := 1
	sellCount := 0
	cntDrag   := 1
	
	Loop
	{
		esX := 147
		esY := 65 + (target - 1) * 60
		eeX := 172
		eeY := 124 + (target - 1) * 60
		wsX := 177
		wsY := 108 + (target - 1) * 60
		weX := 227
		weY := 120 + (target - 1) * 60
		
		if (sellCount > 2)
		{
			log := "# 장비 판매 : 3개 성공"
			AddLog(log)
			
			IsFinal := 1
			
			if (!WaitImagePlus(clickX, clickY, "Image\Equipment\Out.bmp", 60, 0))
				return false
			
			ClickToWaitImage(clickX, clickY, "Image\Adventure\Start.bmp")
			
			if (sellCount > 0)
				return true
			else
				return false
		}
		
		target++
		
		if (target > 5)
		{
			target := 1
			
			if (A_Index > 200)
				IsFinal := 1
			
			if (IsFinal)
			{
				if (!WaitImagePlus(clickX, clickY, "Image\Equipment\Out.bmp", 60, 0))
					return false
				
				ClickToWaitImage(clickX, clickY, "Image\Adventure\Start.bmp")
				
				if (sellCount > 0)
					return true
				else
					return false
			}
			
			if (cntDrag = 1 || cntDrag = 2 || cntDrag = 4)
				Drag(330, 324, 330, 126)
			else if (cntDrag = 3 || cntDrag = 5)
				Drag(330, 324, 330, 127)
			
			cntDrag++
			
			if (cntDrag > 5)
				cntDrag = 1
			
			if (IsImagePlus(clickX, clickY, "Image\Equipment\Final.bmp", 100, 0, 473, 312, 478, 343))
			{
				log := "# 장비 판매 보내기 마지막 시도"
				AddLog(log)
				IsFinal := 1
			}
			
			SleepLog(TIME_DRAG)
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Equipment\Weapon.bmp", 60, "WHITE", esX, esY, eeX, eeY)
		|| IsImagePlus(clickX, clickY, "Image\Equipment\Sheild.bmp", 60, "WHITE", esX, esY, eeX, eeY)
		|| IsImagePlus(clickX, clickY, "Image\Equipment\Staff.bmp",  60, "WHITE", esX, esY, eeX, eeY))
		{
			Loop
			{
				if (IsImagePlus(clickX, clickY, "Image\Equipment\Rank7.bmp", 100, "WHITE", wsX, wsY, weX, weY)
				|| IsImagePlus(clickX, clickY, "Image\Equipment\Rank6.bmp",  60, "WHITE", wsX, wsY, weX, weY)
				|| IsImagePlus(clickX, clickY, "Image\Equipment\Rank5.bmp",  60, "WHITE", wsX, wsY, weX, weY)
				|| IsImagePlus(clickX, clickY, "Image\Equipment\Rank4.bmp",  60, "WHITE", wsX, wsY, weX, weY))
				{
					log := "# 장비: 4성 이상이므로 판매 안함"
					AddLog(log)
					break
				}
				else
				{
					clickX := 437
					clickY := wsY
					Click(clickX, clickY)
					SleepLog(TIME_CLICK)
					
					Loop
					{
						if (IsImagePlus(clickX, clickY, "Image\Equipment\SellYes.bmp", 60, 0))
						{
							GuiControlGet, IsCapture,  W_Setting:
							GuiControlGet, AlarmImage, W_Setting:
							
							if (IsCapture)
							{
								filename := "Capture\" A_DD "_" A_HOUR "_" A_MIN "_" A_SEC "_Selling.png"
								Capture(filename)
								
								if (AlarmImage)
									PushImage(filename)
							}
							
							Click(clickX, clickY)
							SleepLog(TIME_CLICK)
						}
						
						if (IsImagePlus(clickX, clickY, "Image\Equipment\ErrorRank.bmp", 60, 0))
						{
							if (IsImagePlus(clickX, clickY, "Image\Equipment\ErrorRankNo.bmp", 60, 0))
							{
								Click(clickX, clickY)
								break
							}
						}
						
						if (IsImagePlus(clickX, clickY, "Image\Equipment\Out.bmp", 60, 0))
						{
							SleepLog(TIME_WAITPOPUP)
							
							if (IsImagePlus(clickX, clickY, "Image\Equipment\Out.bmp", 60, 0))
							{
								log := "# 장비: 판매"
								AddLog(log)
								
								sellCount++
								target--
								
								break
							}
						}
						
						if (A_Index > 100)
						{
							log := "# 실패 : 시간 초과"
							AddLog(log)
							
							return false
						}
						
						if (AfterRestart = 1)
						{
							log := "# 재시작이 일어났습니다"
							AddLog(log)
							
							return false
						}
						
						sleep, %TIME_REFRESH%
					}
					
					break
				}
				
				if (A_Index > 100)
				{
					log := "# 실패 : 시간 초과"
					AddLog(log)
					
					return false
				}
				
				if (AfterRestart = 1)
				{
					log := "# 재시작이 일어났습니다"
					AddLog(log)
					
					return false
				}
				
				sleep, %TIME_REFRESH%
			}
			
			if (!IsFinal)
				SleepLog(TIME_CLICK)
		}
		else
		{
			log := "# 장비: 장신구나 보석은 판매 안함"
			AddLog(log)
		}
	}
}

GetMainHeroNumber(ByRef clickX, ByRef clickY, sX, sY, eX, eY)
{
	log := "#보유영웅 검색 시작"
	AddLog(log)
	
	Loop, 34
	{
		number := HeroCheck%A_Index%
		ImageName := "Image\Hero\HeroIcon\M" number ".bmp"
		
		if (IsImagePlus(clickX, clickY, ImageName, 69, 0, sX, sY, eX, eY))
		{
			clickX := vX - posX
			clickY := vY - posY
			
			log := "  @ 영웅 찾음: " number
			AddLog(log)
			
			return number
		}
	}
	
	log := "  @ 희귀 영웅"
	AddLog(log)
	
	return -1
}

GetSmallHeroNumber(ByRef clickX, ByRef clickY, sX, sY, eX, eY)
{
	log := "#장착영웅 검색 시작"
	AddLog(log)
	
	Loop, 34
	{
		number := HeroCheck%A_Index%
		ImageName := "Image\Hero\HeroIcon\S" number ".bmp"
		
		if (IsImagePlus(clickX, clickY, ImageName, 69, 0, sX, sY, eX, eY))
		{
			log := "  @ 영웅 찾음: " number
			AddLog(log)
			
			return number
		}
	}
	
	log := "  @ 미등록 영웅"
	AddLog(log)
	
	return -1
}

CompareHeroGroup(NewHero, OldHero)
{
	if (OldHero = -1 or NewHero = -1)
		return true
		
	if (NewHero = OldHero)
		return false
	
	if (OldHero >= 1 && OldHero <= 55)
	{
		if(mod(NewHero, 64) = mod(OldHero, 64))
			return false
	}
	else if (OldHero >= 65 && OldHero <= 119)
	{
		if(mod(NewHero, 64) = mod(OldHero, 64))
			return false
	}
	else if (OldHero >= 129 && OldHero <= 183)
	{
		if(mod(NewHero, 64) = mod(OldHero, 64))
			return false
	}

	return true
}

IsUsedHeroFullLevel(OriginalHeroNumber)
{
	GuiControlGet, HeroChangeOption, W_Setting:
	StringLeft, ChangeType, HeroChangeOption, 1
	
	if (ChangeType = 1)
	{
		CheckSlot1:=0
		CheckSlot2:=0
		CheckSlot3:=1
		CheckSlot4:=1
		CheckSlot5:=1
		AddHeroNumber:=0
	}
	else if (ChangeType = 2)
	{
		CheckSlot1:=1
		CheckSlot2:=1
		CheckSlot3:=1
		CheckSlot4:=1
		CheckSlot5:=0
		AddHeroNumber:=0
	}
	else if (ChangeType = 3)
	{
		CheckSlot1:=0
		CheckSlot2:=0
		CheckSlot3:=1
		CheckSlot4:=1
		CheckSlot5:=0
		AddHeroNumber:=0
	}
	else if (ChangeType = 4)
	{
		CheckSlot1:=0
		CheckSlot2:=1
		CheckSlot3:=1
		CheckSlot4:=1
		CheckSlot5:=0
		AddHeroNumber:=5
	}
	else if (ChangeType = 5)
	{
		CheckSlot1:=0
		CheckSlot2:=1
		CheckSlot3:=1
		CheckSlot4:=1
		CheckSlot5:=1
		AddHeroNumber:=5
	}
	else if (ChangeType = 6)
	{
		CheckSlot1:=0
		CheckSlot2:=0
		CheckSlot3:=1
		CheckSlot4:=1
		CheckSlot5:=0
		AddHeroNumber:=5
	}
	if (ChangeType = 7)
	{
		CheckSlot1:=0
		CheckSlot2:=0
		CheckSlot3:=1
		CheckSlot4:=1
		CheckSlot5:=1
		AddHeroNumber:=10
	}
	if (ChangeType = 8)
	{
		CheckSlot1:=0
		CheckSlot2:=0
		CheckSlot3:=0
		CheckSlot4:=1
		CheckSlot5:=1
		AddHeroNumber:=15
	}
	
	if(CheckSlot%OriginalHeroNumber%=0)
		return false
	
	HeroNum:=OriginalHeroNumber+AddHeroNumber
	sx:=HeroSmallPositon[HeroNum].sX + 34
	sy:=HeroSmallPositon[HeroNum].sY + 40
	ex:=HeroSmallPositon[HeroNum].eX
	ey:=HeroSmallPositon[HeroNum].eY
	
	if (IsImagePlus(clickX, clickY, "Image\Hero\CheckHeroFullLevel.bmp", 69, "WHITE", sx , sy, ex, ey))
	{
		return true
	}
	
	if (IsImagePlus(clickX, clickY, "Image\Hero\CheckHeroFullLevel2.bmp", 69, "WHITE", sx , sy, ex, ey))
	{
		return true
	}
	
	return false
}

HeroLevelChecker()
{
	log := "# 영웅 30 달성 검사"
	AddLog(log)
	
	GuiControlGet, HeroChangeOption, W_Setting:
	StringLeft, ChangeType, HeroChangeOption, 1
	
	if (ChangeType = 1)
	{
		CheckSlot1:=0
		CheckSlot2:=0
		CheckSlot3:=1
		CheckSlot4:=1
		CheckSlot5:=1
		AddHeroNumber:=0
	}
	else if (ChangeType = 2)
	{
		CheckSlot1:=1
		CheckSlot2:=1
		CheckSlot3:=1
		CheckSlot4:=1
		CheckSlot5:=0
		AddHeroNumber:=0
	}
	else if (ChangeType = 3)
	{
		CheckSlot1:=0
		CheckSlot2:=0
		CheckSlot3:=1
		CheckSlot4:=1
		CheckSlot5:=0
		AddHeroNumber:=0
	}
	else if (ChangeType = 4)
	{
		CheckSlot1:=0
		CheckSlot2:=1
		CheckSlot3:=1
		CheckSlot4:=1
		CheckSlot5:=0
		AddHeroNumber:=5
	}
	else if (ChangeType = 5)
	{
		CheckSlot1:=0
		CheckSlot2:=1
		CheckSlot3:=1
		CheckSlot4:=1
		CheckSlot5:=1
		AddHeroNumber:=5
	}
	else if (ChangeType = 6)
	{
		CheckSlot1:=0
		CheckSlot2:=0
		CheckSlot3:=1
		CheckSlot4:=1
		CheckSlot5:=0
		AddHeroNumber:=5
	}
	if (ChangeType = 7)
	{
		CheckSlot1:=0
		CheckSlot2:=0
		CheckSlot3:=1
		CheckSlot4:=1
		CheckSlot5:=1
		AddHeroNumber:=10
	}
	if (ChangeType = 8)
	{
		CheckSlot1:=0
		CheckSlot2:=0
		CheckSlot3:=0
		CheckSlot4:=1
		CheckSlot5:=1
		AddHeroNumber:=15
	}
	
	loop, 5
	{
		if(CheckSlot%A_Index%=1)
		{
			HeroNum:=A_Index+AddHeroNumber
			sx:=CheckHeroFullLevel[HeroNum].sX + 34
			sy:=CheckHeroFullLevel[HeroNum].sY + 40
			ex:=CheckHeroFullLevel[HeroNum].eX
			ey:=CheckHeroFullLevel[HeroNum].eY
			
			if (IsImagePlus(clickX, clickY, "Image\Hero\CheckHeroFullLevel1.bmp", 69, "WHITE" , sx, sy, ex, ey))
			{
				AddLog("# 영웅 30 달성 있음")
				return true
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Hero\CheckHeroFullLevel2.bmp", 69, "WHITE" , sx, sy, ex, ey))
			{
				AddLog("# 영웅 30 달성 있음")
				return true
			}
		}
	}
	
	log := "# 영웅 30 달성 없음"
	AddLog(log)
	
	return false
}

SetOrder(Order)
{
	Success:=0
	if (Order = "Normal")
	{
		ImageName := "Image\Hero\NormalHeroes.bmp"
		sX := 440
		sY := 46
		eX := 525
		eY := 75
		X  := 460
		Y  := 60
	}
	else if (Order = "Level" || Order = "Rank")
	{
		;ImageName := "Image\Hero\Set" Order "Order.bmp"
		ImageName := "Image\Hero\" Order "Order.bmp"
		sX := 536
		sY := 60
		eX := 585
		eY := 71
		X := 560
		Y := 65
	}

	Loop
	{
		if (!IsImagePlus(clickX, clickY, "Image\Hero\Chat.bmp", 60, 0, 615, 44, 633, 66))
		{
			if(IsImagePlus(clickX, clickY, "Image\Hero\AscendingOrder.bmp", 60, 0))
			{
				Click(clickX, clickY)
				sleep, 500
			}
		
			if (Order = "Normal")
			{
				loop
				{
					if(IsImagePlus(clickX, clickY, "Image\Hero\Chat.bmp", 60, 0, 615, 44, 633, 66))
						Click(439, 40) ;채팅닫기

					if(IsImagePlus(clickX, clickY, ImageName, 60, 0))
					{
						Click(clickX, clickY)
					}
					else
					{
						if(IsImagePlus(clickX, clickY, "Image\Hero\CoreHeroes.bmp", 60, 0))
						{
							Success:=1
							break
						}
					}
					
					if(A_Index > 100)
						break

					sleep, 200
				}

				if(Success=1)
				{
					break
				}
			}
			else
			{
				if ((Order = "Level" || Order = "Rank") && IsImagePlus(clickX, clickY, ImageName, 60, 0, 533, 190, 588, 239))
				{
					Click(clickX, clickY)
					break
				}
				
				Click(X, Y)
			}
		}
		else
		{
			Click(439, 40) ;채팅닫기
		}
		
		if (A_Index > 100)
		{
			log := "# Debugger : 정렬 조작 오류"
			Addlog(log)
			sleep, %TIME_REFRESH%
			break
		}
		
		sleep, %TIME_REFRESH%
	}
	
	sleep, 1000
}

SetHeroChangeOrder()
{
	log := "# 영웅 : 오름순 레벨순 정렬"
	AddLog(log)
	
	SetOrder("Level")
	
	log := "# 영웅 : 영웅 관리창 재시작"
	AddLog(log)
}

SetHeroStrengthenOrder(N = 0)
{
	log := "# 영웅 : 오름순 등급순 정렬"
	AddLog(log)
	
	if (N = 1)
	{
		SetOrder("Rank")
	}
	
	log := "# 영웅 : 영웅 관리창 재시작"
	AddLog(log)
	
	if (!WaitImagePlus(clickX, clickY,  "Image\Hero\SettingOut.bmp", 60, 0))
		return false
	
	Click(clickX, clickY)
	SleepLog(TIME_WAITPOPUP)
	
	Loop
	{
		if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
			{
				log := "# 업적 달성"
				AddLog(log)
				clickX := clickX + 35
				clickY := clickY + 15
				ClickToWaitImage(clickX, clickY, "Image\Achievement\Out.bmp")
				GetAchievement()
			}
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
			{
				log := "# 가이드 퀘스트 완료"
				AddLog(log)
				
				clickX := clickX + 40
				clickY := clickY + 60
				Click(clickX, clickY)
			}
		}
		
		if (IsImagePlus(clickX, clickY,  "Image\Hero\Setting.bmp", 60, 0))
		{
			Click(clickX, clickY)
			
			if (CoreMode = 1)
			{
				if (!WaitImagePlus(clickX, clickY, "Image\Hero\CoreHeroes.bmp",  60, 0, 445, 61, 515, 72))
					return false
				
				SetOrder("Normal")
			}
			
			return true
		}
		
		if (IsImagePlus(clickX, clickY,  "Image\Hero\Setting2.bmp", 60, 0))
		{
			Click(clickX, clickY)
			
			if (CoreMode = 1)
			{
				if (!WaitImagePlus(clickX, clickY, "Image\Hero\CoreHeroes.bmp",  60, 0, 445, 61, 515, 72))
					return false
				
				SetOrder("Normal")
			}
			
			return true
		}
		
		sleep, %TIME_REFRESH%
	}
}

SkillManage(Wave, evt)
{
	log := "# 스킬 사용: " Wave "번 웨이브"
	AddLog(log)
	
	GuiControlGet, IsSelectedSkill, W_Setting:
	
	if (!IsSelectedSkill) {
		log := "# 자동 스킬 사용 중"
		AddLog(log)
		
		if (Wave = 1 && IsCallFriends = 1)
		{
			log := "  @ 친구 소환"
			AddLog(log)
			
			clickX := 312
			clickY := 329
			Click(clickX, ClickY)
		}
		
		return
	}
	
	if (evt = 1) {
		GuiControlGet, SKAdventureM, W_Setting:
		
		Loop, 3
		{
			GuiControlGet, Skill%SKAdventureM%Wave%Wave%Hero%A_Index%, W_SkillSetup:
			GuiControlGet, Skill%SKAdventureM%Wave%Wave%Hero%A_Index%Skill, W_SkillSetup:
			Hero  := Skill%SKAdventureM%Wave%Wave%Hero%A_Index%
			Skill := Skill%SKAdventureM%Wave%Wave%Hero%A_Index%Skill
			
			if (Hero != "사용 안함")
			{
				StringLeft, HeroNumber, Hero, 1
				StringLeft, SkillNumber, Skill, 1
				
				log := "  @ 스킬 사용: " HeroNumber "번 영웅 " SkillNumber "번 스킬"
				AddLog(log)
				
				HeroSkill(HeroNumber, SkillNumber)
				GuiControlGet, IsCallFriends, W_Setting:
				
				if (Wave = 1 && IsCallFriends = 1 && A_Index = 1)
				{
					log := "  @ 친구 소환"
					AddLog(log)
					
					clickX := 312
					clickY := 329
					Click(clickX, ClickY)
				}
			}
			
			sleep, %TIME_REFRESH%
		}
	}
	
	if (evt = 2) {
		GuiControlGet, SKAdventureS, W_Setting:
		
		Loop, 3 {
			GuiControlGet, Skill%SKAdventureS%Wave%Wave%Hero%A_Index%, W_SkillSetup:
			GuiControlGet, Skill%SKAdventureS%Wave%Wave%Hero%A_Index%Skill, W_SkillSetup:
			Hero  := Skill%SKAdventureS%Wave%Wave%Hero%A_Index%
			Skill := Skill%SKAdventureS%Wave%Wave%Hero%A_Index%Skill
			
			if (Hero != "사용 안함")
			{
				StringLeft, HeroNumber, Hero, 1
				StringLeft, SkillNumber, Skill, 1
				
				log := "  @ 스킬 사용: " HeroNumber "번 영웅 " SkillNumber "번 스킬"
				AddLog(log)
				
				HeroSkill(HeroNumber, SkillNumber)
				GuiControlGet, IsCallFriends, W_Setting:
				
				if (Wave = 1 && IsCallFriends = 1 && A_Index = 1)
				{
					log := "  @ 친구 소환"
					AddLog(log)
					clickX := 312
					clickY := 329
					Click(clickX, ClickY)
				}
			}
			
			sleep, %TIME_REFRESH%
		}
	}
	
	if (evt = 3) {
		Loop, 2 {
			GuiControlGet, GoldWave%Wave%Hero%A_Index%, W_SkillSetup:
			GuiControlGet, GoldWave%Wave%Hero%A_Index%Skill, W_SkillSetup:
			Hero  := GoldWave%Wave%Hero%A_Index%
			Skill := GoldWave%Wave%Hero%A_Index%Skill
			
			if (Hero != "사용 안함")
			{
				StringLeft, HeroNumber, Hero, 1
				StringLeft, SkillNumber, Skill, 1
				
				log := "  @ 스킬 사용: " HeroNumber "번 영웅 " SkillNumber "번 스킬"
				AddLog(log)
				
				HeroSkill(HeroNumber, SkillNumber)
			}
			
			sleep, %TIME_REFRESH%
		}
	}
	
	if (evt = 4) {
		Loop, 3
		{
			GuiControlGet, RaidWave%Wave%Hero%A_Index%, W_SkillSetup:
			GuiControlGet, RaidWave%Wave%Hero%A_Index%Skill, W_SkillSetup:
			Hero  := RaidWave%Wave%Hero%A_Index%
			Skill := RaidWave%Wave%Hero%A_Index%Skill
			
			if (Hero != "사용 안함")
			{
				StringLeft, HeroNumber, Hero, 1
				StringLeft, SkillNumber, Skill, 1
				
				log := "  @ 스킬 사용: " HeroNumber "번 영웅 " SkillNumber "번 스킬"
				AddLog(log)
				
				HeroSkill(HeroNumber, SkillNumber)
			}
		}
	}
}

HeroSkill(HeroNumber, SkillNumber)
{
	if (HeroNumber = 0 || SkillNumber = 0)
		return false
	else if (SkillNumber = 1 || SkillNumber = 2)
	{
		clickX := (5 - HeroNumber)  * 60 + 372
		clickY := (SkillNumber - 1) * 60 + 299
		Click(clickX, clickY)
		
		return true
	}
	else if (SkillNumber = 3)
	{
		clickX := (5 - HeroNumber) * 60 + 372
		clickY := 232
		Click(clickX, clickY)
		
		return true
	}
}

SetPlayerSkill(menu)
{
	log := "# 플레이어 스킬 설정"
	AddLog(log)
	
	GuiControlGet,	PSAdventureM,		W_Setting:
	GuiControlGet,	PSAdventureS,		W_Setting:
	GuiControlGet,	PSArena,			W_Setting:
	GuiControlGet,	RaidPlayerSkill,	W_RaidSetup:
	
	if (menu = 1)
	{
		if (!WaitImagePlus(clickX, clickY, "Image\Adventure\Start.bmp", 60, 0))
			return false
		
		psImage := "Image\Hero\PlayerSkill" PSAdventureM ".bmp"
		
		if (IsImagePlus(clickX, clickY, psImage, 60, 0))
		{
			log := "# 플레이어 스킬 : 변경할 필요 없음"
			AddLog(log)
			
			return true
		}
		else
		{
			clickX := 252
			clickY := 124
			ClickToWaitImage(clickX, clickY, "Image\Hero\PlayerSkillMenu.bmp")
			psImage := "Image\Hero\PlayerSkillUnSelected" PSAdventureM ".bmp"
			
			if (!IsImagePlus(clickX, clickY, psImage, 60, 0))
				return false
			
			psImage := "Image\Hero\PlayerSkillSelected" PSAdventureM ".bmp"
			ClickToWaitImage(clickX, clickY, psImage)
			
			if (!IsImagePlus(clickX, clickY, "Image\Hero\PlayerSkillMenuOut.bmp", 60, 0))
				return false
			
			Click(clickX, clickY)
			
			if (!WaitImagePlus(clickX, clickY, "Image\Common\Back.bmp", 80, 0, 7, 0, 42, 40))
				return false
			else
			{
				log := "# 플레이어 스킬 : 변경 완료"
				AddLog(log)
				
				return true
			}
		}
	}
	else if (menu = 2)
	{
		if (!WaitImagePlus(clickX, clickY, "Image\Adventure\Start.bmp", 60, 0))
			return false
		
		psImage := "Image\Hero\PlayerSkill" PSAdventureS ".bmp"
		
		if (IsImagePlus(clickX, clickY, psImage, 60, 0))
		{
			log := "# 플레이어 스킬 : 변경할 필요 없음"
			AddLog(log)
			return true
		}
		else
		{
			clickX := 252
			clickY := 124
			ClickToWaitImage(clickX, clickY, "Image\Hero\PlayerSkillMenu.bmp")
			psImage := "Image\Hero\PlayerSkillUnSelected" PSAdventureS ".bmp"
			
			if (!IsImagePlus(clickX, clickY, psImage, 60, 0))
				return false
			
			psImage := "Image\Hero\PlayerSkillSelected" PSAdventureS ".bmp"
			ClickToWaitImage(clickX, clickY, psImage)
			
			if (!IsImagePlus(clickX, clickY, "Image\Hero\PlayerSkillMenuOut.bmp", 60, 0))
				return false
			
			Click(clickX, clickY)
			
			if (!WaitImagePlus(clickX, clickY, "Image\Common\Back.bmp", 80, 0, 7, 0, 42, 40))
				return false
			else
			{
				log := "# 플레이어 스킬 : 변경 완료"
				AddLog(log)
				return true
			}
		}
	}
	else if (menu = 3)
	{
		if (!WaitImagePlus(clickX, clickY, "Image\Arena\Start.bmp", 60, 0))
			return false
		
		psImage := "Image\Hero\PlayerSkillArena" PSArena ".bmp"
		
		if (IsImagePlus(clickX, clickY, psImage, 60, 0))
		{
			log := "# 플레이어 스킬 : 변경할 필요 없음"
			AddLog(log)
			
			return true
		}
		else
		{
			clickX := 197
			clickY := 104
			ClickToWaitImage(clickX, clickY, "Image\Hero\PlayerSkillMenu.bmp")
			psImage := "Image\Hero\PlayerSkillUnSelected" PSArena ".bmp"
			
			if (!IsImagePlus(clickX, clickY, psImage, 60, 0))
				return false
			
			psImage := "Image\Hero\PlayerSkillSelected" PSArena ".bmp"
			ClickToWaitImage(clickX, clickY, psImage)
			
			if (!IsImagePlus(clickX, clickY, "Image\Hero\PlayerSkillMenuOut.bmp", 60, 0))
				return false
			
			Click(clickX, clickY)
			
			if (!WaitImagePlus(clickX, clickY, "Image\Common\Back.bmp", 80, 0, 7, 0, 42, 40))
				return false
			else
			{
				log := "# 플레이어 스킬 : 변경 완료"
				AddLog(log)
				return true
			}
		}
	}
	else if (menu = 4)
	{
		if (!WaitImagePlus(clickX, clickY, "Image\Adventure\Enter.bmp", 60, 0))
			return false
		
		clickX := 182
		clickY := 59
		ClickToWaitImage(clickX, clickY, "Image\Hero\PlayerSkillMenu.bmp")
		psImage := "Image\Hero\PlayerSkillUnSelected" RaidPlayerSkill ".bmp"
		
		if (!IsImagePlus(clickX, clickY, psImage, 60, 0))
		{
			log := "# 플레이어 스킬 : 변경할 필요 없음"
			AddLog(log)
			IsImagePlus(clickX, clickY, "Image\Hero\PlayerSkillMenuOut.bmp", 60, 0)
			Click(clickX, clickY)
			WaitImagePlus(clickX, clickY, "Image\Adventure\Enter.bmp", 60, 0)
			return true
		}
		
		psImage := "Image\Hero\PlayerSkillSelected" RaidPlayerSkill ".bmp"
		ClickToWaitImage(clickX, clickY, psImage)
		
		if (!IsImagePlus(clickX, clickY, "Image\Hero\PlayerSkillMenuOut.bmp", 60, 0))
			return false
		
		Click(clickX, clickY)
		
		if (!WaitImagePlus(clickX, clickY, "Image\Adventure\Enter.bmp", 60, 0))
			return false
		else
		{
			log := "# 플레이어 스킬 : 변경 완료"
			AddLog(log)
			
			return true
		}
	}
}

SetTeam(mode)
{
	log := "# 팀 변경"
	AddLog(log)
	
	if (mode = 1)
	{
		GuiControlGet, TeamAdventureM, W_Setting:
		Team := TeamAdventureM
	}
	else if (mode = 2)
	{
		GuiControlGet, TeamAdventureS, W_Setting:
		Team := TeamAdventureS
	}
	else if (mode = 3)
	{
		GuiControlGet, TeamTower, W_Setting:
		Team := TeamTower
	}
	
	if (Team = 1)
	{
		log := "# 1팀 선택"
		AddLog(log)
		
		ClickX := 97
		ClickY := 54
		ClickWithoutLog(clickX, clickY)
	}
	else if (Team = 2)
	{
		log := "# 2팀 선택"
		AddLog(log)
		
		ClickX := 167
		ClickY := 54
		ClickWithoutLog(clickX, clickY)
	}
	else if (Team = 3)
	{
		log := "# 3팀 선택"
		AddLog(log)
		
		ClickX := 237
		ClickY := 54
		ClickWithoutLog(clickX, clickY)
	}
	
	SleepLog(TIME_CLICK)
}

BattleAdventure(evtCase)
{
	onWave1 := 1
	onWave2 := 1
	onWave3 := 1
	
	if (evtCase = 1)
		strCase := "주 모험"
	else if (evtCase = 2)
		strCase := "부 모험"
	else if (evtCase = 3)
		strCase := "황금"
	else if (evtCase = 4)
		strCase := "레이드"
	
	Delay := 0
	
	Loop
	{
		; Adventure
		if ((evtCase = 1) || (evtCase = 2)) {
			if (IsImagePlus(clickX, clickY,  "Image\Adventure\ThreeWaves.bmp", 80, 0)) {
				AddLog("# " strCase ": 총 3 웨이브")
				AddLog("# " strCase ": 첫번째 웨이브")
				SkillManage(1, evtCase)
				
				TempIndex_B:=1
				Loop {
					if (IsImagePlus(clickX, clickY,  "Image\Adventure\Three_Second.bmp", 80, 0)) {
						break
					}

					if (IsImagePlus(clickX, clickY, "Image\Common\Defeat.bmp", 70, 0)) {
						return false
					}
					
					if (IsImagePlus(clickX, clickY,  "Image\Common\tempError.bmp", 60, 0)) {
						AddLog("# " strCase " : 일시적 접속 오류")
						AfterRestart := 1
						return false
					}
					
					if(TempIndex_B > 900)
					{
						AfterRestart:=1
					}
					
					if (AfterRestart = 1) {
						AddLog("# " strCase ": 재시작이 일어났습니다")
						
						return false
					}
					
					TempIndex_B++
					sleep, 200
				}
				
				AddLog("# " strCase ": 두번째 웨이브")
				SkillManage(2, evtCase)
				
				TempIndex_B:=1
				Loop {
					if (IsImagePlus(clickX, clickY,  "Image\Adventure\Three_Third.bmp", 60, 0)) {
						break
					}

					if (IsImagePlus(clickX, clickY, "Image\Common\Defeat.bmp", 70, 0)) {
						return false
					}
					
					if(TempIndex_B > 900)
					{
						AfterRestart:=1
					}

					if (AfterRestart = 1) {
						AddLog("# " strCase ": 재시작이 일어났습니다")
						
						return false
					}
					
					TempIndex_B++
					sleep, 200
				}
				
				AddLog("# " strCase ": 세번째 웨이브")
				SkillManage(3, evtCase)
				
				return true
			}

			if (IsImagePlus(clickX, clickY, "Image\Adventure\Wave21.bmp", 35, "WHITE")) {
				AddLog("# " strCase ": 총 2 웨이브")
				AddLog("# " strCase ": 첫번째 웨이브")
				SkillManage(1, evtCase)

				TempIndex_B:=1
				Loop {
					if (IsImagePlus(clickX, clickY,  "Image\Adventure\Wave22.bmp", 29, "WHITE")) {
						break
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Common\Defeat.bmp", 70, 0)) {
						return false
					}
					
					if (IsImagePlus(clickX, clickY,  "Image\Common\tempError.bmp", 60, 0)) {
						AddLog("# " strCase " : 일시적 접속 오류")
						AfterRestart := 1
						return false
					}
					
					if(TempIndex_B > 900)
					{
						AfterRestart:=1
					}
					
					if (AfterRestart = 1) {
						AddLog("# " strCase ": 재시작이 일어났습니다")
						
						return false
					}
					
					TempIndex_B++
					sleep, 200
				}
				
				AddLog("# " strCase ": 두번째 웨이브")
				SkillManage(2, evtCase)
				
				return true
			}
		}
		
		; Tower
		if (evtCase = 3) {
			if (IsImagePlus(clickX, clickY, "Image\Tower\Wave21.bmp", 35, "WHITE")) {
				AddLog("# " strCase ": 총 2 웨이브")
				AddLog("# " strCase ": 첫번째 웨이브")
				SkillManage(1, evtCase)
				
				TempIndex_B:=1
				Loop {
					if (IsImagePlus(clickX, clickY,  "Image\Tower\Wave22.bmp", 35, "WHITE")) {
						break
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Common\Defeat.bmp", 70, 0)) {
						return false
					}
					
					if (IsImagePlus(clickX, clickY,  "Image\Common\tempError.bmp", 60, 0)) {
						AddLog("# " strCase " : 일시적 접속 오류")
						AfterRestart := 1
						return false
					}
					
					if(TempIndex_B > 900)
					{
						AfterRestart:=1
					}
					
					if (AfterRestart = 1) {
						AddLog("# " strCase ": 재시작이 일어났습니다")
						
						return false
					}
					
					TempIndex_B++
					sleep, 200
				}
				
				AddLog("# " strCase ": 두번째 웨이브")
				SkillManage(2, evtCase)
				return true
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Tower\Wave11.bmp", 60, 0)) {
				AddLog("# " strCase ": 총 1 웨이브")
				SkillManage(1, evtCase)
				return true
			}
		}
		
		; Raid
		if (evtCase = 4) {
			if (IsImagePlus(clickX, clickY, "Image\Raid\RaidWaveCheck1.bmp", 60, 0)) {
				AddLog("# " strCase ": 총 2 웨이브")
				AddLog("# " strCase ": 첫번째 웨이브")
				
				RaidWave := 1
				
				DisableAutoSkills()
				RaidFirstReserveSkillFire()
				EnableAutoSkills()
				
				TempIndex_B:=1
				Loop {
					if (IsImageDisplay("Image\Raid\Defeat.bmp", 60, 0)) {
						RaidWave := 0
						return true
					}
					
					if (IsImageDisplay("Image\Raid\Ok.bmp", 60, 0)) {
						RaidWave := 0
						return true
					}
					
					if (IsImageDisplay("Image\Raid\RaidWaveCheck21.bmp", 29, "WHITE")) {
						break
					}
					
					if (IsImageDisplay("Image\Raid\RaidWaveCheck22.bmp", 29, "WHITE")) {
						break
					}
					
					if (IsImageDisplay("Image\Common\tempError.bmp", 60, 0)) {
						AddLog("# 레이드: 일시적 접속 오류")
						
						AfterRestart := 1
						RaidWave     := 0
						
						return false
					}
					
					if(TempIndex_B > 18000)
					{
						AfterRestart:=1
					}
					
					if (AfterRestart = 1) {
						AddLog("# 레이드: 재시작이 일어났습니다")
						
						RaidWave := 0
						
						return false
					}
					
					RaidFirstRepeatSkillFire()
					TempIndex_B++
					sleep, 100
				}
				
				RaidWave := 2
				AddLog("# " strCase " : 두번째 웨이브")
				DisableAutoSkills()
				RaidSecondReserveSkillFire()
				EnableAutoSkills()
				
				TempIndex_B:=1
				Loop {
					if (IsImageDisplay("Image\Raid\Defeat.bmp", 60, 0)) {
						RaidWave := 0
						return true
					}
					
					if (IsImageDisplay("Image\Raid\Ok.bmp", 60, 0)) {
						RaidWave := 0
						return true
					}
					
					if (IsImageDisplay("Image\Common\tempError.bmp", 60, 0)) {
						AddLog("# 레이드: 일시적 접속 오류")
						
						AfterRestart := 1
						RaidWave     := 0
						
						return false
					}
					
					if(TempIndex_B > 18000)
					{
						AfterRestart:=1
					}
					
					if (AfterRestart = 1) {
						AddLog("# 레이드: 재시작이 일어났습니다")
						
						RaidWave := 0
						
						return false
					}
					
					RaidSecondRepeatSkillFire()
					TempIndex_B++
					sleep, 100
				}
				
				RaidWave := 0
			}
		}
		
		if (AfterRestart = 1) {
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			
			return false
		}
		
		sleep, %TIME_REFRESH%
		Delay++
		
		if (Delay * TIME_REFRESH > TIME_BATTLE) {
			log := "# 전투 제한 시간 초과 (30분)"
			AddLog(log)
			
			return false
		}
	}
}

ClearEvents(RefreshTime, LimitTime)
{
	if (gDelay = 0)
	{
		checkHero := 1
		
		log := "# 이벤트 처리"
		AddLog(log)
	}
	
	checkHeroProceed := 0
	checkEquipProceed := 0
	Delay = 0

	Loop
	{
		if (IsImagePlus(clickX, clickY, "Image\Adventure\Start.bmp", 60, 0))
		{
			X := clickX
			Y := clickY

			if (gDelay = 0)
			{
				GuiControlGet, IsHeroChange, W_Setting:
				if (IsHeroChange)
				{
					if (IsGetNewHero or IsHero30LevelUp)
					{
						if (HeroLevelChecker())
						{
							New_FullLevelManage()
							
							GuiControlGet, MainAdventureLocation, W_Setting:
							GuiControlGet, SubAdventureLocation,  W_Setting:
							
							if(SubAdventureLocation!="최근 모험" and MainAdventureLocation!=SubAdventureLocation)
							{
								log := "# 영웅 획득 수 : " NumGetNewHero
								AddLog(log)
							
								if (adventureMap)
								{	
									if (NumGetNewHero > 3)
									{
										NumGetNewHero := 0
										adventureMap := !adventureMap
										
										log := "# 모험 지역 변경"
										AddLog(log)
										
										IsImagePlus(clickX, clickY, "Image\Common\Back.bmp", 80, 0, 7, 0, 42, 40)
										ClickToWaitImage(clickX, clickY, "Image\Adventure\LatestAdventure.bmp")
										SetAdventureMap(adventureMap)
									} else
									{
										log := "  @ 이곳에서 영웅을 더 모읍니다."
										AddLog(log)
									}
								} else if (!adventureMap)
								{
									if (NumGetNewHero > 2)
									{
										NumGetNewHero := 0
										adventureMap := !adventureMap
										
										log := "# 모험 지역 변경"
										AddLog(log)
										
										IsImagePlus(clickX, clickY, "Image\Common\Back.bmp", 80, 0, 7, 0, 42, 40)
										ClickToWaitImage(clickX, clickY, "Image\Adventure\LatestAdventure.bmp")
										SetAdventureMap(adventureMap)
									} else
									{
										log := "  @ 이곳에서 영웅을 더 모읍니다."
										AddLog(log)
									}
								}
							}
						}
					}
				}
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Adventure\Start.bmp", 60, 0))
			{
				hotTime:=IsHotTime()

				if (gDelay = 0 or (keepMoving and !hotTime))
				{
					if(hotTime)
					{
						log := "# 핫타임 모험 더 돌기"
						AddLog(log)
						
						bTime := 0
						keepMoving := 1
					}
					else
					{
						if ((bTime > TimeWaitSecond) || keepMoving)
						{
							GuiControlGet, NBTower, W_Main:
							GuiControlGet, NBArena, W_Main:
							GuiControlGet, NBRaid,  W_Main:
							keepMoving := 0
							
							if (NBTower || NBArena || NBRaid)
							{
								if (NBTower)
									Name := "황금의 방으"
								else if (NBArena)
									Name := "결투장으"
								else
									Name := "레이드"
								
								log := "# 열쇠 생성: " bTime "초 대기 끝, " Name "로 이동"
								AddLog(log)
								
								onMove := 1
								
								return false
							}
						}
					}
					
					sleep, %TIME_REFRESH%
					
					log := "# 모험 입장"
					AddLog(log)
					
					Click(X, Y)
					
					Loop
					{
						if (IsImagePlus(clickX, clickY, "Image\Adventure\Store.bmp", 60, 0))
						{
							if (AdventureKeyHandler())
								return true
							else
								return false
						}
						
						if (IsImagePlus(clickX, clickY, "Image\Hero\Hero.bmp", 60, 0))
							AdventureHeroHandler()
						
						if (IsImagePlus(clickX, clickY, "Image\Equipment\EquipProceed.bmp", 60, 0))
							AdventureEquipHandler()
						
						if (IsImagePlus(clickX, clickY, "Image\Common\ARTPause.bmp", 60, 0))
							return true
						
						if (AfterRestart = 1)
						{
							log := "# 재시작이 일어났습니다"
							AddLog(log)
							return false
						}
						
						if (Mod(A_Index, 15) = 0)
						{
							if (IsImagePlus(clickX, clickY, "Image\Adventure\Start.bmp", 60, 0))
							{
								log := "# 모험 입장 재클릭"
								AddLog(log)
								
								Click(X, Y)
							}
						}
						
						if (A_Index > 80)
						{
							AfterRestart := 1
							return false
						}
						
						sleep, %TIME_REFRESH%
					}
				}
				else
				{
					if (IsImagePlus(clickX, clickY, "Image\Adventure\StartKey1.bmp", 60, 0))
					{
						startX := clickX
						startY := clickY

						if (IsImagePlus(clickX, clickY, "Image\Adventure\Key1.bmp", 60, 0, 365, 0, 445, 30))
						{
							Click(startX, startY)
							SleepLog(TIME_WAITPOPUP)
							
							Loop
							{
								if (IsImagePlus(clickX, clickY, "Image\Hero\HeroProceed.bmp", 60, 0))
								{
									log := "# 경고 : 영웅 최대치 진행"
									AddLog(log)
									
									PushNote("[Nebula] 영웅","최대치 진행")
									checkHeroProceed := 1
									AbleRubyBuy := 0
									Click(clickX, clickY)
								}
								
								if (IsImagePlus(clickX, clickY, "Image\Equipment\EquipProceed.bmp", 60, 0))
									AdventureEquipHandler()
								
								if (IsImagePlus(clickX, clickY, "Image\Common\ARTPause.bmp", 60, 0))
								{
									if (!checkHeroProceed)
										AbleRubyBuy := 1
									
									return true
								}
								
								if (AfterRestart = 1)
								{
									log := "# 재시작이 일어났습니다"
									AddLog(log)
									
									return false
								}
								
								if (Mod(A_Index, 15) = 0)
								{
									if (IsImagePlus(clickX, clickY, "Image\Adventure\StartKey1.bmp", 60, 0))
									{
										log := "# 모험 입장 재클릭"
										AddLog(log)
										
										Click(startX, startY)
									}
								}
								
								if (A_Index > 80)
								{
									AfterRestart := 1
									return false
								}
								
								sleep, %TIME_REFRESH%
							}
						}
						else
						{
							return false
						}
					}
					else if (IsImagePlus(clickX, clickY, "Image\Adventure\StartKey2.bmp", 60, 0))
					{
						startX := clickX
						startY := clickY
						if (IsImagePlus(clickX, clickY, "Image\Adventure\Key2.bmp", 60, 0, 365, 0, 445, 30))
						{
							Click(startX, startY)
							SleepLog(TIME_WAITPOPUP)
							Loop
							{								
								if (IsImagePlus(clickX, clickY, "Image\Hero\HeroProceed.bmp", 60, 0))
								{
									log := "# 경고 : 영웅 최대치 진행"
									AddLog(log)
									PushNote("[Nebula] 영웅","최대치 진행")
									
									checkHeroProceed := 1
									AbleRubyBuy := 0
									Click(clickX, clickY)
								}
								
								if (IsImagePlus(clickX, clickY, "Image\Equipment\EquipProceed.bmp", 60, 0))
									AdventureEquipHandler()
								
								if (IsImagePlus(clickX, clickY, "Image\Common\ARTPause.bmp", 60, 0))
								{
									if (!checkHeroProceed)
										AbleRubyBuy := 1
									
									return true
								}
								
								if (AfterRestart = 1)
								{
									log := "# 재시작이 일어났습니다"
									AddLog(log)
									
									return false
								}
								
								if (Mod(A_Index, 15) = 0)
								{
									if (IsImagePlus(clickX, clickY, "Image\Adventure\StartKey2.bmp", 60, 0))
									{
										log := "# 모험 입장 재클릭"
										AddLog(log)
										
										Click(startX, startY)
									}
								}
								
								if (A_Index > 80)
								{
									AfterRestart := 1
									return false
								}
								
								sleep, %TIME_REFRESH%
							}
						}
						else
						{
							return false
						}
					}
					else
					{
						return false
					}
				}
			}
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Tower\Start.bmp", 60, 0))
		{
			X := clickX
			Y := clickY
			SetTeam(3)
			
			if (IsImagePlus(clickX, clickY, "Image\Tower\Key1.bmp", 60, 0, 233, 3, 254, 24))
			{
				Click(X, Y)
				SleepLog(TIME_WAITPOPUP)
				
				return true
			}
			else
			{
				log := "# 무한의 탑 열쇠 부족"
				AddLog(log)
				
				return false
			}
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Arena\Ready.bmp", 60, 0))
		{
			X := clickX
			Y := clickY
			SleepLog(1500)
			
			if (IsImagePlus(clickX, clickY, "Image\Arena\Key1.bmp", 60, 0, 255, 5, 278, 34))
			{
				Click(X, Y)
				SleepLog(TIME_WAITPOPUP)
				
				return true
			}
			else
			{
				log := "# 아레나 열쇠 부족"
				AddLog(log)
				
				return false
			}
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Raid\RaidStart.bmp", 60, 0))
		{
			X := clickX
			Y := clickY
			
			if (IsImagePlus(clickX, clickY, "Image\Raid\StartKey1.bmp", 60, 0))
			{
				if (IsImagePlus(clickX, clickY, "Image\Raid\Key0.bmp", 60, 0, 220, 0, 280, 35))
				{
					if (!RaidKeyHandler(1))
					return false
				}
				
				if (!IsImagePlus(clickX, clickY, "Image\Raid\Key0.bmp", 60, 0, 220, 0, 280, 30))
				{
					Click(X, Y)
					SleepLog(TIME_WAITPOPUP)
					
					Loop
					{
						if (IsImagePlus(clickX, clickY, "Image\Common\ARTPause.bmp", 60, 0))
						{
							return true
						}
						else if (IsImagePlus(clickX, clickY, "Image\Raid\FullPeople.bmp", 60, 0) || IsImagePlus(clickX, clickY, "Image\Raid\EndedRaid.bmp", 60, 0))
						{
							return false
						}
						
						if (A_Index > 100)
						{
							log := "# 대기 시간 초과"
							AddLog(log)
							
							AfterRestart := 1
							return false
						}
						
						sleep, %TIME_REFRESH%
					}
				}
			}
			else if (IsImagePlus(clickX, clickY, "Image\Raid\StartKey2.bmp", 60, 0))
			{
				if (IsImagePlus(clickX, clickY, "Image\Raid\Key0.bmp", 60, 0, 220, 0, 280, 30) || IsImagePlus(clickX, clickY, "Image\Raid\Key1.bmp", 60, 0, 220, 0, 280, 30))
				{
					if (!RaidKeyHandler(2))
						return false
				}
				
				if (!IsImagePlus(clickX, clickY, "Image\Raid\Key0.bmp", 60, 0, 220, 0, 280, 30) && !IsImagePlus(clickX, clickY, "Image\Raid\Key1.bmp", 60, 0, 220, 0, 280, 30))
				{
					Click(X, Y)
					
					Loop
					{
						if (IsImagePlus(clickX, clickY, "Image\Common\ARTPause.bmp", 60, 0))
						{
							return true
						}
						else if (IsImagePlus(clickX, clickY, "Image\Raid\FullPeople.bmp", 60, 0) || IsImagePlus(clickX, clickY, "Image\Raid\EndedRaid.bmp", 60, 0))
						{
							return false
						}
						
						if (A_Index > 100)
						{
							log := "# 대기 시간 초과"
							AddLog(log)
							
							AfterRestart := 1
							return false
						}
						
						sleep, %TIME_REFRESH%
					}
				}
			}
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Events\FullHeros.bmp", 60, 0))
		{
			log := "# 영웅 수 최대: 판매"
			AddLog(log)
			
			if (IsImagePlus(clickX, clickY, "Image\Hero\Hero.bmp", 60, 0))
			{
				Click(clickX, clickY)
				SleepLog(TIME_WAITPOPUP)
				AutoStrengthenHero()
				HeroAutoSelling()
			}
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
			{
				log := "# 업적 달성"
				AddLog(log)
				AbleHonorBuy := 1
				AbleRubyBuy := 1
				clickX := clickX + 35
				clickY := clickY + 15
				ClickToWaitImage(clickX, clickY, "Image\Achievement\Out.bmp")
				GetAchievement()
			}
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
			{
				log := "# 가이드 퀘스트 완료"
				AddLog(log)
				
				clickX := clickX + 40
				clickY := clickY + 60
				Click(clickX, clickY)
			}
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Events\FullLevel.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, clickY, "Image\Events\FullLevel.bmp", 60, 0))
			{
				log := "# 영웅 레벨 30 달성"
				AddLog(log)
				
				IsHero30LevelUp:=1
				AbleRubyBuy := 1
				clickX := clickX + 40
				clickY := clickY + 55
				Click(clickX, clickY)
			}
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Events\PlayerLevelUp.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, clickY, "Image\Events\PlayerLevelUp.bmp", 60, 0))
			{
				log := "# 플레이어 레벨 업"
				AddLog(log)
				
				clickX := clickX + 40
				clickY := clickY + 55
				Click(clickX, clickY)
			}
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Events\Raid.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, clickY, "Image\Events\Raid.bmp", 60, 0))
			{
				log := "# 레이드 발생"
				AddLog(log)
				
				Click(clickX, clickY)
				IsRaid := 1
				SleepLog(TIME_CLICK)
				
				Loop
				{
					if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
					{
						SleepLog(TIME_WAITPOPUP)
						
						if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
						{
							log := "# 업적 달성"
							AddLog(log)
							
							AbleHonorBuy := 1
							AbleRubyBuy := 1
							clickX := clickX + 35
							clickY := clickY + 15
							ClickToWaitImage(clickX, clickY, "Image\Achievement\Out.bmp")
							GetAchievement()
						}
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
					{
						SleepLog(TIME_WAITPOPUP)
						
						if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
						{
							log := "# 가이드 퀘스트 완료"
							AddLog(log)
							
							clickX := clickX + 40
							clickY := clickY + 60
							Click(clickX, clickY)
						}
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Events\FullLevel.bmp", 60, 0))
					{
						SleepLog(TIME_WAITPOPUP)
						
						if (IsImagePlus(clickX, clickY, "Image\Events\FullLevel.bmp", 60, 0))
						{
							log := "# 영웅 레벨 30 달성"
							AddLog(log)
							
							IsHero30LevelUp:=1
							AbleRubyBuy := 1
							clickX := clickX + 40
							clickY := clickY + 55
							Click(clickX, clickY)
						}
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Events\PlayerLevelUp.bmp", 60, 0))
					{
						SleepLog(TIME_WAITPOPUP)
						
						if (IsImagePlus(clickX, clickY, "Image\Events\PlayerLevelUp.bmp", 60, 0))
						{
							log := "# 플레이어 레벨 업"
							AddLog(log)
							
							clickX := clickX + 40
							clickY := clickY + 55
							Click(clickX, clickY)
						}
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Adventure\Enter.bmp", 60, 0))
					{
						Click(clickX, clickY)
						PushNote("[Nebula] 레이드" ,"각성용 등장!")
						break
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Raid\Out.bmp", 60, 0))
						break
					
					sleep, %TIME_REFRESH%
				}
			}
		}
		
		if (IsRaid && IsImagePlus(clickX, clickY, "Image\Raid\Out.bmp", 60, 0))
		{
			log := "# 레이드 나가기"
			AddLog(log)
			
			IsRaid := 0
			Click(clickX, clickY)
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Adventure\LatestAdventure.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, clickY, "Image\Adventure\LatestAdventure.bmp", 60, 0))
				SetAdventureMap(adventureMap)
		}
		
		if (IsImagePlus(clickX, click, "Image\Events\Touch.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, click, "Image\Events\Touch.bmp", 60, 0))
			{
				log := "# 아레나 새 시즌"
				AddLog(log)
				
				Click(clickX, clickY)
			}
		}
		
		if (AfterRestart = 1)
		{
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			
			return false
		}
		
		sleep, %RefreshTime%
		Delay++
		
		if (RefreshTime * Delay > LimitTime)
		{
			log := "# 이벤트 비정상적 종료"
			AddLog(log)
			
			if (RestartSevenKnights())
			{
				AfterRestart := 1
				log := "# 재시작이 일어났습니다"
				
				AddLog(log)
				return false
			}
		}
	}
}

AdventureKeyHandler()
{
	log := "# 열쇠 관리"
	AddLog(log)
	IsImagePlus(clickX, clickY, "Image\Adventure\StoreNo.bmp", 60, 0)
	Click(clickX, clickY)

	if (gDelay != 0)
		return false

	GuiControlGet, IsBuyKeyRubyAlways,  W_BuyKeySetup:
	GuiControlGet, IsBuyKeyRubyHotTime, W_BuyKeySetup:
	GuiControlGet, IsBuyKeyHonor,       W_BuyKeySetup:

	if (IsBuyKeyRubyHotTime)
	{
		BuyHotTIme := IsHotTime()
		if (BuyHotTime)
		{
			AddLog("# 핫타임!")
		}
	}

	IsBuyKeys := (AbleHonorBuy && IsBuyKeyHonor) || (AbleRubyBuy && (IsBuyKeyRubyAlways || BuyHotTime))

	if (IsBuyKeys)
	{
		AddLog("# 열쇠 구입을 위해 우편 보상 확인")
		GoMailBox()
		GetMail(1)
		
		if (!WaitImagePlus(clickX, clickY, "Image\Adventure\Enter.bmp", 60, 0))
			return false
		
		ClickToWaitImage(clickX, clickY, "Image\Adventure\LatestAdventure.bmp")
		SetAdventureMap(adventureMap)
		
		if (!WaitImagePlus(clickX, clickY, "Image\Key\Enter.bmp", 60, 0))
			return false
		
		Click(clickX, clickY)
		BuyKeyManage()
	}
	else
	{
		GuiControlGet,	IsGetKeyInMailbox,			W_BuyKeySetup:
		GuiControlGet,	IsGetKeyInMailboxHotTime,	W_BuyKeySetup:
		
		if(AbleGetKey=1 and (IsGetKeyInMailbox or (IsHotTime() and IsGetKeyInMailboxHotTime)))
		{
			AddLog("# 열쇠 받기위해 우편 보상 확인")
			GoMailBox()
			GetMail(0)
			
			if (!WaitImagePlus(clickX, clickY, "Image\Adventure\Enter.bmp", 60, 0))
				return false
			
			ClickToWaitImage(clickX, clickY, "Image\Adventure\LatestAdventure.bmp")
			SetAdventureMap(adventureMap)
		}
	}

	gDelay++

	Loop
	{
		if (IsImagePlus(clickX, clickY, "Image\Adventure\Start.bmp", 60, 0))
			break
		
		if (A_Index > 2000)
			return false
		
		sleep, %TIME_REFRESH%
	}

	SleepLog(2000)
	Click(clickX, clickY)

	Loop
	{
		if (IsImagePlus(clickX, clickY, "Image\Adventure\Store.bmp", 60, 0))
		{
			IsImagePlus(clickX, clickY, "Image\Adventure\StoreNo.bmp", 60, 0)
			Click(clickX, clickY)
			SleepLog(TIME_CLICK)
			log := "# 열쇠 대기 중"
			AddLog(log)
			
			return false
		}

		if (IsImagePlus(clickX, clickY, "Image\Common\ARTPause.bmp", 60, 0))
		{
			if (!checkHeroProceed)
				AbleRubyBuy := 1
			
			return true
		}

		if (IsImagePlus(clickX, clickY, "Image\Hero\HeroProceed.bmp", 60, 0))
		{
			log := "# 경고 : 영웅 최대치 진행"
			AddLog(log)
			PushNote("[Nebula] 영웅","최대치 진행")
			checkHeroProceed = 1
			Click(clickX, clickY)
		}

		if (IsImagePlus(clickX, clickY, "Image\Equipment\EquipProceed.bmp", 60, 0))
			AdventureEquipHandler()

		if (AfterRestart = 1)
		{
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			
			return false
		}

		if (A_Index > 50)
		{
			log := "# 대기 시간 초과"
			AddLog(log)
			AfterRestart := 1
		}

		sleep, %TIME_REFRESH%
	}
}

RaidKeyHandler(key)
{
	log := "# 열쇠 부족"
	AddLog(log)
	IsBuyKeys := AbleHonorBuy
	
	if (IsBuyKeys)
	{
		WaitImagePlus(clickX, clickY, "Image\Key\RaidKeyEnter.bmp", 60, 0)
		Click(clickX, clickY)
		BuyKeyManage()
	}
	
	if ((key = 1 && IsImagePlus(clickX, clickY, "Image\Raid\Key0.bmp", 60, 0, 220, 0, 280, 30)) || (key = 2 && (IsImagePlus(clickX, clickY, "Image\Raid\Key0.bmp", 60, 0, 220, 0, 280, 30)) || IsImagePlus(clickX, clickY, "Image\Raid\Key1.bmp", 60, 0, 220, 0, 280, 30)))
	{
		log := "# 열쇠 대기 중"
		AddLog(log)
		
		Loop
		{
			if (key = 1 && IsImagePlus(clickX, clickY, "Image\Raid\Key1.bmp", 60, 0, 220, 0, 280, 30))
				return true

			if (key = 2 && IsImagePlus(clickX, clickY, "Image\Raid\Key2.bmp", 60, 0, 220, 0, 280, 30))
				return true

			if (A_Index * TIME_REFRESH > 1300000)
			{
				log := "# 대기 시간 초과"
				AddLog(log)
				AfterRestart := 1
				return false
			}
			
			sleep, %TIME_REFRESH%
		}
	}
	else
	{
		return true
	}
}

AdventureHeroHandler()
{
	if (IsImagePlus(clickX, clickY, "Image\Hero\Hero.bmp", 60, 0))
	{
		if (checkHero)
		{
			Click(clickX, clickY)
			AutoStrengthenHero()
			HeroAutoSelling()
			checkHero := 0
			
			if (IsImagePlus(clickX, clickY, "Image\Adventure\Start.bmp", 60, 0))
				Click(clickX, clickY)
		}
		else
		{
			if (IsImagePlus(clickX, clickY, "Image\Hero\HeroProceed.bmp", 60, 0))
			{
				log := "# 경고 : 영웅 최대치 진행"
				AddLog(log)
				
				PushNote("[Nebula] 영웅","최대치 진행")
				
				checkHeroProceed := 1
				AbleRubyBuy      := 0
				Click(clickX, clickY)
			}
		}
	}
}

AdventureEquipHandler()
{
	if (IsImagePlus(clickX, clickY, "Image\Equipment\EquipProceed.bmp", 60, 0))
	{
		if (checkEquip)
		{
			if (IsImagePlus(clickX, clickY, "Image\Equipment\Equip.bmp", 60, 0))
			{
				Click(clickX, clickY)
				
				if (!EquipAutoSelling())
					checkEquip := 0
				
				if (IsImagePlus(clickX, clickY, "Image\Adventure\Start.bmp", 60, 0))
					Click(clickX, clickY)
			}
		}
		else
		{
			if (IsImagePlus(clickX, clickY, "Image\Equipment\EquipProceed.bmp", 60, 0))
			{
				log := "# 경고 : 장비 최대치 진행"
				AddLog(log)
				PushNote("[Nebula] 장비","최대치 진행")
				
				checkEquipProceed := 1
				Click(clickX, clickY)
			}
		}
	}
}

BuyKey1()
{
	if (AbleHonorBuy)
	{
		Loop
		{
			if (IsImagePlus(clickX, clickY, "Image\Key\1.bmp", 60, 0))
			{
				sleep, %TIME_REFRESH%
				break
			}
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				return false
			}
			
			if (A_Index > 5)
				break
			
			Drag(297, 239, 392, 239)
			SleepLog(TIME_DRAG)
		}
		
		Loop, 6
		{
			if (WaitImagePlus(clickX, clickY, "Image\Key\1.bmp", 60, 0))
			{
				keyX := clickX
				keyY := clickY
				Click(keyX, keyY)
			}
			else
				return false
			
			check := 0
			
			Loop
			{
				if (IsImagePlus(clickX, clickY, "Image\Key\Buy.bmp", 60, 0))
				{
					Click(clickX, clickY)
					
					Loop
					{
						if (IsImagePlus(clickX, clickY, "Image\Key\Clear.bmp", 60, 0, 265, 265, 375, 300))
						{
							log := "# 열쇠 1개 구입(명예)"
							AddLog(log)
							
							ClickToWaitImage(clickX, clickY, "Image\Key\StoreOut.bmp")
							check := 1
							
							break
						}
						
						if (A_Index > 100)
						{
							log := "# 대기 시간 초과"
							AddLog(log)
							
							AfterRestart := 1
						}
						
						if (AfterRestart = 1)
						{
							log := "# 재시작이 일어났습니다"
							AddLog(log)
							
							return false
						}
						
						sleep, %TIME_REFRESH%
					}
					
					if (check := 1)
						break
				}
				
				if (IsImagePlus(clickX, clickY, "Image\Key\FailClear.bmp", 60, 0, 265, 265, 375, 300))
				{
					log := "# 열쇠 1개 구입 실패"
					AddLog(log)
					
					AbleHonorBuy := 0
					ClickToWaitImage(clickX, clickY, "Image\Key\StoreOut.bmp")
					
					return false
				}
				
				if (A_Index = 100)
					Click(keyX, keyY)
				
				if (A_Index > 200)
				{
					log := "# 대기 시간 초과"
					AddLog(log)
					
					AfterRestart := 1
				}
				
				if (AfterRestart = 1)
				{
					log := "# 재시작이 일어났습니다"
					AddLog(log)
					
					return false
				}
				
				sleep, %TIME_REFRESH%
			}
			
			sleep, %TIME_REFRESH%
		}
		
		if (!WaitImagePlus(clickX, clickY, "Image\Key\StoreOut.bmp", 60, 0))
			return false
		else
			return true
	}
	else
	{
		if (!WaitImagePlus(clickX, clickY, "Image\Key\StoreOut.bmp", 60, 0))
			return false
		else
			return false
	}
}

BuyKey10()
{
	if (AbleHonorBuy)
	{
		Loop
		{
			if (IsImagePlus(clickX, clickY, "Image\Key\10.bmp", 60, 0))
			{
				keyX := clickX
				keyY := clickY
				Click(keyX, keyY)
				SleepLog(TIME_WAITPOPUP)
				break
			}
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				return false
			}
			
			if (A_Index > 5)
				break
			
			Drag(297, 239, 592, 239)
			SleepLog(TIME_DRAG)
		}
		
		Loop
		{
			if (IsImagePlus(clickX, clickY, "Image\Key\Buy.bmp", 60, 0))
			{
				Click(clickX, clickY)
				
				Loop
				{
					if (IsImagePlus(clickX, clickY, "Image\Key\Clear.bmp", 60, 0, 265, 265, 375, 300))
					{
						log := "# 열쇠 10개 구입(명예)"
						AddLog(log)
						
						ClickToWaitImage(clickX, clickY, "Image\Key\StoreOut.bmp")
						
						return true
					}
					
					if (A_Index > 100)
					{
						log := "# 대기 시간 초과"
						AddLog(log)
						
						AfterRestart := 1
					}
					
					if (AfterRestart = 1)
					{
						log := "# 재시작이 일어났습니다"
						AddLog(log)
						
						return false
					}
					
					sleep, %TIME_REFRESH%
				}
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Key\FailClear.bmp", 60, 0, 265, 265, 375, 300))
			{
				log := "# 열쇠 10개 구입 실패"
				AddLog(log)
				
				ClickToWaitImage(clickX, clickY, "Image\Key\StoreOut.bmp")
				
				return false
			}
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				return false
			}
			
			if (A_Index = 100)
				Click(keyX, keyY)
			
			if (A_Index > 200)
			{
				log := "# 대기 시간 초과"
				AddLog(log)
				
				AfterRestart := 1
			}
			
			sleep, %TIME_REFRESH%
		}
	}
}

BuyKey100()
{
	if (AbleRubyBuy)
	{
		Loop
		{
			if (IsImagePlus(clickX, clickY, "Image\Key\100.bmp", 70, 0))
			{
				sleep, %TIME_REFRESH%
				break
			}
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				return false
			}
			
			if (A_Index > 20)
				break
			
			Drag(592, 239, 47, 239)
			SleepLog(TIME_DRAG)
		}
		
		if (WaitImagePlus(clickX, clickY, "Image\Key\100.bmp", 70, 0))
		{
			keyX := clickX
			keyY := clickY
			Click(keyX, keyY)
		}
		else
			return false
		
		Loop
		{
			if (IsImagePlus(clickX, clickY, "Image\Key\EnoughRuby.bmp", 60, 0, 117, 124, 627, 334))
			{
				if (IsImagePlus(clickX, clickY, "Image\Key\Buy.bmp", 60, 0, 117, 124, 627, 334))
				{
					Click(clickX, clickY)
					
					Loop
					{
						if (IsImagePlus(clickX, clickY, "Image\Key\Clear.bmp", 60, 0, 265, 265, 375, 300))
						{
							log := "# 열쇠 100개 구입(루비)"
							AddLog(log)
							PushNote("[Nebula] 열쇠","루비로 구입")
							
							ClickToWaitImage(clickX, clickY, "Image\Key\StoreOut.bmp")
							return
						}
						
						if (A_Index > 100)
						{
							log := "# 대기 시간 초과"
							AddLog(log)
							
							AfterRestart := 1
						}
						
						if (AfterRestart = 1)
						{
							log := "# 재시작이 일어났습니다"
							AddLog(log)
							
							return false
						}
						
						sleep, %TIME_REFRESH%
					}
				}
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Key\NotEnoughRuby.bmp", 90, 0))
			{
				if (IsImagePlus(clickX, clickY, "Image\Key\Cancel.bmp", 60, 0))
				{
					AbleRubyBuy := 0
					log := "# 열쇠 100개 구입 실패"
					AddLog(log)
					
					ClickToWaitImage(clickX, clickY, "Image\Key\StoreOut.bmp")
					return
				}
			}
			
			if (A_Index = 100)
				Click(keyX, keyY)
			
			if (A_Index > 200)
			{
				log := "# 대기 시간 초과"
				AddLog(log)
				
				AfterRestart := 1
			}
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				return false
			}
			
			sleep, %TIME_REFRESH%
		}
	}
}

BuyKeyManage()
{
	GuiControlGet,	IsBuyKeyRubyAlways,			W_BuyKeySetup:
	GuiControlGet,	IsBuyKeyRubyHotTime,		W_BuyKeySetup:
	GuiControlGet,	IsBuyKeyHonor,				W_BuyKeySetup:
	GuiControlGet,	IsBuyKeyHonorHotTime,		W_BuyKeySetup:
	
	log := "# 열쇠 구입 시작"
	AddLog(log)
	
	sleep, 1000

	Loop
	{
	/*
		if (IsImagePlus(clickX, clickY, "Image\Key\X.bmp", 60, 0))
		{
			ClickToWaitImage(clickX, clickY, "Image\Key\Close.bmp")
			Click(clickX, clickY)
			SleepLog(TIME_CLICK)
		}
	*/
		if (IsImagePlus(clickX, clickY, "Image\Key\StoreOut.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, clickY, "Image\Key\StoreOut.bmp", 60, 0))
				break
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Key\PopupSpecial.bmp", 60, 0)) {
			Click(clickX, clickY)
			SleepLog(TIME_CLICK)
			AddLog("# 상점 - 스페셜 팝업")
		}

		if (AfterRestart = 1)
		{
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			
			return false
		}
		
		if (A_Index > 50)
		{
			log := "# 대기 시간 초과"
			AddLog(log)
			
			AfterRestart := 1
		}
		
		sleep, %TIME_REFRESH%
	}
	
	IsNowHotTime := IsHotTime()
	
	if (WaitImagePlus(clickX, clickY, "Image\Key\StoreOut.bmp", 60, 0))
	{
		if (IsBuyKeyHonor or (IsNowHotTime and IsBuyKeyHonorHotTime) or IsBuyKeyRubyAlways or (IsNowHotTime and IsBuyKeyRubyHotTime))
		{
			IsKeyBuy := false
			
			if(IsBuyKeyHonor or (IsNowHotTime and IsBuyKeyHonorHotTime))
			{
				if (BuyKey10() = true)
				{
					IsKeyBuy := true
					AddLog("#열쇠: 명예로 100개 구매")
				}
				else
				{
					if (BuyKey1() = true)
					{
						IsKeyBuy := true
						AddLog("#열쇠: 명예로 1개 구매")
					}
				}
			}
			
			if (!IsKeyBuy and (IsBuyKeyRubyAlways or (IsNowHotTime and IsBuyKeyRubyHotTime)))
			{
				if (BuyKey100() = true)
				{
					AddLog("#열쇠: 루비로 100개 구매")
				}
			}
			
			if (!WaitImagePlus(clickX, clickY, "Image\Key\StoreOut.bmp", 60, 0))
			{
				return false
			}
		}
		else
		{
		}
		
		log := "# 열쇠 구입 종료"
		AddLog(log)
		
		Click(clickX, clickY)
		
		return true
	}
	else
		return false
	
	log := "# 열쇠 구입 실패"
	AddLog(log)
	
	return false
}

IsPushTime()
{
	UTCNow := A_NowUTC
	UTCNow += 9, Hours
	
	FormatTime, Hour, %UTCNow%, HH
	FormatTime, WDay, %UTCNow%, WDay
	
	if (Hour = 10 && (A_Min > 0 || A_Min < 55))
		return 1
	else if (Hour = 14 && (A_Min > 0 || A_Min < 55))
		return 2
	else if (Hour = 19 && (A_Min > 30 || A_Min < 55))
		return 3
	else
		return 0
}

IsHotTime()
{
	UTCNow := A_NowUTC
	UTCNow += 9, Hours
	FormatTime, Hour, %UTCNow%, HH
	FormatTime, WDay, %UTCNow%, WDay
	
	;log := "# " WDay "요일 " Hour "시"
	;AddLog(log)
	
	if (WDay > 1 && WDay < 7)
	{
		if (Hour > 19 && Hour < 22)
			return true
		else
			return false
	}
	else
	{
		if (Hour > 19 && Hour < 22)
			return true
		else if (Hour > 13 && Hour < 16)
			return false
		else
			return false
	}
}

GetGuildCompensation()
{
	AddLog("# 길드 출석체크 진행")
	
	OnRunning := 1
	GuiControl, W_Main:, Progress, 100
	GuiControl, W_Main:, SimpleLog, <출석체크>
	
	if (IsImagePlus(clickX, clickY, "Image\Guild\EnterGuild.bmp", 60, 0, 200, 310, 300, 360)) {
		AddLog("# 길드 입장")
		Click(clickX, clickY)
		
		if (WaitImagePlus(clickX, clickY, "Image\Guild\GuildBack.bmp", 60, 0, 0, 0, 150, 40)) {
			if (IsImagePlus(clickX, clickY, "Image\Guild\Compensation.bmp", 60, 0)) {
				AddLog("# 길드 출석 보상 받기")
				
				Click(clickX, clickY)
				
				Sleep, 1000
				
				if (IsImagePlus(clickX, clickY, "Image\Guild\Confirm.bmp", 60, 0)) {
					Click(clickX, clickY)
				} else if  (IsImagePlus(clickX, clickY, "Image\Guild\Fail.bmp", 60, 0)) {
					Click(clickX, clickY)
				}
				
				Sleep, 1000
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Guild\Attendance.bmp", 60, 0)) {
				AddLog("# 길드 출석하기")
				Click(clickX, clickY)
				Sleep, 1000
			}
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Guild\GuildBack.bmp", 60, 0, 0, 0, 150, 40)) {
			AddLog("# 길드 출석 완료, 메인 이동")
			Click(clickX, clickY)
		}
	}
	
	return true
}

GetMail(type)
{
AddLog("GetMail()")
	GuiControlGet,	IsBuyKeyHonor,				W_BuyKeySetup:
	GuiControlGet,	IsBuyKeyHonorHotTime,		W_BuyKeySetup:
	
	GuiControlGet,	IsBuyKeyRubyAlways,			W_BuyKeySetup:
	GuiControlGet,	IsBuyKeyRubyHotTime,		W_BuyKeySetup:
	
	GuiControlGet,	IsGetKeyInMailbox,			W_BuyKeySetup:
	GuiControlGet,	IsGetKeyInMailboxHotTime,	W_BuyKeySetup:

	BuyHotTIme := 0
	
	IsNowHotTime := IsHotTime()

	if (IsImagePlus(clickX, clickY, "Image\Mail\Enter.bmp", 60, 0))
	{
		Click(clickX, clickY)
	}
	
	if(type=1 and (IsBuyKeyHonor or (IsNowHotTime and IsBuyKeyHonorHotTime)))
	{
		sleep, 1000
		
		if (IsImagePlus(clickX, clickY, "Image\Mail\GetAll.bmp", 60, 0))
		{
			Click(clickX, clickY)
			
			count:=0
			loop
			{
				if (IsImagePlus(clickX, clickY, "Image\Mail\Confirm.bmp", 60, 0))
				{
					Click(clickX, clickY)
					AddLog("명예받기 성공")
					break
				}
				else if (IsImagePlus(clickX, clickY, "Image\Mail\HonorMax.bmp", 60, 0))
				{
					Click(clickX, clickY)
					AddLog("명예받기 최대")
					break
				}
				else if (IsImagePlus(clickX, clickY, "Image\Mail\HonorMaxDay.bmp", 60, 0))
				{
					Click(clickX, clickY)
					AddLog("명예받기 1일한도")
					break
				}
				else if(count > 1500)
				{
					break
				}
				
				count++
				sleep, 200
			}
			
			sleep, 500
		}
		else
			AddLog("받을 명예없음")
	}

	if(type=0)
	{
		if(AbleGetKey=1 and (IsGetKeyInMailbox or (IsNowHotTime and IsGetKeyInMailboxHotTime)))
		{
			if (IsImagePlus(clickX, clickY, "Image\Mail\Key.bmp", 60, 0))
			{
				key_clickX:=clickX
				key_clickY:=clickY
				
				loopCount:=0
				loop
				{
					if (IsImagePlus(clickX, clickY, "Image\Mail\OnKey.bmp", 60, 0))
					{
						if (WaitImagePlus(clickX, clickY, "Image\Mail\GetAll.bmp", 60, 0))
						{
							Click(clickX, clickY)
							
							if (WaitImagePlus(clickX, clickY, "Image\Mail\Confirm.bmp", 60, 0))
							{
								Click(clickX, clickY)
							}
							
							AddLog("열쇠받기 성공")
						}
						
						break
					}
					else
					{
						Click(key_clickX, key_clickY)
					}
					
					if(loopCount > 1500)
						break
				
					loopCount++
					sleep, 200
				}
			}
			else
				AddLog("받을 열쇠없음")
		}
		
		AbleGetKey:=0
	}

	if(type=1 and (IsBuyKeyRubyAlways or (IsNowHotTime and IsBuyKeyRubyHotTime)))
	{
		if (IsImagePlus(clickX, clickY, "Image\Mail\Ruby.bmp", 60, 0))
		{
			ruby_clickX:=clickX
			ruby_clickY:=clickY
			
			loopCount:=0
			loop
			{
				if (IsImagePlus(clickX, clickY, "Image\Mail\OnRuby.bmp", 60, 0))
				{
					if (WaitImagePlus(clickX, clickY, "Image\Mail\GetAll.bmp", 60, 0))
					{
						Click(clickX, clickY)
						
						if (WaitImagePlus(clickX, clickY, "Image\Mail\Confirm.bmp", 60, 0))
						{
							Click(clickX, clickY)
						}
						
						AddLog("루비받기 성공")
					}
				
					break
				}
				else
				{
					Click(ruby_clickX, ruby_clickY)
				}
				
				if(loopCount > 1500)
					break
				
				loopCount++
				sleep, 200
			}
		}
		else
		{
			AddLog("받을 루비없음")
		}
	}
	
	loop
	{
		if (!IsImagePlus(clickX, clickY, "Image\Adventure\Enter.bmp", 60, 0))
		{
			if(IsImagePlus(clickX, clickY, "Image\Mail\Out.bmp", 60, 0))
			{
				Click(clickX, clickY)
				AddLog("우편함 나가기")
			}
		}
		else
		{
			AddLog("우편함 나가기 성공")
			break
		}
		
		sleep, 200
	}
}

GetAchievement()
{
	if (WaitImagePlus(clickX, clickY, "Image\Achievement\Out.bmp", 60, 0))
	{
		X := clickX
		Y := clickY
		
		if (IsImagePlus(clickX, clickY, "Image\Achievement\Mission.bmp", 60, 0))
		{
			log := "# 미션 달성"
			AddLog(log)
			
			GuiControlGet, NumTower, W_Status:
			NumMission++
			GuiControl, W_Status:, NumMission, %NumMission%
			Click(X, Y)
			SleepLog(TIME_WAITPOPUP)
		}
		else if (IsImagePlus(clickX, clickY, "Image\Achievement\Tour.bmp", 60, 0))
		{
			log := "# 원정대 달성"
			AddLog(log)
			
			if (IsImagePlus(clickX, clickY, "Image\Achievement\X.bmp", 60, 0))
			{
				Click(clickX, clickY)
				SleepLog(TIME_WAITPOPUP)
			}
		}
		else
		{
			Loop, 4
			{
				tX := 250 + (A_Index - 1) * 110
				tY := 65
				Click(tX, tY)
				SleepLog(TIME_WAITPOPUP)
				IsClear := 0
				Loop
				{
					if (IsImagePlus(clickX, clickY, "Image\Achievement\GetAll.bmp", 60, 0))
					{
						Click(clickX, clickY)
						Loop
						{
							if (IsImagePlus(clickX, clickY, "Image\Achievement\Clear.bmp", 60, "BLACK"))
							{
								ClickToWaitImage(clickX, clickY, "Image\Achievement\Out.bmp")
								AbleHonorBuy := 1
								AbleRubyBuy := 1
								GuiControlGet, NumMission, W_Status:
								NumMission++
								GuiControl, W_Status:, NumMission, %NumMission%
								IsClear := 1
								
								break
							}
							
							if (IsImagePlus(clickX, clickY, "Image\Achievement\Fail.bmp", 60, "BLACK"))
							{
								Click(clickX, clickY)
								
								log := "# 업적 완료 실패"
								AddLog(log)
								
								if (!WaitImagePlus(clickX, clickY, "Image\Key\AchieveEnter.bmp", 60, 0))
									return false
								
								Click(clickX, clickY)
								
								if (!WaitImagePlus(clickX, clickY, "Image\Key\StoreOut.bmp", 60, 0))
									return false
								
								BuyKey10()
								BuyKey10()
								
								if (!WaitImagePlus(clickX, clickY, "Image\Key\StoreOut.bmp", 60, 0))
									return false
								
								Click(clickX, clickY)
								
								if (!WaitImagePlus(clickX, clickY, "Image\Achievement\Out.bmp", 60, 0))
									return false
								
								break
							}
							
							if (A_Index > 15)
								break
							
							if (AfterRestart = 1)
							{
								log := "# 재시작이 일어났습니다"
								AddLog(log)
								
								return false
							}
							
							sleep, %TIME_REFRESH%
						}
					}
					
					if (IsClear)
						break
					
					if (A_Index > 15)
						break
					
					if (AfterRestart = 1)
					{
						log := "# 재시작이 일어났습니다"
						AddLog(log)
						
						return false
					}
					
					sleep, %TIME_REFRESH%
				}
				
				if (!IsClear)
				{
					log := "  @ 받을 보상이 없습니다."
					AddLog(log)
				}
				
				if (A_Index = 4)
				{
					if (!WaitImagePlus(clickX, clickY, "Image\Achievement\Out.bmp", 60, 0))
						return false
					
					Click(clickX, clickY)
					
					log := "# 보상 획득 완료"
					AddLog(log)
					
					break
				}
			}
		}
	}
	else
		return false
}

SetMainToBegin()
{
	GuiControlGet, NBTower,           W_Main:
	GuiControlGet, NBArena,           W_Main:
	GuiControlGet, NBRaid,            W_Main:
	GuiControlGet, NBAdventure,       W_Main:
	GuiControlGet, NBGuildAttendance, W_Main:
	
	if (!IsImagePlus(clickX, clickY, "Image\Common\BattleEnter.bmp", 60, 0))
	{
		log := "# 메인 화면이 아님"
		AddLog(log)
		return false
	}
	
	if (NBTower || NBArena)
	{
		if (!WaitImagePlus(clickX, clickY, "Image\Common\BattleEnter.bmp", 60, 0))
			return false
		
		if(!IsHotTime())
		{
			Click(clickX, clickY)

			if (!WaitImagePlus(clickX, clickY, "Image\Common\BattleOut.bmp", 60, 0))
				return false
		}
		
		log := "# 시작 위치 초기화 완료"
		AddLog(log)
		
		OnStart := 0
		
		return true
	}
	else if (NBRaid || NBAdventure)
	{
		if (!WaitImagePlus(clickX, clickY, "Image\Adventure\Enter.bmp", 60, 0))
			return false
		
		if (NBRaid)
			SetPlayerSkill(4)
		
		Click(clickX, clickY)
		
		if (!WaitImagePlus(clickX, clickY, "Image\Adventure\LatestAdventure.bmp", 60, 0))
			return false
		
		log := "# 시작 위치 초기화 완료"
		AddLog(log)
		
		OnStart := 0
		
		return true
	}
	else if (NBGuildAttendance)
	{
		
		log := "# 시작 위치 초기화 완료"
		AddLog(log)
		
		OnStart := 0
		
		return true
	}
	else
	{
		log := "# 동작할 것이 없습니다!"
		AddLog(log)
		
		OnStart := 0
		
		return false
	}
}

RaidReward()
{
	if (!WaitImagePlus(clickX, clickY, "Image\Raid\Reward.bmp", 60, 0))
		return false
	
	Click(clickX, clickY)
	SleepLog(TIME_WAITPOPUP)
	
	Loop, 20
	{
		if (IsImagePlus(clickX, clickY, "Image\Raid\Ok.bmp", 60, 0))
		{
			Click(clickX, clickY)
			
			log := "# 레이드: 보상받기"
			AddLog(log)
			
			GuiControlGet, NumReward, W_Status:
			NumReward++
			GuiControl, W_Status:, NumReward, %NumReward%
			
			return true
		}
		
		sleep, %TIME_REFRESH%
	}
	
	Click(10, 10)
	
	log := "# 레이드: 보상 받기 실패"
	AddLog(log)
	
	return true
}

SetAdventureMainToBattleMain()
{
	log := "# AdventureMain to BattleMain"
	AddLog(log)
	
	if (WaitImagePlus(clickX, clickY, "Image\Adventure\Out.bmp", 60, 0))
		Click(clickX, clickY)
	else
		return false
	
	if (WaitImagePlus(clickX, clickY, "Image\Common\BattleEnter.bmp", 60, 0))
		Click(clickX, clickY)
	else
		return false
	
	if (WaitImagePlus(clickX, clickY, "Image\Common\BattleOut.bmp", 60, 0))
	{
		SetTimer, BetweenTimer, Off
		
		log := "# 이동 성공!"
		AddLog(log)
		
		return true
	}
}

SetTowerToBattleMain()
{
	log := "# Tower to BattleMain"
	AddLog(log)
	
	Loop
	{
		if (IsImagePlus(clickX, clickY, "Image\Tower\Out.bmp", 60, 0))
		{
			Click(clickX, clickY)
			SleepLog(TIME_CLICK)
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Tower\TowerOut.bmp", 60, 0))
		{
			Click(clickX, clickY)
			SleepLog(TIME_CLICK)
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Common\BattleEnter.bmp", 60, 0))
		{
			Click(clickX, clickY)
			SleepLog(TIME_CLICK)
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Common\BattleOut.bmp", 60, 0))
			break
		
		if (A_Index > 1000)
		{
			log := "# 대기 시간 초과"
			AddLog(log)
			
			AfterRestart := 1
		}
		
		if (AfterRestart = 1)
		{
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			return false
		}
		
		sleep, %TIME_REFRESH%
	}
}

SetArenaToBattleMain()
{
	log := "# Tower to BattleMain"
	AddLog(log)
	
	Loop
	{
		if (IsImagePlus(clickX, clickY, "Image\Arena\Out.bmp", 60, 0))
		{
			Click(clickX, clickY)
			SleepLog(TIME_CLICK)
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Common\BattleOut.bmp", 60, 0))
			break
		
		if (IsImagePlus(clickX, clickY, "Image\Common\BattleEnter.bmp", 60, 0))
		{
			Click(clickX, clickY)
			SleepLog(TIME_CLICK)
		}
		
		if (A_Index > 1000)
		{
			log := "# 대기 시간 초과"
			AddLog(log)
			
			AfterRestart := 1
		}
		
		if (AfterRestart = 1)
		{
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			
			return false
		}
		
		sleep, %TIME_REFRESH%
	}
}

GoMailBox()
{
	if (!WaitImagePlus(clickX, clickY, "Image\Common\Back.bmp", 80, 0, 7, 1, 42, 39))
		return false
	
	ClickToWaitImage(clickX, clickY, "Image\Adventure\LatestAdventure.bmp")
	
	if (!WaitImagePlus(clickX, clickY, "Image\Common\Back.bmp", 80, 0, 7, 1, 42, 39))
		return false
	
	ClickToWaitImage(clickX, clickY, "Image\Adventure\Enter.bmp")
	
	if (!WaitImagePlus(clickX, clickY, "Image\Mail\Enter.bmp", 60, 0))
		return false
	
	ClickToWaitImage(clickX, clickY, "Image\Mail\Out.bmp")
}

SetBattleMainToAdventureMain()
{
	GuiControlGet, NBRaid, W_Main:
	
	Loop
	{
		if (IsImagePlus(clickX, clickY, "Image\Arena\Out.bmp", 60, 0))
		{
			Click(clickX, clickY)
			SleepLog(TIME_CLICK)
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Common\BattleOut.bmp", 60, 0))
		{
			Click(clickX, clickY)
			
			if (!WaitImagePlus(clickX, clickY, "Image\Adventure\Enter.bmp", 60, 0))
				return false
			
			if (NBRaid)
				SetPlayerSkill(4)
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Adventure\Enter.bmp", 60, 0))
		{
			Click(clickX, clickY)
			
			if (!WaitImagePlus(clickX, clickY, "Image\Adventure\LatestAdventure.bmp", 60, 0))
				return false
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Adventure\LatestAdventure.bmp", 60, 0))
			return true
		
		if (A_Index > 1000)
		{
			log := "# 대기 시간 초과"
			AddLog(log)
			
			AfterRestart := 1
		}
		
		if (AfterRestart = 1)
		{
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			
			return false
		}
		
		sleep, %TIME_REFRESH%
	}
}

SetAdventureMap(Mode)
{
	GuiControlGet, MainAdventureLocation, W_Setting:
	GuiControlGet, SubAdventureLocation,  W_Setting:
	GuiControlGet, IslandDifficulty,      W_Setting:
	
	MainMap    := MainAdventureLocation
	SubMap     := SubAdventureLocation
	Difficulty := IslandDifficulty
	
	AddLog("난이도" Difficulty)
	
	MapInfo := {sX : 7, sY : 40, eX : 170, eY : 150}
	
	if (MainMap = "최근 모험")
		AdvMain1 := 30
	else
		StringSplit, AdvMain, MainMap, -
	
	if (SubMap = "최근 모험")
		AdvSub1 := 30
	else
		StringSplit, AdvSub, SubMap, -
	
	log := "# 모험 지역 이동 "
	AddLog(log)
	
	setRoad  := 1
	setStart := 0
	
	if (Mode = 1)
	{
		Main1 := AdvMain1
		Main2 := AdvMain2
	}
	else if (Mode = 0)
	{
		Main1 := AdvSub1
		Main2 := AdvSub2
	}
	else
	{
		MsgBox, %Mode%
	}
	
	log := "# 주 모험 지역으로 이동 "
	AddLog(log)
	
	if (!WaitImagePlus(clickX, clickY, "Image\Adventure\LatestAdventure.bmp", 60, 0))
		return false
		
	if (Main1 = 30) {
		log := "# 최근 모험 지역 이동 완료"
		AddLog(log)
		
		ClickToWaitImage(clickX, clickY, "Image\Adventure\Start.bmp")
		
		SetPlayerSkill(1)
		SetTeam(1)
		
		return true
	}
	else if(Main1 > 7 && Main1 < 12)	; 달빛의 섬
	{
		AddLog("달빛의 섬")
		if (IsImagePlus(clickX, clickY, "Image\Adventure\Island.bmp", 60, 0) || IsImagePlus(clickX, clickY, "Image\Adventure\Island2.bmp", 60, 0)) {
			ClickToWaitImage(clickX, clickY, "Image\Adventure\Continent.bmp")
		}
		
		Loop
		{
			if (Difficulty = "쉬움") {
				if (IsImagePlus(clickX, clickY, "Image\Adventure\DifficultyNormal.bmp", 60, 0))
				{
					ClickToWaitImage(clickX, clickY, "Image\Adventure\DifficultyEasySelect.bmp")
					Click(clickX, clickY)
					break
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\DifficultyEasy.bmp", 60, 0))
				{
					break
				}
			}
			else
			{
				if (IsImagePlus(clickX, clickY, "Image\Adventure\DifficultyEasy.bmp", 60, 0))
				{
					ClickToWaitImage(clickX, clickY, "Image\Adventure\DifficultyNormalSelect.bmp")
					Click(clickX, clickY)
					break
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\DifficultyNormal.bmp", 60, 0))
					break
			}
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				return false
			}
			sleep, %TIME_REFRESH%
		}
		
		Loop
		{
			nowMap := 0
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				return false
			}
			
			Loop
			{
				if (nowMap != 0)
					break
				
				if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Island\Map1.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 1
					
					if (Main1 = 8)
					{
						if (Main2 = 1)
						{
							clickX := 92
							clickY := 129
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							break
						}
					}
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Island\Map2.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 2
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Island\Map3.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 3
					
					if (Main1 = 8)
					{
						if (Main2 = 13)
						{
							clickX := 287
							clickY := 199
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							break
						}
						else if (Main2 = 14)
						{
							clickX := 312
							clickY := 119
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							break
						}
						else if (Main2 = 15)
						{
							clickX := 157
							clickY := 154
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							break
						}
					}
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Island\Map4.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 4
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Island\Map5.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 5
					
					if (Main1 = 9)
					{
						if (Main2 = 1)
						{
							clickX := 427
							clickY := 129
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							break
						}
						else if (Main2 = 2)
						{
							clickX := 227
							clickY := 164
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							break
						}
					}
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Island\Map6.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 6
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Island\Map7.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 7
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Island\Map8.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 8
					
					if (Main1 = 10)
					{
						if (Main2 = 1)
						{
							clickX := 522
							clickY := 119
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							break
						}
					}
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Island\Map9.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 9
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Island\Map10.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 10
					
					if (Main1 = 11)
					{
						if (Main2 = 1)
						{
							clickX := 50
							clickY := 190
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							break
						}
					}
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Island\Map11.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 11
					
					if (Main1 = 11)
					{
						if (Main2 = 6)
						{
							clickX := 540
							clickY := 230
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							break
						}
					}
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Island\Map12.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 12
				}
				
				if (AfterRestart = 1)
				{
					log := "# 재시작이 일어났습니다"
					AddLog(log)
					
					return false
				}
				
				log := "  @ 현재 맵 인식 : " nowMap
				AddLog(log)
				
				sleep, %TIME_REFRESH%
			}
			
			if (setStart = 1)
				break
			
			if (setRoad)
			{
				setRoad := 0
				
				if (Main1 = 8 && Main2 < 6)
					tarMap := 1
				else if (Main1 = 8 && Main2 < 11)
					tarMap := 2
				else if (Main1 = 8 && Main2 < 16)
					tarMap := 3
				else if (Main1 = 8 && Main2 < 21)
					tarMap := 4
				else if (Main1 = 9 && Main2 < 6)
					tarMap := 5
				else if (Main1 = 9 && Main2 < 11)
					tarMap := 6
				else if (Main1 = 9 && Main2 < 16)
					tarMap := 7
				else if (Main1 = 10 && Main2 < 6)
					tarMap := 8
				else if (Main1 = 10 && Main2 < 11)
					tarMap := 9
				else if (Main1 = 11 && Main2 < 6)
					tarMap := 10
				else if (Main1 = 11 && Main2 < 11)
					tarMap := 11
				
				log := "# 영지 변경 " nowMap " to " tarMap
				AddLog(log)
				
				Gap := nowMap - tarMap
				
				if (Gap < 0)
					Gap += 11
				
				if (Gap < 6)
					Way := 1
				else
					Way := 2
			}
			
			if (Way = 1)
			{
				log := "  @ 좌로 이동"
				AddLog(log)
				
				Click(12, 184)
				mapNumber := nowMap - 1
				
				if (mapNumber = 0)
					mapNumber := 11
				
				mapName := "Image\Adventure\Map\Island\Map" mapNumber ".bmp"
				
				Loop
				{
					if (IsImagePlus(clickX, clickY, mapName, 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
					{
						log := "  @ 이동 완료"
						AddLog(log)
						
						break
					}
					
					if (AfterRestart = 1)
					{
						log := "# 재시작이 일어났습니다"
						AddLog(log)
						
						return false
					}
					
					sleep, %TIME_REFRESH%
				}
			}
			else
			{
				log := "  @ 우로 이동"
				AddLog(log)
				
				Click(627, 184)
				mapNumber := nowMap + 1
				
				if (mapNumber = 12)
					mapNumber := 1
				
				mapName := "Image\Adventure\Map\Island\Map" mapNumber ".bmp"
				
				Loop
				{
					if (IsImagePlus(clickX, clickY, mapName, 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
					{
						log := "  @ 이동 완료"
						AddLog(log)
						
						break
					}
					
					if (AfterRestart = 1)
					{
						log := "# 재시작이 일어났습니다"
						AddLog(log)
						
						return false
					}
					
					sleep, %TIME_REFRESH%
				}
			}
		}
	}
	else if(Main1 > 11) ; 그림자의 눈
	{
		if(!IsImagePlus(clickX, clickY, "Image\Adventure\Island2.bmp", 60, 0) && !IsImagePlus(clickX, clickY, "Image\Adventure\Shadow.bmp", 60, 0))
		{
			if(WaitImagePlus(clickX, clickY, "Image\Adventure\Island.bmp", 60, 0))
				ClickToWaitImage(clickX, clickY, "Image\Adventure\Shadow.bmp")

			if(WaitImagePlus(clickX, clickY, "Image\Adventure\Shadow.bmp", 60, 0))
				ClickToWaitImage(clickX, clickY, "Image\Adventure\Island2.bmp")
		}
		else if(IsImagePlus(clickX, clickY, "Image\Adventure\Shadow.bmp", 60, 0))
			ClickToWaitImage(clickX, clickY, "Image\Adventure\Island2.bmp")
			
		Loop
		{
			nowMap := 0
			if(AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				return false
			}

			Loop
			{
				if(nowMap != 0)
					break

				if(IsImagePlus(clickX, clickY, "Image\Adventure\Map\Shadow\Map1.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 1

					if(Main1 = 12)
					{
						if(Main2 = 1)
						{
							clickX := 122
							clickY := 120
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							break
						}
					}
				}

				log := "@현재 맵 인식 : " nowMap
				AddLog(log)
				sleep, %TIME_REFRESH%
			}

			if(setStart = 1)
				break
		}
	}

	else				; 아스드 대륙
	{
		AddLog("아스드 대륙")
		
		if(IsImagePlus(clickX, clickY, "Image\Adventure\Island2.bmp", 60, 0))
		{
			ClickToWaitImage(clickX, clickY, "Image\Adventure\Continent.bmp")

			if(WaitImagePlus(clickX, clickY, "Image\Adventure\Continent.bmp", 60, 0))
				ClickToWaitImage(clickX, clickY, "Image\Adventure\Island.bmp")
		}
		
		if(IsImagePlus(clickX, clickY, "Image\Adventure\Continent.bmp", 60, 0))
			ClickToWaitImage(clickX, clickY, "Image\Adventure\Island.bmp")
		
		Loop
		{
			nowMap := 0
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				return false
			}
			
			Loop
			{
				if (nowMap != 0)
					break
				
				if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Continent\Map1.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 1
					
					if (Main1 = 1)
					{
						if (Main2 = 10)
						{
						clickX := 272
							clickY := 339
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
					}
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Continent\Map2.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 2
					
					if (Main1 = 2)
					{
						if (Main2 = 10)
						{
							clickX := 347
							clickY := 314
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
					}
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Continent\Map3.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 3
					
					if (Main1 = 3)
					{
						if (Main2 = 5)
						{
							clickX := 162
							clickY := 334
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
						else if (Main2 = 10)
						{
							clickX := 347
							clickY := 94
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
					}
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Continent\Map4.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 4
					
					if (Main1 = 4)
					{
						if (Main2 = 6)
						{
							clickX := 350
							clickY := 210
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
						else if (Main2 = 10)
						{
							clickX := 522
							clickY := 179
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
					}
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Continent\Map5.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 5
					
					if (Main1 = 5)
					{
						if (Main2 = 5)
						{
							clickX := 275
							clickY := 120
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
						else if (Main2 = 10)
						{
							clickX := 552
							clickY := 159
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
					}
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Continent\Map6.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 6
					
					if (Main1 = 6)
					{
						if (Main2 = 1)
						{
							clickX := 287
							clickY := 329
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
						else if (Main2  = 5)
						{
							clickX := 317
							clickY := 119
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
						else if (Main2 = 6)
						{
							clickX := 247
							clickY := 224
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
						else if (Main2 = 9)
						{
							clickX := 430
							clickY := 142
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
						else if (Main2 = 10)
						{
							clickX := 567
							clickY := 214
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
					}
				}
				else if (IsImagePlus(clickX, clickY, "Image\Adventure\Map\Continent\Map7.bmp", 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
				{
					nowMap := 7
					
					if (Main1 = 7)
					{
						if (Main2 = 1)
						{
							clickX := 542
							clickY := 104
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
						else if (Main2 = 9)
						{
							clickX := 457
							clickY := 249
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
						else if (Main2 = 10)
						{
							clickX := 567
							clickY := 264
							ClickToWaitImage(clickX, clickY, "Image\Adventure\MapEnter.bmp")
							setStart := 1
							
							break
						}
					}
				}
				
				if (AfterRestart = 1)
				{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				return false
				}
				
				log := "  @ 현재 맵 인식 : " nowMap
				AddLog(log)
				
				sleep, %TIME_REFRESH%
			}
			
			if (setStart = 1)
				break
			
			if (setRoad)
			{
				setRoad := 0
				tarMap := Main1
				
				log := "# 영지 변경 " nowMap " to " tarMap
				AddLog(log)
				
				Gap := nowMap - tarMap
				
				if (Gap < 0)
					Gap += 7
				
				if (Gap < 4)
					Way := 1
				else
					Way := 2
			}
			
			if (Way = 1)
			{
				log := "  @ 좌로 이동"
				AddLog(log)
				
				Click(12, 184)
				mapNumber := nowMap - 1
				
				if (mapNumber = 0)
					mapNumber := 7
				
				mapName := "Image\Adventure\Map\Continent\Map" mapNumber ".bmp"
				
				Loop
				{
					if (IsImagePlus(clickX, clickY, mapName, 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
					{
						log := "  @ 이동 완료"
						AddLog(log)
						
						break
					}
					
					if (AfterRestart = 1)
					{
						log := "# 재시작이 일어났습니다"
						AddLog(log)
						
						return false
					}
					
					sleep, %TIME_REFRESH%
				}
			}
			else
			{
				log := "  @ 우로 이동"
				AddLog(log)
				
				Click(627, 184)
				mapNumber := nowMap + 1
				
				if (mapNumber = 8)
					mapNumber := 1
				
				mapName := "Image\Adventure\Map\Continent\Map" mapNumber ".bmp"
				
				Loop
				{
					if (IsImagePlus(clickX, clickY, mapName, 80, 0, MapInfo.sX, MapInfo.sY, MapInfo.eX, MapInfo.eY))
					{
						log := "  @ 이동 완료"
						AddLog(log)
						
						break
					}
					
					if (AfterRestart = 1)
					{
						log := "# 재시작이 일어났습니다"
						AddLog(log)
						
						return false
					}
					
					sleep, %TIME_REFRESH%
				}
			}
		}
	}
	
	if (!WaitImagePlus(clickX, clickY, "Image\Adventure\MapEnter.bmp", 60, 0)) {
		return false
	}
	
	ClickToWaitImage(clickX, clickY, "Image\Adventure\Start.bmp")
	
	log := "# 모험 지역 이동 완료"
	AddLog(log)
	
	if (mode = 1)
	{
		SetPlayerSkill(1)
		SetTeam(1)
	}
	else if (mode = 0)
	{
		SetPlayerSkill(2)
		SetTeam(2)
	}
	else
	{
		MsgBox, %Mode%
	}
	
	return true
}

SendHonor()
{
	GuiControlGet, NBSendHonor, W_Main:
AddLog("명예보내기 시도")
	if (!NBSendHonor) {
		return false
	}
	
	if (!IsImagePlus(clickX, clickY, "Image\Friends\Enter.bmp", 60, 0)) {
		return false
	} else {
		clickX := clickX + 5
		clickY := clickY + 5
		Click(clickX, clickY)
	}
	
	if (!WaitImagePlus(clickX, clickY, "Image\Friends\Friends.bmp", 60, 0)) {
		return false
	} else {
		ClickToWaitImage(clickX, clickY, "Image\Friends\Out.bmp")
	}
	
	; GuiControl, W_Main:, NBSendHonor, 0
	
	log := "# 명예 보내기 시작"
	AddLog(log)
	
	AbleHonorBuy := 1
	
	if (!WaitImagePlus(clickX, clickY, "Image\Friends\Out.bmp", 60, 0))
		return false
	
	if (IsImagePlus(clickX, clickY, "Image\Friends\SendAll.bmp", 60, 0))
	{
		clickX := clickX + 50
		clickY := clickY + 15
		Click(clickX, clickY)
		
		Loop
		{
			if (IsImagePlus(clickX, clickY, "Image\Friends\SendAllYes.bmp", 60, 0))
			{
				log := "# 명예 : 모두 보내기 클릭"
				AddLog(log)
				
				Click(clickX, clickY)
				SleepLog(TIME_CLICK)
			}
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				return false
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Friends\SendAllClear.bmp", 60, 0))
				break
			
			if (IsImagePlus(clickX, clickY, "Image\Friends\Max.bmp", 60, "BLACK"))
			{
				log := "# 명예 최대"
				AddLog(log)
				
				if (IsImagePlus(clickX, clickY, "Image\Friends\MaxYes.bmp", 60, 0))
				{
					Click(clickX, clickY)
					
					if (!WaitImagePlus(clickX, clickY, "Image\Key\FriendsEnter.bmp", 60, 0))
						return false
					
					Click(clickX, clickY)
					
					Loop
					{
						if (IsImagePlus(clickX, clickY, "Image\Key\X.bmp", 60, 0))
						{
							ClickToWaitImage(clickX, clickY, "Image\Key\Close.bmp")
							Click(clickX, clickY)
							SleepLog(TIME_CLICK)
						}
						
						if (IsImagePlus(clickX, clickY, "Image\Key\StoreOut.bmp", 60, 0))
							break
						
						if (AfterRestart = 1)
						{
							log := "# 재시작이 일어났습니다"
							AddLog(log)
							
							return false
						}
						
						sleep, %TIME_REFRESH%
						
						if (TIME_REFRESH * A_Index > 100000)
						{
							if (RestartSevenKnights())
							{
								log := "# 재시작이 일어났습니다"
								AddLog(log)
								
								AfterRestart := 1
								
								return false
							}
						}
					}
					
					BuyKey10()
					
					if (!WaitImagePlus(clickX, clickY, "Image\Key\StoreOut.bmp", 60, 0))
						return false
					
					Click(clickX, clickY)
					
					Loop
					{
						if (IsImagePlus(clickX, clickY, "Image\Friends\Out.bmp", 60, 0))
						{
							SleepLog(TIME_WAITPOPUP)
							
							if (IsImagePlus(clickX, clickY, "Image\Friends\Out.bmp", 60, 0))
								break
						}
						
						if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
						{
							SleepLog(TIME_WAITPOPUP)
							
							if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
							{
								log := "# 업적 달성"
								AddLog(log)
								
								AbleHonorBuy := 1
								AbleRubyBuy := 1
								clickX := clickX + 35
								clickY := clickY + 15
								ClickToWaitImage(clickX, clickY, "Image\Achievement\Out.bmp")
								GetAchievement()
							}
						}
						
						if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
						{
							SleepLog(TIME_WAITPOPUP)
							
							if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
							{
								log := "# 가이드 퀘스트 완료"
								AddLog(log)
								
								clickX := clickX + 40
								clickY := clickY + 60
								Click(clickX, clickY)
							}
						}
					}
					
					break
				}
				
				sleep, %TIME_REFRESH%
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Friends\Limit.bmp", 60, 0))
			{
				log := "# 명예 보내기 일일 최대치"
				AddLog(log)
				
				Click(clickX, clickY)
				
				break
			}
			
			sleep, %TIME_REFRESH%
		}
	}
	
	log := "# 명예 : 모두 보내기 완료"
	AddLog(log)
	
	if (WaitImagePlus(clickX, clickY, "Image\Friends\UnSelectedKakaoFriends.bmp", 60, 0))
	{
		log := "# 명예 : 카톡 친구 보내기"
		AddLog(log)
		
		ClickToWaitImage(clickX, clickY, "Image\Friends\SelectedKakaoFriends.bmp")
		Click(585, 95)
		SleepLog(TIME_CLICK)
		checkNum := 1
		tmpLoop  := 0
		IsFinal  := 0
		cntDrag  := 0
		
		Loop
		{
			sX := 437
			sY := 119 + 50 * (checkNum - 1)
			eX := 497
			eY := 164 + 50 * (checkNum - 1)
			
			checkNum++
			
			if (checkNum > 6)
			{
				if (IsFinal)
					break
				
				if (cntDrag = 1 || cntDrag = 2 || cntDrag = 4)
					Drag(397, 334, 397, 165)
				else if (cntDrag = 3 || cntDrag = 5)
					Drag(397, 334, 397, 166)
				
				cntDrag++
				
				if (cntDrag > 5)
					cntDrag = 1
				
				if (IsImagePlus(clickX, clickY, "Image\Friends\Final.bmp", 100, 0, 621, 339, 628, 365))
				{
					log := "# 명예 보내기 마지막 시도"
					AddLog(log)
					
					IsFinal := 1
					sleep, %TIME_REFRESH%
				}
				
				if (A_Index > 500)
				{
					log := "# 명예 보내기 한계 초과 (500명)"
					AddLog(log)
					
					break
				}
				
				checkNum := 1
				SleepLog(TIME_DRAG)
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Friends\SendEnable.bmp", 80, 0, sX, sY, eX, eY))
			{
				Click(clickX, clickY)
				
				Loop
				{
					if (Mod(A_Index, 25) = 0)
					{
						if (IsImagePlus(clickX, clickY, "Image\Friends\SendEnable.bmp", 60, 0))
						{
							log := "# 명예 보내기 재클릭"
							AddLog(log)
							
							Click(clickX, clickY)
						}
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Friends\InterceptionYes.bmp", 60, 0))
					{
						log := "# 명예 : 차단한 유저 (2차 처리)"
						AddLog(log)
						
						ClickToWaitImage(clickX, clickY, "Image\Friends\Out.bmp")
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Friends\NoManners.bmp", 60, 0))
					{
						if (!WaitImagePlus(clickX, clickY, "Image\Friends\NoMannersNo.bmp", 60, 0))
							return false
						
						Click(clickX, clickY)
						
						Loop
						{
							if (IsImagePlus(clickX, clickY, "Image\Friends\InterceptionYes.bmp", 60, 0))
							{
								log := "# 명예 : 차단한 유저 (2차 처리)"
								AddLog(log)
								
								ClickToWaitImage(clickX, clickY, "Image\Friends\Out.bmp")
							}
							
							if (IsImagePlus(clickX, clickY, "Image\Friends\Out.bmp", 60, 0))
								break
							
							if (A_Index > 70)
								break
							
							sleep, %TIME_REFRESH%
						}
						
						log := "# 명예 : 보내지 않음"
						AddLog(log)
						
						break
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Friends\Limit.bmp", 60, 0))
					{
						log := "# 명예 보내기 일일 최대치"
						AddLog(log)
						
						Click(clickX, clickY)
						
						if (!WaitImagePlus(clickX, clickY, "Image\Friends\Out.bmp", 60, 0))
							return false
						
						Click(clickX, clickY)
						
						Loop
						{
							if (IsImagePlus(clickX, clickY, "Image\Adventure\Enter.bmp", 60, 0))
							{
								SleepLog(TIME_WAITPOPUP)
								
								if (IsImagePlus(clickX, clickY, "Image\Adventure\Enter.bmp", 60, 0))
									break
							}
							
							if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
							{
								SleepLog(TIME_WAITPOPUP)
								
								if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
								{
									log := "# 업적 달성"
									AddLog(log)
									
									AbleHonorBuy := 1
									AbleRubyBuy  := 1
									clickX       := clickX + 35
									clickY       := clickY + 15
									ClickToWaitImage(clickX, clickY, "Image\Achievement\Out.bmp")
									GetAchievement()
								}
							}
							
							if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
							{
								SleepLog(TIME_WAITPOPUP)
								
								if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
								{
									log := "# 가이드 퀘스트 완료"
									AddLog(log)
									
									clickX := clickX + 40
									clickY := clickY + 60
									Click(clickX, clickY)
								}
							}
							
							if (A_Index > 100)
							{
								log := "# 대기 시간 초과"
								AddLog(log)
								
								AfterRestart := 1
							}
							
							if (AfterRestart = 1)
							{
								log := "# 재시작이 일어났습니다"
								AddLog(log)
								
								return false
							}
							
							sleep, %TIME_REFRESH%
						}
						
						return true
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Friends\Manners.bmp", 60, 0))
					{
						if (!WaitImagePlus(clickX, clickY, "Image\Friends\MannersSend.bmp", 60, 0))
							return false
						
						Click(clickX, clickY)
						
						Loop
						{
							if (IsImagePlus(clickX, clickY, "Image\Friends\InterceptionYes.bmp", 60, 0))
							{
								log := "# 명예 : 차단한 유저"
								AddLog(log)
								
								ClickToWaitImage(clickX, clickY, "Image\Friends\Out.bmp")
								tmpLoop := 1
								break
							}
							
							if (IsImagePlus(clickX, clickY, "Image\Friends\SendComplete.bmp", 90, "BLACK", sX, sY, eX, eY))
							{
								log := "# 명예 : 성공"
								AddLog(log)
								
								tmpLoop := 1
								break
							}
							
							if (IsImagePlus(clickX, clickY, "Image\Friends\Max.bmp", 60, "BLACK"))
							{
								log := "# 명예 최대"
								AddLog(log)
								
								if (IsImagePlus(clickX, clickY, "Image\Friends\MaxYes.bmp", 60, 0))
								{
									Click(clickX, clickY)
									SleepLog(TIME_WAITPOPUP)
									IsBreak := 0
									
									Loop
									{
										if (IsImagePlus(clickX, clickY, "Image\Friends\InterceptionYes.bmp", 60, "BLACK", 190, 150, 450, 190))
										{
											log := "# 명예 : 차단한 유저"
											AddLog(log)
											
											ClickToWaitImage(clickX, clickY, "Image\Friends\Out.bmp")
											tmpLoop := 1
											break
										}
										
										if (IsImagePlus(clickX, clickY, "Image\Key\FriendsEnter.bmp", 60, 0))
										{
											Click(clickX, clickY)
											
											if (!WaitImagePlus(clickX, clickY, "Image\Key\StoreOut.bmp", 60, 0))
												return false
											
											BuyKey10()
											
											if (!WaitImagePlus(clickX, clickY, "Image\Key\StoreOut.bmp", 60, 0))
												return false
											
											Click(clickX, clickY)
											
											Loop
											{
												if (IsImagePlus(clickX, clickY, "Image\Friends\Out.bmp", 60, 0))
												{
													SleepLog(TIME_WAITPOPUP)
													
													if (IsImagePlus(clickX, clickY, "Image\Friends\Out.bmp", 60, 0))
														break
												}
												
												if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
												{
													SleepLog(TIME_WAITPOPUP)
													
													if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
													{
														log := "# 업적 달성"
														AddLog(log)
														
														AbleHonorBuy := 1
														AbleRubyBuy  := 1
														clickX       := clickX + 35
														clickY       := clickY + 15
														ClickToWaitImage(clickX, clickY, "Image\Achievement\Out.bmp")
														GetAchievement()
													}
												}
												
												if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
												{
													SleepLog(TIME_WAITPOPUP)
													
													if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
													{
														log := "# 가이드 퀘스트 완료"
														AddLog(log)
														
														clickX := clickX + 40
														clickY := clickY + 60
														Click(clickX, clickY)
													}
												}
												
												if (AfterRestart = 1)
												{
													log := "# 재시작이 일어났습니다"
													AddLog(log)
													
													return false
												}
												
												sleep, %TIME_REFRESH%
											}
											
											break
										}
										
										if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
										{
											SleepLog(TIME_WAITPOPUP)
											
											if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
											{
												log := "# 업적 달성"
												AddLog(log)
												
												AbleHonorBuy := 1
												AbleRubyBuy  := 1
												clickX       := clickX + 35
												clickY       := clickY + 15
												ClickToWaitImage(clickX, clickY, "Image\Achievement\Out.bmp")
												GetAchievement()
											}
											
											break
										}
										
										if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
										{
											SleepLog(TIME_WAITPOPUP)
											
											if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
											{
												log := "# 가이드 퀘스트 완료"
												AddLog(log)
												
												clickX := clickX + 40
												clickY := clickY + 60
												Click(clickX, clickY)
											}
											
											break
										}
										
										if (AfterRestart = 1)
										{
											log := "# 재시작이 일어났습니다"
											AddLog(log)
											
											return false
										}
										
										if (A_Index > 100)
											break
										
										sleep, %TIME_REFRESH%
									}
									
									break
								}
							}
							
							if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
							{
								SleepLog(TIME_WAITPOPUP)
								
								if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
								{
									log := "# 업적 달성"
									AddLog(log)
									
									AbleHonorBuy := 1
									AbleRubyBuy  := 1
									clickX       := clickX + 35
									clickY       := clickY + 15
									ClickToWaitImage(clickX, clickY, "Image\Achievement\Out.bmp")
									GetAchievement()
								}
							}
							
							if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
							{
								SleepLog(TIME_WAITPOPUP)
								
								if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
								{
									log := "# 가이드 퀘스트 완료"
									AddLog(log)
									
									clickX := clickX + 40
									clickY := clickY + 60
									Click(clickX, clickY)
								}
							}
							
							if (AfterRestart = 1)
							{
								log := "# 재시작이 일어났습니다"
								AddLog(log)
								
								return false
							}
							if (A_Index > 20)
								break
							
							sleep, %TIME_REFRESH%
						}
						
						if (tmpLoop = 1)
						{
							tmpLoop := 0
							break
						}
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Friends\Max.bmp", 60, "BLACK"))
					{
						log := "# 명예 최대"
						AddLog(log)
						
						if (IsImagePlus(clickX, clickY, "Image\Friends\MaxYes.bmp", 60, 0))
						{
							Click(clickX, clickY)
							
							if (!WaitImagePlus(clickX, clickY, "Image\Key\FriendsEnter.bmp", 60, 0))
								return false
							
							Click(clickX, clickY)
							
							if (!WaitImagePlus(clickX, clickY, "Image\Key\StoreOut.bmp", 60, 0))
								return false
							
							BuyKey10()
							
							if (!WaitImagePlus(clickX, clickY, "Image\Key\StoreOut.bmp", 60, 0))
								return false
							
							Click(clickX, clickY)
							
							Loop
							{
								if (IsImagePlus(clickX, clickY, "Image\Friends\Out.bmp", 60, 0))
								{
									SleepLog(TIME_WAITPOPUP)
									
									if (IsImagePlus(clickX, clickY, "Image\Friends\Out.bmp", 60, 0))
										break
								}
								
								if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
								{
									SleepLog(TIME_WAITPOPUP)
									
									if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
									{
										log := "# 업적 달성"
										AddLog(log)
										
										AbleHonorBuy := 1
										AbleRubyBuy  := 1
										clickX       := clickX + 35
										clickY       := clickY + 15
										ClickToWaitImage(clickX, clickY, "Image\Achievement\Out.bmp")
										GetAchievement()
									}
								}
								
								if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
								{
									SleepLog(TIME_WAITPOPUP)
									
									if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
									{
										log := "# 가이드 퀘스트 완료"
										AddLog(log)
										
										clickX := clickX + 40
										clickY := clickY + 60
										Click(clickX, clickY)
									}
								}
								
								if (A_Index > 100)
								{
									log := "# 대기 시간 초과"
									AddLog(log)
									
									AfterRestart := 1
								}
								
								if (AfterRestart = 1)
								{
									log := "# 재시작이 일어났습니다"
									AddLog(log)
									
									return false
								}
								
								sleep, %TIME_REFRESH%
							}
							
							break
						}
					}
					
					if (AfterRestart = 1)
					{
						log := "# 재시작이 일어났습니다"
						AddLog(log)
						
						return false
					}
					
					if (A_Index > 500)
					{
						log := "# 명예 보내기 실패"
						AddLog(log)
						
						AfterRestart := 1
					}
					
					sleep, %TIME_REFRESH%
				}
			}
		}
	}
	
	log := "# 명예 보내기 완료"
	AddLog(log)
	
	if (!WaitImagePlus(clickX, clickY, "Image\Friends\Out.bmp", 60, 0))
		return false
	
	Click(clickX, clickY)
	
	Loop
	{
		if (IsImagePlus(clickX, clickY, "Image\Adventure\Enter.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, clickY, "Image\Adventure\Enter.bmp", 60, 0))
				break
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
			{
				log := "# 업적 달성"
				AddLog(log)
				
				AbleHonorBuy := 1
				AbleRubyBuy  := 1
				clickX       := clickX + 35
				clickY       := clickY + 15
				ClickToWaitImage(clickX, clickY, "Image\Achievement\Out.bmp")
				GetAchievement()
			}
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
			{
				log := "# 가이드 퀘스트 완료"
				AddLog(log)
				
				clickX := clickX + 40
				clickY := clickY + 60
				Click(clickX, clickY)
			}
		}
		
		if (A_Index > 100)
		{
			log := "# 대기 시간 초과"
			AddLog(log)
			
			AfterRestart := 1
		}
		
		if (AfterRestart = 1)
		{
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			
			return false
		}
		
		sleep, %TIME_REFRESH%
	}
	
	return true
}

subInfiniteAdventure()
{
	OnRunning	:= 1
	appWidth	:= posX + width
	appHeight	:= posY + height
	
	GuiControl,	W_Main:,	Progress,	100
	GuiControl,	W_Main:,	SimpleLog,	<모험>
	
	GuiControlGet,	IsSelectedSkill,	W_Setting:
	
	if (IsImagePlus(clickX, clickY, "Image\Adventure\LatestAdventure.bmp", 60, 0)) {
		if (!SetAdventureMap(adventureMap)) {
			return false
		}
		
		Loop {
			Loop {
				; Restart - Push
				if (SetRestart = 1) {
					log := "# 푸쉬 보상을 받기 위해 재시작"
					AddLog(log)
					
					SetRestart := 0
					return false
				}
				
				; Restart - Happend
				if (AfterRestart = 1) {
					log := "# 재시작이 일어났습니다"
					AddLog(log)
					
					AfterRestart := 0
					return false
				}
				
				log := "# 무한 모험: " A_Index "회차 시작"
				AddLog(log)
				
				gDelay := 0
				
				Loop {
					if (ClearEvents(TIME_REFRESH, TIME_EVENTS)) {
						break
					} else {
						if (AfterRestart = 1) {
							AfterRestart := 0
							log := "# 재시작이 일어났습니다"
							
							AddLog(log)
							return false
						}
						
						if (onMove) {
							onMove := 0
							IsImagePlus(clickX, clickY, "Image\Common\Back.bmp", 80, 0, 7, 0, 42, 40)
							ClickToWaitImage(clickX, clickY, "Image\Adventure\LatestAdventure.bmp")
							
							return true
						}
					}
					sleep, %TIME_REFRESH%
				}
				
				;--아래는 모험 진입이 된 상태
				; Auto Skill
				if (!IsSelectedSkill) {
					if (IsImagePlus(clickX, clickY, "Image\Common\UnSelectedAutoSkills.bmp", 60, 0)) {
						log := "# 자동 스킬 설정"
						AddLog(log)
						
						ClickToWaitImage(clickX, clickY, "Image\Common\SelectedAutoSkills.bmp")
					}
				} else {
					if (IsImagePlus(clickX, clickY, "Image\Common\SelectedAutoSkills.bmp", 60, 0))
					{
						log := "# 자동 스킬 해제"
						AddLog(log)
						
						ClickToWaitImage(clickX, clickY, "Image\Common\UnSelectedAutoSkills.bmp")
					}
				}
				
				if (adventureMap) {
					advCase := 1
				} else {
					advCase := 2
				}
				
				if (BattleAdventure(advCase)) {
					IsRare := 0
					
					; Result 
					Loop {
						; Result - Coin
						if (IsImagePlus(clickX, clickY, "Image\Adventure\Coin.bmp", 60, 0)) {
							GuiControlGet, NumGetGold, W_Status:
							NumGetGold++
							GuiControl, W_Status:, NumGetGold, %NumGetGold%
							
							log := "# 전투 결과 : 금화 획득"
							AddLog(log)
							
							SleepLog(600)
							Click(clickX, clickY)
							
							break
						}
						
						; Result - Hero
						if (IsImagePlus(clickX, clickY, "Image\Adventure\Hero1.bmp", 60, 0)) {
							IsGetNewHero := 1
							NumGetNewHero++
							GuiControlGet, NumGetHero, W_Status:
							NumGetHero++
							GuiControl, W_Status:, NumGetHero, %NumGetHero%
							
							log := "# 전투 결과 : 영웅 획득"
							AddLog(log)
							
							SleepLog(625)
							Click(clickX, clickY)
							
							break
						}
						
						; Result - Hero
						if (IsImagePlus(clickX, clickY, "Image\Adventure\Hero2.bmp", 60, 0)) {
							IsGetNewHero := 1
							NumGetNewHero++
							GuiControlGet, NumGetHero, W_Status:
							NumGetHero++
							GuiControl, W_Status:, NumGetHero, %NumGetHero%
							
							log := "# 전투 결과 : 영웅 획득"
							AddLog(log)
							
							IsRare := 1
							SleepLog(625)
							Click(clickX, clickY)
							
							break
						}
						
						; Result - Equipment
						if (IsImagePlus(clickX, clickY, "Image\Adventure\Equipment1.bmp", 60, 0)) {
							GuiControlGet, NumGetEquipment, W_Status:
							NumGetEquipment++
							GuiControl, W_Status:, NumGetEquipment, %NumGetEquipment%
							
							log := "# 전투 결과 : 장비 획득"
							AddLog(log)
							
							SleepLog(625)
							Click(clickX, clickY)
							
							break
						}
						
						; Result - Equipment
						if (IsImagePlus(clickX, clickY, "Image\Adventure\Equipment2.bmp", 60, 0)) {
							GuiControlGet, NumGetEquipment, W_Status:
							NumGetEquipment++
							GuiControl, W_Status:, NumGetEquipment, %NumGetEquipment%
							
							log := "# 전투 결과 : 장비 획득"
							AddLog(log)
							
							IsRare := 1
							SleepLog(625)
							Click(clickX, clickY)
							
							break
						}
						
						; Result - Defeat
						if (IsImagePlus(clickX, clickY,  "Image\Common\Defeat.bmp", 60, 0)) {
							log := "# 무한 모험: 패배"
							AddLog(log)
							
							break
						}
						
						; Result - Error
						if (IsImagePlus(clickX, clickY,  "Image\Common\tempError.bmp", 60, 0)) {
							log := "# 일시적 접속 오류"
							AddLog(log)
							
							AfterRestart := 1
							return false
						}
						
						; Result - Not Case
						if (IsImagePlus(clickX, clickY, "Image\Common\Restart.bmp", 60, 0)) {
							log := "# 전투 결과 : 인식 안됨"
							AddLog(log)
							
							;IsGetNewHero := 1
							break
						}
						
						; Result - Timeout
						if (A_Index > 2000) {
							log := "# 대기시간 초과"
							AddLog(log)
							
							AfterRestart := 1
						}
						
						; Result - Restart
						if (AfterRestart = 1) {
							log := "# 재시작이 일어났습니다"
							AddLog(log)
							
							AfterRestart := 0
							return false
						}
						
						sleep, %TIME_REFRESH%
					}
					
					Loop {
						if (IsImagePlus(clickX, clickY,  "Image\Common\Restart.bmp", 60, 0)) {
							log := "# 무한 모험: 승리"
							AddLog(log)
							
							GuiControlGet, IsCapture, W_Setting:
							GuiControlGet, AlarmImage, W_Setting:
							
							if (IsRare)
							{
								if (IsCapture)
								{
									SleepLog(TIME_REFRESH)
									filename := "Capture\" A_DD "_" A_HOUR "_" A_MIN "_" A_SEC "_Rare.png"
									Capture(filename)
									if (AlarmImage)
									PushImage(filename)
								}
							}
							
							SleepLog(TIME_RESTART)
							Click(clickX, clickY)
							
							break
						}
						
						if (IsImagePlus(clickX, clickY,  "Image\Common\Defeat.bmp", 60, 0)) {
							log := "# 무한 모험: 패배"
							AddLog(log)
							
							SleepLog(TIME_RESTART)
							Click(clickX , clickY)
							break
						}
						
						if (IsImagePlus(clickX, clickY,  "Image\Common\tempError.bmp", 60, 0)) {
							log := "# 일시적 접속 오류"
							AddLog(log)
							
							AfterRestart := 1
							return false
						}
						
						if (A_Index > 2000) {
							log := "# 대기시간 초과"
							AddLog(log)
							
							AfterRestart := 1
						}
						
						if (AfterRestart = 1) {
							log := "# 재시작이 일어났습니다"
							AddLog(log)
							
							AfterRestart := 0
							return false
						}
						
						sleep, %TIME_REFRESH%
					}
				} else {
					if (AfterRestart = 1)
					{
						log := "# 재시작이 일어났습니다"
						AddLog(log)
						
						AfterRestart := 0
						return false
					}
					
					IsImagePlus(clickX, clickY, "Image\Common\Defeat.bmp", 60, 0)
					
					log := "# 무한 모험: 패배"
					AddLog(log)
					
					SleepLog(TIME_RESTART)
					Click(clickX , clickY)
				}
				
				log := "# 무한 모험: 다시 하기"
				AddLog(log)
				
				GuiControlGet, NumAdventure, W_Status:
				NumAdventure++
				GuiControl, W_Status:, NumAdventure, %NumAdventure%
			}
		}
	}
	else
	{
		log := "# 잘못된 시작 위치"
		AddLog(log)
		
		log := "# '모험 시작' 화면에서만 시작됩니다."
		AddLog(log)
	}
	
	log := "# 동작 종료"
	AddLog(log)
	GuiControl, W_Main:, Progress, 0
	GuiControl, W_Main:, SimpleLog, <동작 종료>
	
	return false
}

subTower()
{
	OnRunning := 1
	GuiControl, W_Main:, Progress, 100
	GuiControl, W_Main:, SimpleLog, <무한의 탑>
	
	if (IsImagePlus(clickX, clickY, "Image\Common\BattleOut.bmp", 60, 0))
	{
		log := "# 무한의 탑 : 입장"
		AddLog(log)
		
		clickX := 160
		clickY := 160
		ClickToWaitImage(clickX, clickY, "Image\Tower\GoldRoom.bmp")
		
		if (!WaitImagePlus(clickX, clickY, "Image\Tower\GoldRoom.bmp", 60, 0))
			return false
		
		ClickToWaitImage(clickX, clickY, "Image\Tower\Start.bmp")
		
		Loop
		{
			if (SetRestart = 1)
			{
				log := "# 푸쉬 보상을 받기 위해 재시작"
				AddLog(log)
				
				SetRestart := 0
				return false
			}
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				AfterRestart := 0
				return false
			}
			
			log := "# 황금의 방: " A_Index "회차 시작"
			
			AddLog(log)
			
			if (!ClearEvents(TIME_REFRESH, TIME_EVENTS))
			{
				if (AfterRestart = 1)
				{
					log := "# 재시작이 일어났습니다"
					AddLog(log)
					
					AfterRestart := 0
					return false
				} 
				else
				{
					log := "# 무한의 탑: 실행 완료"
					AddLog(log)
					
					SetTowerToBattleMain()
					return true
				}
			}
			
			GuiControlGet, IsSelectedSkill, W_Setting:
					
			if (!IsSelectedSkill)
			{
				if (IsImagePlus(clickX, clickY, "Image\Common\UnSelectedTowerAuto.bmp", 60, 0))
				{
					log := "# 자동 스킬 설정"
					AddLog(log)
					
					ClickToWaitImage(clickX, clickY, "Image\Common\SelectedTowerAuto.bmp")
				}
			}
			else
			{
				if (IsImagePlus(clickX, clickY, "Image\Common\SelectedTowerAuto.bmp", 60, 0))
				{
					log := "# 자동 스킬 해제"
					AddLog(log)
					
					ClickToWaitImage(clickX, clickY, "Image\Common\UnSelectedTowerAuto.bmp")
				}
			}
					
			if (BattleAdventure(3))
			{
				Loop
				{
					if (IsImagePlus(clickX, clickY, "Image\Adventure\Coin.bmp", 60, 0))
					{
						GuiControlGet, NumGetGold, W_Status:
						NumGetGold++
						GuiControl, W_Status:, NumGetGold, %NumGetGold%
						
						log := "# 전투 결과 : 금화 획득"
						AddLog(log)
						
						SleepLog(625)
						Click(clickX, clickY)
						
						break
					}
					
					if (IsImagePlus(clickX, clickY,  "Image\Common\Defeat.bmp", 60, 0))
					{
						log := "# 무한 모험: 패배"
						AddLog(log)
						
						break
					}
					
					if (IsImagePlus(clickX, clickY,  "Image\Common\tempError.bmp", 60, 0))
					{
						log := "# 일시적 접속 오류"
						AddLog(log)
						
						AfterRestart := 1
						return false
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Common\Restart.bmp", 60, 0))
					{
						log := "# 전투 결과 : 인식 안됨"
						AddLog(log)
						
						;IsGetNewHero := 1
						break
					}
					
					if (A_Index > 2000)
					{
						log := "# 대기시간 초과"
						AddLog(log)
						
						AfterRestart := 1
					}
					
					if (AfterRestart = 1)
					{
						log := "# 재시작이 일어났습니다"
						AddLog(log)
						
						AfterRestart := 0
						return false
					}
					
					sleep, %TIME_REFRESH%
				}
				
				Loop
				{
					if (IsImagePlus(clickX, clickY, "Image\Common\Defeat.bmp", 70, 0))
					{
						log := "# 황금의 방: 패배"
						AddLog(log)
						
						SleepLog(TIME_RESTART)
						Click(clickX, clickY)
						
						break
					}
					
					if (IsImagePlus(clickX, clickY,  "Image\Common\tempError.bmp", 60, 0))
					{
						log := "# 일시적 접속 오류"
						AddLog(log)
						
						AfterRestart := 1
						return false
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Common\Restart.bmp", 60, 0))
					{
						log := "# 황금의 방: 승리"
						AddLog(log)
						
						SleepLog(TIME_RESTART)
						Click(clickX, clickY)
						
						break
					}
					
					if (A_Index > 2000)
					{
						log := "# 대기시간 초과"
						AddLog(log)
						
						AfterRestart := 1
					}
					
					if (AfterRestart = 1)
					{
						log := "# 재시작이 일어났습니다"
						AddLog(log)
						
						AfterRestart := 0
						return false
					}
					
					sleep, %TIME_REFRESH%
				}
			}
			else
			{
				if (AfterRestart = 1)
				{
					log := "# 재시작이 일어났습니다"
					AddLog(log)
					
					AfterRestart := 0
					return false
				}
				
				IsImagePlus(clickX, clickY, "Image\Common\Defeat.bmp", 60, 0)
				
				log := "# 황금의 방: 패배"
				AddLog(log)
				
				SleepLog(TIME_RESTART)
				Click(clickX, clickY)
			}
				
			GuiControlGet, NumTower, W_Status:
			NumTower++
			GuiControl, W_Status:, NumTower, %NumTower%
		}
		
		log := "# 황금의 방: 종료"
		AddLog(log)
	}
	else
	{
		log := "# 잘못된 시작 위치"
		AddLog(log)
	}
	
	log := "# 동작 종료"
	AddLog(log)
	GuiControl, W_Main:, Progress, 0
	
	return false
}

subArena()
{
	OnRunning := 1
	GuiControl, W_Main:, Progress, 100
	GuiControl, W_Main:, SimpleLog, <결투장>
	
	if (IsImagePlus(clickX, clickY, "Image\Common\BattleOut.bmp", 60, 0))
	{
		log := "# 결투장: 입장"
		AddLog(log)

		clickX := 477
		clickY := 134
		Click(clickX, clickY)

		loop
		{
			if (IsImagePlus(clickX, clickY, "Image\Arena\Out.bmp", 60, 0))
			{
				break
			}
			else if (IsImagePlus(clickX, clickY, "Image\Arena\SeasonEnd.bmp", 60, 0))
			{
				Click(clickX, clickY)
			}
			else if (IsImagePlus(clickX, clickY, "Image\Arena\SeasonEndAlert.bmp", 60, 0))
			{
				Click(clickX, clickY)
			}
			
			sleep, 200
		}
		
		gDelay := 0
		AbleHonorBuy := 1
		
		Loop
		{
			if (SetRestart = 1)
			{
				log := "# 푸쉬 보상을 받기 위해 재시작"
				AddLog(log)
				
				SetRestart := 0
				return false
			}
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				AfterRestart := 0
				return false
			}
			
			log := "# 결투장: " A_Index "회차 시작"
			AddLog(log)
			
			if (!ClearEvents(TIME_REFRESH, TIME_EVENTS))
			{
				if (AfterRestart = 1)
				{
					log := "# 재시작이 일어났습니다"
					AddLog(log)
					
					AfterRestart := 0
					return false
				}
				else
				{
					log := "# 결투장: 실행 완료"
					AddLog(log)
					
					SetArenaToBattleMain()
					return true
				}
			}
			
			if (WaitImagePlus(clickX, clickY, "Image\Arena\Start.bmp", 60, 0))
			{
				if (gDelay = 0)
				{
					SetPlayerSkill(3)
					gDelay++
				}
				
				Click(clickX, clickY)
				SleepLog(TIME_CLICK)
				
				Loop
				{
					if (IsImagePlus(clickX, clickY, "Image\Arena\MaxHonor.bmp", 60, 0))
					{
						log := "# 결투장: 보유 명예 최대"
						AddLog(log)
						
						IsImagePlus(clickX, clickY, "Image\Arena\MaxHonorYes.bmp", 60, 0)
						Click(clickX, clickY)
						SleepLog(TIME_CLICK)
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Arena\Pause.bmp", 60, 0, 605, 45, 640, 65))
					{
						log := "# 결투장: 시작"
						AddLog(log)
						
						break
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Arena\SeasonEnd2.bmp", 60, 0))
					{
						log := "# 결투장: 시즌 종료"
						AddLog(log)
						
						Click(clickX, clickY)
						SetArenaToBattleMain()
						return true
					}
					
					if (AfterRestart = 1)
					{
						log := "# 재시작이 일어났습니다"
						AddLog(log)
						
						AfterRestart := 0
						return false
					}
					
					sleep, %TIME_REFRESH%
				}
			}
			
			GuiControlGet, IsArenaQuickLoss, W_Setting:
			
			if (IsArenaQuickLoss)
			{
				log := "# 결투장: 빠른 패배"
				AddLog(log)
				
				if (!WaitImagePlus(clickX, clickY, "Image\Arena\Pause.bmp", 60, 0, 605, 45, 640, 65))
					return false
				
				clickX := clickX + 10
				clickY := clickY - 3
				
				ClickToWaitImage(clickX, clickY, "Image\Arena\PauseOut.bmp")
				ClickToWaitImage(clickX, clickY, "Image\Arena\PauseYes.bmp")
				Click(clickX, clickY)
				
				if (AfterRestart = 1)
				{
					log := "# 재시작이 일어났습니다"
					AddLog(log)
					
					AfterRestart := 0
					return false
				}
			}
			else
			{
				log := "# 결투장: 전투 중"
				AddLog(log)
				
				Loop
				{
					if (IsImagePlus(clickX, clickY, "Image\Arena\Restart.bmp", 60, 0))
					{
						SleepLog(TIME_CLICK)
						
						if (IsImagePlus(clickX, clickY, "Image\Arena\Restart.bmp", 60, 0))
						{
							log := "# 결투장: 완료"
							AddLog(log)
							
							Click(clickX, clickY)
							GuiControlGet, NumArena, W_Status:
							NumArena++
							GuiControl, W_Status:, NumArena, %NumArena%
							
							break
						}
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Arena\Promotion.bmp", 60, 0))
					{
						log := "# 결투장: 승급"
						AddLog(log)
						
						Click(clickX, clickY)
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Arena\Promotion2.bmp", 60, 0))
					{
						log := "# 결투장: 등급상승"
						AddLog(log)
						
						Click(clickX, clickY)
					}
					
					if (A_Index > 6000)
					{
						log := "# 대기시간 초과"
						AddLog(log)
						
						AfterRestart := 1
					}
					
					if (AfterRestart = 1)
					{
						log := "# 재시작이 일어났습니다"
						AddLog(log)
						
						AfterRestart := 0
						return false
					}
					
					ClickWithoutLog(230, 230)
					sleep, %TIME_REFRESH%
				}
			}
		}
		
		log := "# 결투장: 종료"
		AddLog(log)
	}
	else
	{
		log := "# 잘못된 시작 위치"
		AddLog(log)
		
		log := "# 동작 종료"
		AddLog(log)
		
		GuiControl, W_Main:, Progress, 0
		return false
	}
}

subRaid()
{
	GuiControlGet, RaidRepeatCount,         W_RaidSetup:
	GuiControlGet, RaidJoinCount,           W_RaidSetup:
	GuiControlGet, RaidPlayerSkill,         W_RaidSetup:
	GuiControlGet, RaidAwakenType,          W_RaidSetup:
	GuiControlGet, RaidIsAttackUnderAnHour, W_RaidSetup:
	
	OnRunning          := 1
	
	GuiControl, W_Main:, Progress,  100
	GuiControl, W_Main:, SimpleLog, <레이드>
	
	if (IsImagePlus(clickX, clickY, "Image\Adventure\LatestAdventure.bmp", 60, 0)) {
		Click(539, 348)
		
		if (!WaitImagePlus(clickX, clickY, "Image\Raid\Out.bmp", 60, 0)) {
			return false
		}
		
		AddLog("# 레이드: 입장")
		
		Loop, %RaidRepeatCount% {
			if (IsImagePlus(clickX, clickY, "Image\Raid\UnSelectedEndRaid.bmp", 60, 0)) {
				Click(clickX, clickY)
			}
			
			if (!WaitImagePlus(clickX, clickY, "Image\Raid\SelectedEndRaid.bmp", 60, 0)) {
				return false
			}
			
			Loop, 3 {
				if (WaitImagePlus(clickX, clickY, "Image\Raid\Refresh.bmp", 60, 0)) {
					Click(clickX, clickY)
					SleepLog(TIME_CLICK)
				} else {
					return false
				}
				
				if (IsImagePlus(clickX, clickY, "Image\Raid\Enter.bmp", 60, 0)) {
					AddLog("Image\Raid\Enter.bmp")
					Click(clickX, clickY)
				} else {
					AddLog("!Image\Raid\Enter.bmp")
					break
				}
				
				if (!RaidReward()) {
					return false
				}
				
				if (!WaitImagePlus(clickX, clickY, "Image\Raid\Out.bmp", 60, 0)) {
					return false
				} else {
					Click(clickX, clickY)
				}
				
				if (!WaitImagePlus(clickX, clickY, "Image\Raid\Refresh.bmp", 60, 0)) {
					return false
				} else {
					Click(clickX, clickY)
					SleepLog(TIME_CLICK)
				}
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Raid\NotJoin.bmp", 60, 0, 137, 49, 172, 74)) {
				BreakLoop := false
				Click(clickX, clickY)
				
				if (!WaitImagePlus(clickX, clickY, "Image\Raid\SelectedNotJoin.bmp", 60, 0)) {
					return false
				}
				
				AddLog("# 레이드: " A_Index "회차 시작")
				AddLog("# 레이드: 미참여 레이드 선택")
				
				IsFinal := 0
				StringLeft, DragonAwakenType, RaidAwakenType, 1
				
				Loop {
					Loop, 4 {
						sX := 15
						sY := (IsFinal ? 164 : 115)  + ((A_Index - 1) * 52)
						eX := 62
						eY := (IsFinal ? 215 : 164) + ((A_Index - 1) * 52)
						
						if ((DragonAwakenType = 1 && IsImagePlus(clickX, clickY, "Image\Raid\Awaken.bmp", 110, 0, sX, sY, eX, eY)) || (DragonAwakenType = 2 && IsImagePlus(clickX, clickY, "Image\Raid\Normal.bmp", 110, 0, sX, sY, eX, eY)) || (DragonAwakenType = 3)) {
							if (!RaidIsAttackUnderAnHour) {
								if (!IsImagePlus(clickX, clickY, "Image\Raid\RaidCheck.bmp", 30, 0, 420, sY, 450, sY + 20)) {
									AddLog("# 레이드: 한 시간 이하 패스")
									continue
								}
							}
							
							Click(585,  sY + 20)
							
							Loop, %RaidJoinCount% {
								if (!WaitImagePlus(clickX, clickY, "Image\Raid\Out.bmp", 60, 0)) {
									return false
								}
								
								if (IsImagePlus(clickX, clickY, "Image\Raid\Reward.bmp", 60, 0)) {
									if (!RaidReward()) {
										return false
									}
									
									BreakLoop := true
									break
								} else if (IsImagePlus(clickX, clickY, "Image\Raid\RaidIn.bmp", 60, 0)) {
									AddLog("# 레이드: 레이드 입장")
									
									Click(clickX, clickY)
									
									if (!WaitImagePlus(clickX, clickY, "Image\Raid\RaidStart.bmp", 60, 0))
										return false
									
									if (ClearEvents(TIME_REFRESH, TIME_EVENTS)) {
										AddLog("# 레이드: " A_Index "번째 참여")
										
										if (BattleAdventure(4)) {
											Loop {
												if (IsImagePlus(clickX, clickY, "Image\Raid\Defeat.bmp", 60, 0)) {
													AddLog("# 레이드: 종료")
													
													SleepLog(TIME_RESTART)
													GuiControlGet, NumRaid, W_Status:
													NumRaid++
													GuiControl, W_Status:, NumRaid, %NumRaid%
													Click(clickX, clickY)
													
													break
												} else if (IsImagePlus(clickX, clickY, "Image\Raid\Ok.bmp", 60, 0)) {
													AddLog("# 레이드: 이미 종료된 레이드")
													
													SleepLog(TIME_RESTART)
													Click(clickX, clickY)
													SetBattleMainToAdventureMain()
													
													if (WaitImagePlus(clickX, clickY, "Image\Adventure\LatestAdventure.bmp", 60, 0)) {
														Click(485, 350)
													}
													
													break
												}
												
												if (A_Index > TIME_WAITIMAGE * 3) {
													log := "# 대기시간 초과"
													AddLog(log)
													
													return false
												}
												
												sleep, %TIME_REFRESH%
											}
										} else {
											if (AfterRestart = 1) {
												log := "# 재시작이 일어났습니다"
												AddLog(log)
												
												AfterRestart := 0
												return false
											}
											
											AddLog("# 레이드: 종료")
											
											IsImagePlus(clickX, clickY, "Image\Raid\Defeat.bmp", 60, 0)
											SleepLog(TIME_RESTART)
											
											if (!WaitImagePlus(clickX, clickY, "Image\Raid\Raid.bmp", 60, 0)) {
												return false
											}
											
											Click(clickX, clickY)
											
											if (!WaitImagePlus(clickX, clickY, "Image\Raid\Out.bmp", 60, 0)) {
												return false
											}
											
											BreakLoop := true
											
											break
										}
									} else {
										if (IsImagePlus(clickX, clickY, "Image\Raid\EndedRaid.bmp", 60, 0)) {
											Click(clickX, clickY)
											
											if (WaitImagePlus(clickX, clickY, "Image\Raid\Out.bmp", 60, 0)) {
												Click(clickX, clickY)
											} else {
												return false
											}
											
											break
										} else if (IsImagePlus(clickX, clickY, "Image\Raid\FullPeople.bmp", 60, 0)) {
											Click(clickX, clickY)
											
											if (WaitImagePlus(clickX, clickY, "Image\Raid\Out.bmp", 60, 0)) {
												Click(clickX, clickY)
											} else {
												return false
											}
											
											break
										}
										
										if (AfterRestart = 1) {
											log := "# 재시작이 일어났습니다"
											AddLog(log)
											
											AfterRestart := 0
											return false
										}
									}
									
									sleep, %TIME_REFRESH%
								}
							}
							
							if (WaitImagePlus(clickX, clickY, "Image\Raid\Out.bmp", 60, 0)) {
								Click(clickX, clickY)
							} else {
								return false
							}
							
							if (WaitImagePlus(clickX, clickY, "Image\Raid\UnSelectedEndRaid.bmp", 60, 0)) {
								Click(clickX, clickY)
							} else {
								return false
							}
							
							log := "# 레이드: 미참여 레이드 목록으로 돌아가기"
							AddLog(log)
							
							BreakLoop := true
							
							break
						}
						
						SleepLog(TIME_CLICK)
						
						if (IsImagePlus(clickX, clickY, "Image\Raid\RaidCheck2.bmp", 120, 0, sX, sY, eX, eY)) {
							IsFinal := 1
							Click(clickX, clickY)
							
							break
						}
					}
					
					if (BreakLoop) {
						BreakLoop := false
						break
					}
					
					if (IsFinal) {
						break
					}
					
					Drag(412, 283, 412, 144)
					
					if (IsImagePlus(clickX, clickY, "Image\Raid\Final.bmp", 80, 0, 628, 320, 632, 328)) {
						AddLog("# 레이드: 입장 마지막 시도")
						
						IsFinal := 1
						sleep, %TIME_REFRESH%
					} else if (!IsImagePlus(clickX, clickY, "Image\Raid\Enter.bmp", 60, 0)) {
						AddLog("# 레이드: 입장 가능한 레이드 없음")
						
						BreakLoop := true
						break
					}
					
					if (IsImagePlus(clickX, clickY, "Image\Adventure\LatestAdventure.bmp", 60, 0)) {
						AddLog("# 레이드: 모험 맵 화면으로 나옴")
						
						Click(485, 350)
					}
					
					SleepLog(TIME_DRAG)
				}
			}
			
			if (BreakLoop) {
				break
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Raid\Refresh.bmp", 60, 0)) {
				Click(clickX, clickY)
				SleepLog(TIME_CLICK)
			}
		}
		
		if (WaitImagePlus(clickX, clickY, "Image\Raid\Out.bmp", 60, 0)) {
			Click(clickX, clickY)
		} else {
			return false 
		}
		
		Loop {
			if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0)) {
				SleepLog(TIME_WAITPOPUP)
				
				if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0)) {
					AddLog("# 레이드: 업적 달성")
					
					AbleHonorBuy := 1
					AbleRubyBuy := 1
					clickX := clickX + 35
					clickY := clickY + 15
					ClickToWaitImage(clickX, clickY, "Image\Achievement\Out.bmp")
					GetAchievement()
				}
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0)) {
				SleepLog(TIME_WAITPOPUP)
				
				if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0)) {
					AddLog("# 레이드: 가이드 퀘스트 완료")
					
					clickX := clickX + 40
					clickY := clickY + 60
					Click(clickX, clickY)
				}
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Adventure\LatestAdventure.bmp", 60, 0)) {
				SleepLog(TIME_WAITPOPUP)
				
				if (IsImagePlus(clickX, clickY, "Image\Adventure\LatestAdventure.bmp", 60, 0)) {
					return true
				}
			}
			
			if (AfterRestart = 1) {
				AddLog("# 레이드: 재시작이 일어났습니다")
				
				AfterRestart := 0
				return false
			}
			
			if (A_Index > 100) {
				AddLog("# 레이드: 대기시간 초과")
				
				AfterRestart := 1
			}
			
			sleep, %TIME_REFRESH%
		}
	} else {
		AddLog("# 레이드: 잘못된 시작 위치")
	}
	
	AddLog("# 레이드: 동작 종료")
	
	GuiControl, W_Main:, Progress, 0
	
	return false
}

AutoStrengthenHero()
{
	GuiControlGet, IsStrengthenHero,   W_StrengthenSetup:
	GuiControlGet, IsStrengthenCore,   W_StrengthenSetup:
	GuiControlGet, SacrificeStar,      W_StrengthenSetup:
	GuiControlGet, StrengthenStar2,    W_StrengthenSetup:
	GuiControlGet, StrengthenStar1,    W_StrengthenSetup:
	GuiControlGet, StrengthenCoreStar, W_StrengthenSetup:
	GuiControlGet, StrengthenCore1th,  W_StrengthenSetup:
	GuiControlGet, StrengthenCore2th,  W_StrengthenSetup:
	GuiControlGet, StrengthenCore3th,  W_StrengthenSetup:
	GuiControlGet, StrengthenCore4th,  W_StrengthenSetup:
	GuiControlGet, StrengthenCore5th,  W_StrengthenSetup:
	GuiControlGet, GradeFirst,         W_StrengthenSetup:
	GuiControlGet, 3CoreSt,            W_StrengthenSetup:
	
	SacrificeLeft1 := 1
	SacrificeLeft2 := 1
	GoldShort      := 0
	CoreMode       := 0
	
	if (!WaitImagePlus(clickX, clickY, "Image\Hero\SettingOut.bmp",  60, 0))
		return false
	
	if (IsStrengthenHero = 1)
	{
		log := "# 영웅 자동 강화"
		AddLog(log)
		PushNote("[Nebula] 영웅 강화", "")
		
		SetHeroStrengthenOrder(1)
		
		if (IsStrengthenCore = 1)
		{
			CoreMode := 1
			
			Loop, 4
			{
				A := A_Index
				
				Loop, 6
				{
					Num%A%Core%A_Index%Target := 0
					Num%A%Core%A_Index%NoPlus5 := 0
				}
			}
			
			SetOrder("Normal")
			
			if (IsImagePlus(clickX, clickY, "Image\Hero\CoreHeros.bmp", 60, 0, 445, 61, 515, 72))
			{
				log := "# 정렬 오류 : 영웅 자동 강화 종료"
				AddLog(log)
				
				return false
			}
			
			ScanCore(Num1Core1Target, Num1Core2Target, Num1Core3Target, Num1Core4Target, Num1Core5Target, Num2Core1Target, Num2Core2Target, Num2Core3Target, Num2Core4Target, Num2Core5Target, Num3Core1Target, Num3Core2Target, Num3Core3Target, Num3Core4Target, Num3Core5Target, Num4Core1Target, Num4Core2Target, Num4Core3Target, Num4Core4Target, Num4Core5Target, Num1Core1NoPlus5, Num1Core2NoPlus5, Num1Core3NoPlus5, Num1Core4NoPlus5, Num1Core5NoPlus5, Num2Core1NoPlus5, Num2Core2NoPlus5, Num2Core3NoPlus5, Num2Core4NoPlus5, Num2Core5NoPlus5, Num3Core1NoPlus5, Num3Core2NoPlus5, Num3Core3NoPlus5, Num3Core4NoPlus5, Num3Core5NoPlus5, Num4Core1NoPlus5, Num4Core2NoPlus5, Num4Core3NoPlus5, Num4Core4NoPlus5, Num4Core5NoPlus5)
			
			if (GradeFirst = 1)
			{
				if (StrengthenCoreStar > 0 && StrengthenCoreStar < 5)
				{
					Loop, 5
					{
						Kind := StrengthenCore%A_Index%th
						
						if (Num1Core%Kind%Target > 0 && SacrificeLeft1 = 1 && GoldShort = 0)
						{
							Target  := Num1Core%Kind%Target
							NoPlus5 := Num1Core%Kind%NoPlus5
							StrengthenCore(1, 1, Kind, Target, NoPlus5)
						}
					}
				}
				
				if (StrengthenCoreStar > 1 && StrengthenCoreStar < 8)
				{
					Loop, 5
					{
						Kind := StrengthenCore%A_Index%th
						
						if (Num2Core%Kind%Target > 0 && SacrificeLeft1 = 1 && GoldShort = 0)
						{
							Target  := Num2Core%Kind%Target
							NoPlus5 := Num2Core%Kind%NoPlus5
							StrengthenCore(2, 1, Kind, Target, NoPlus5)
						}
					}
				}
				
				if (StrengthenCoreStar = 3 || StrengthenCoreStar = 4 || (StrengthenCoreStar > 5 && StrengthenCoreStar < 13))
				{
					Loop, 5
					{
						Kind := StrengthenCore%A_Index%th
						
						if ((3CoreSt = 2 || 3CoreSt = 3) && Num3Core%Kind%Target > 0 && SacrificeLeft2 = 1 && GoldShort = 0)
						{
							Target  := Num3Core%Kind%Target
							NoPlus5 := Num3Core%Kind%NoPlus5
							StrengthenCore(3, 2, Kind, Target, NoPlus5)
							Num3Core%Kind%Target := Target
							Num3Core%Kind%NoPlus5 := NoPlus5
						}
						
						if ((3CoreSt = 1 || 3CoreSt = 3) && Num3Core%Kind%Target > 0 && SacrificeLeft1 = 1 && GoldShort = 0)
						{
							Target  := Num3Core%Kind%Target
							NoPlus5 := Num3Core%Kind%NoPlus5
							StrengthenCore(3, 1, Kind, Target, NoPlus5)
						}
					}
				}
				
				if (StrengthenCoreStar = 4 || StrengthenCoreStar = 7 || StrengthenCoreStar > 10)
				{
					Loop, 5
					{
						Kind := StrengthenCore%A_Index%th
						
						if (Num4Core%Kind%Target > 0 && SacrificeLeft2 = 1 && GoldShort = 0)
						{
							Target  := Num4Core%Kind%Target
							NoPlus5 := Num4Core%Kind%NoPlus5
							StrengthenCore(4, 2, Kind, Target, NoPlus5)
						}
					}
				}
				
				if (StrengthenCoreStar = 14 || StrengthenCoreStar = 15)
				{
					Loop, 5
					{
						Kind := StrengthenCore%A_Index%th
						
						if ((3CoreSt = 2 || 3CoreSt = 3) && Num3Core%Kind%Target > 0 && SacrificeLeft2 = 1 && GoldShort = 0)
						{
							Target  := Num3Core%Kind%Target
							NoPlus5 := Num3Core%Kind%NoPlus5
							StrengthenCore(3, 2, Kind, Target, NoPlus5)
							Num3Core%Kind%Target := Target
							Num3Core%Kind%NoPlus5 := NoPlus5
						}
						
						if ((3CoreSt = 1 || 3CoreSt = 3) && Num3Core%Kind%Target > 0 && SacrificeLeft1 = 1 && GoldShort = 0)
						{
							Target  := Num3Core%Kind%Target
							NoPlus5 := Num3Core%Kind%NoPlus5
							StrengthenCore(3, 1, Kind, Target, NoPlus5)
						}
					}
				}
				
				if (StrengthenCoreStar = 9 || StrengthenCoreStar = 10 || StrengthenCoreStar = 12 || StrengthenCoreStar = 15)
				{
					Loop, 5
					{
						Kind := StrengthenCore%A_Index%th
						
						if (Num2Core%Kind%Target > 0 && SacrificeLeft1 = 1 && GoldShort = 0)
						{
							Target  := Num2Core%Kind%Target
							NoPlus5 := Num2Core%Kind%NoPlus5
							StrengthenCore(2, 1, Kind, Target, NoPlus5)
						}
					}
				}
				
				if (StrengthenCoreStar = 10)
				{
					Loop, 5
					{
						Kind := StrengthenCore%A_Index%th
						
						if (Num4Core%Kind%Target > 0 && SacrificeLeft2 = 1 && GoldShort = 0)
						{
							Target  := Num4Core%Kind%Target
							NoPlus5 := Num4Core%Kind%NoPlus5
							StrengthenCore(4, 2, Kind, Target, NoPlus5)
						}
					}
				}
			}
			else
			{
				Loop, 5
				{
					Kind := StrengthenCore%A_Index%th
					
					if (StrengthenCoreStar > 0 && StrengthenCoreStar < 5)
					{
						if (Num1Core%Kind%Target > 0 && SacrificeLeft1 = 1 && GoldShort = 0)
						{
							Target  := Num1Core%Kind%Target
							NoPlus5 := Num1Core%Kind%NoPlus5
							StrengthenCore(1, 1, Kind, Target, NoPlus5)
						}
					}
					
					if (StrengthenCoreStar > 1 && StrengthenCoreStar < 8)
					{
						if (Num2Core%Kind%Target > 0 && SacrificeLeft1 = 1 && GoldShort = 0)
						{
							Target  := Num2Core%Kind%Target
							NoPlus5 := Num2Core%Kind%NoPlus5
							StrengthenCore(2, 1, Kind, Target, NoPlus5)
						}
					}
					
					if (StrengthenCoreStar = 3 || StrengthenCoreStar = 4 || (StrengthenCoreStar > 5 && StrengthenCoreStar < 13))
					{
						if (3CoreSt = 2 || 3CoreSt = 3)
						{
							if (Num3Core%Kind%Target > 0 && SacrificeLeft2 = 1 && GoldShort = 0)
							{
								Target  := Num3Core%Kind%Target
								NoPlus5 := Num3Core%Kind%NoPlus5
								StrengthenCore(3, 2, Kind, Target, NoPlus5)
								Num3Core%Kind%Target := Target
								Num3Core%Kind%NoPlus5 := NoPlus5
							}
						}
						
						if (3CoreSt = 1 || 3CoreSt = 3)
						{
							if (Num3Core%Kind%Target > 0 && SacrificeLeft1 = 1 && GoldShort = 0)
							{
								Target  := Num3Core%Kind%Target
								NoPlus5 := Num3Core%Kind%NoPlus5
								StrengthenCore(3, 1, Kind, Target, NoPlus5)
							}
						}
					}
					
					if (StrengthenCoreStar = 4 || StrengthenCoreStar = 7 || StrengthenCoreStar > 10)
					{
						if (Num4Core%Kind%Target > 0 && SacrificeLeft2 = 1 && GoldShort = 0)
						{
							Target  := Num4Core%Kind%Target
							NoPlus5 := Num4Core%Kind%NoPlus5
							StrengthenCore(4, 2, Kind, Target, NoPlus5)
						}
					}
					
					if (StrengthenCoreStar = 14 || StrengthenCoreStar = 15)
					{
						if (3CoreSt = 2 || 3CoreSt = 3)
						{
							if (Num3Core%Kind%Target > 0 && SacrificeLeft2 = 1 && GoldShort = 0)
							{
								Target  := Num3Core%Kind%Target
								NoPlus5 := Num3Core%Kind%NoPlus5
								StrengthenCore(3, 2, Kind, Target, NoPlus5)
								Num3Core%Kind%Target := Target
								Num3Core%Kind%NoPlus5 := NoPlus5
							}
						}
						
						if (3CoreSt = 1 || 3CoreSt = 3)
						{
							if (Num3Core%Kind%Target > 0 && SacrificeLeft1 = 1 && GoldShort = 0)
							{
								Target  := Num3Core%Kind%Target
								NoPlus5 := Num3Core%Kind%NoPlus5
								StrengthenCore(3, 1, Kind, Target, NoPlus5)
							}
						}
					}
					
					if (StrengthenCoreStar = 9 || StrengthenCoreStar = 10 || StrengthenCoreStar = 12 || StrengthenCoreStar = 15)
					{
						if (Num2Core%Kind%Target > 0 && SacrificeLeft1 = 1 && GoldShort = 0)
						{
							Target  := Num2Core%Kind%Target
							NoPlus5 := Num2Core%Kind%NoPlus5
							StrengthenCore(2, 1, Kind, Target, NoPlus5)
						}
					}
					
					if (StrengthenCoreStar = 10)
					{
						if (Num4Core%Kind%Target > 0 && SacrificeLeft2 = 1 && GoldShort = 0)
						{
							Target  := Num4Core%Kind%Target
							NoPlus5 := Num4Core%Kind%NoPlus5
							StrengthenCore(4, 2, Kind, Target, NoPlus5)
						}
					}
				}
			}
			
			CoreMode := 0
			Target   := 0
			NoPlus5  := 0
		}
		
		if ((SacrificeLeft2 = 1 || SacrificeLeft1 = 1) && GoldShort = 0)
		{
			if ((SacrificeStar = 2 || SacrificeStar = 3) && SacrificeLeft2 = 1 && GoldShort = 0)
			{
				if (StrengthenStar2 = 1 || StrengthenStar2 = 2 || StrengthenStar2 = 3)
					StrengthenStarSt(3, 2)
				
				if (StrengthenStar2 = 4 || StrengthenStar2 = 5 || StrengthenStar2 = 6 || StrengthenStar2 = 7 || StrengthenStar2 = 8)
					StrengthenStarSt(4, 2)
				
				if ((StrengthenStar2 = 2 || StrengthenStar2 = 3) && (NextStar = 1))
					StrengthenStarSt(4, 2)
				
				if (StrengthenStar2 = 9 || StrengthenStar2 = 10 || StrengthenStar2 = 11)
					StrengthenStarSt(5, 2)
				
				if ((StrengthenStar2 = 3 || StrengthenStar2 = 7 || StrengthenStar2 = 8) && (NextStar = 1))
					StrengthenStarSt(5, 2)
				
				if ((StrengthenStar2 = 10 || StrengthenStar2 = 11) && (NextStar = 1))
					StrengthenStarSt(4, 2)
				
				if ((StrengthenStar2 = 5 || StrengthenStar2 = 6 || StrengthenStar2 = 8 || StrengthenStar2 = 11) && (NextStar = 1))
					StrengthenStarSt(3, 2)
				
				if ((StrengthenStar2 = 6) && (NextStar = 1))
					StrengthenStarSt(5, 2)
			}
			
			if ((SacrificeStar = 1 || SacrificeStar = 3)	and SacrificeLeft1 = 1 && GoldShort = 0)
			{
				if (StrengthenStar1 = 1 || StrengthenStar1 = 2)
					StrengthenStarSt(3, 1)
				
				if (StrengthenStar1 = 3 || StrengthenStar1 = 4)
					StrengthenStarSt(4, 1)
				
				if (StrengthenStar1 = 2 && NextStar = 1)
					StrengthenStarSt(4, 1)
				
				if (StrengthenStar1 = 4 && NextStar = 1)
					StrengthenStarSt(3, 1)
			}
		}
		
		if (!WaitImagePlus(clickX, clickY, "Image\Hero\SettingOut.bmp",  60, 0))
			return false
		
		Click(clickX, clickY)
		SleepLog(TIME_WAITPOPUP)
		
		if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, clickY, "Image\Events\Achievement.bmp" , 60, 0))
			{
				log := "# 업적 달성"
				AddLog(log)
				
				clickX := clickX + 35
				clickY := clickY + 15
				ClickToWaitImage(clickX, clickY, "Image\Achievement\Out.bmp")
				GetAchievement()
			}
		}
		
		if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
		{
			SleepLog(TIME_WAITPOPUP)
			
			if (IsImagePlus(clickX, clickY, "Image\Events\GuideQuest.bmp", 60, 0))
			{
				log := "# 가이드 퀘스트 완료"
				AddLog(log)
				
				clickX := clickX + 40
				clickY := clickY + 60
				Click(clickX, clickY)
			}
		}
		
		return
	}
	
	Click(clickX, clickY)
	
	return
}

StrengthenStarSt(Star, St)
{
	Cont := 1
	
	if (!WaitImagePlus(clickX, clickY, "Image\Hero\SettingOut.bmp", 60, 0))
		return false
	
	SetHeroStrengthenOrder()
	
	Loop,
	{
		W := FindTarget(Star)
		
		if (W = 0)
		{
			log := "# " Star "성 강화대상 없음"
			Addlog(log)
			
			NextStar := 1
			
			return
		}
		
		Loop,
		{
			Loop, 100
			{
				SleepLog(1000)
				
				if (IsImagePlus(clickX, clickY, "Image\Hero\SettingOut.bmp" , 60, 0))
				{
					log := "# 강화대상 5강 완료 후 영웅관리 화면 복귀"
					Addlog(log)
					
					SetHeroStrengthenOrder()
					break, 2
				}
				else if (IsImagePlus(clickX, clickY, "Image\Hero\StrengthenB.bmp" , 60, 0))
				{
					log := "# 영웅강화 화면 진입"
					Addlog(log)
					
					Click(clickX, clickY)
					break
				}
			}
			
			log := "# 강화재료 설정 : " St "성 30레벨 영웅"
			Addlog(log)
			
			Cont := SacrificeHero30(St)
			
			if (Cont = 0)
			{
				log := "# 강화재료 또는 골드 부족"
				Addlog(log)
				
				NextStar := 0
				
				Loop, 100
				{
					SleepLog(1000)
					if (IsImagePlus(clickX, clickY, "Image\Hero\SettingOut.bmp" , 60, 0))
					{
						log := "# 강화대상 5강 완료 후 영웅관리 화면 복귀"
						Addlog(log)
						
						return
					}
					else if (IsImagePlus(clickX, clickY, "Image\Hero\X.bmp" , 60, 0))
					{
						log := "# 영웅관리 화면으로 나가기"
						Addlog(log)
						
						Click(clickX, clickY)
						
						return
					}
				}
			}
			else
			{
				log := "# 영웅강화 계속 시도"
				Addlog(log)
			}
		}
	}
}

FindTarget(Star)
{
	if (!WaitImagePlus(clickX, clickY, "Image\Hero\SettingOut.bmp", 60, 0))
		return false
	
	Q       := 1
	n       := 1
	page    := 0
	EndPage := 0
	
	Loop, 309
	{
		if (IFStandbyHeroStar(Q , n))
		{
			if (n = Star)
			{
				if (IFStandbyHero5Plus(Q))
				{
					if (IFStandbyHero30(Q))
					{
						log := "# " Q "위치 영웅정보 화면 진입"
						Addlog(log)
						
						QClick(Q)
						
						if (!WaitImagePlus(clickX, clickY, "Image\Hero\X.bmp", 60, 0))
							return false
						
						if (!IsImagePlus(clickX, clickY, "Image\Hero\StrengthenB.bmp" , 60, 0))
						{
							if (IsImagePlus(clickX, clickY, "Image\Hero\Confirm30.bmp" , 60, 0))
							{
								if (IsImagePlus(clickX, clickY, "Image\Hero\X.bmp" , 60, 0))
									Click(clickX, clickY)
								
								R := FindBackward(Star, Q)
								
								return R
							}
							else
							{
								if (IsImagePlus(clickX, clickY, "Image\Hero\X.bmp" , 60, 0))
									Click(clickX, clickY)
								if (!WaitImagePlus(clickX, clickY, "Image\Hero\SettingOut.bmp", 60, 0))
									return false
							}
						}
						else
						{
							if (IsImagePlus(clickX, clickY, "Image\Hero\X.bmp" , 60, 0))
								Click(clickX, clickY)
							
							if (!WaitImagePlus(clickX, clickY, "Image\Hero\SettingOut.bmp", 60, 0))
								return false
						}
					}
				}
			}
			
			if (n > Star)
			{
				R := FindBackward(Star, Q)
				return R
			}
			
			Q++
		}
		else
		{
			n++
		}
		
		if (Q = 9)
		{
			if (EndPage = 1)
			{
				R := FindBackward(Star, Q)
				return R
			}
			
			Loop, 8
			{
				f := 5 * (A_Index - 1)
				
				if ((page = f) || (page = f + 1) || (page = f + 3))
					Drag(522, 334, 522, 141)
				else if ((page = f + 2) || (page = f + 4))
					Drag(522, 334, 522, 142)
			}
			
			sX := 624
			sY := 361
			eX := sX + 16
			eY := sY + 19
			
			if (IsImagePlus(clickX, clickY, "Image\Hero\EndPage.bmp", 80, 0, sX, sY, eX, eY))
			{
				log := "# 마지막 페이지"
				Addlog(log)
				
				SleepLog(3000)
				n := 1
				EndPage := 1
			}
			
			page++
			Q := 1
		}
	}
}

FindBackward(Star, Q)
{
	if (!WaitImagePlus(clickX, clickY, "Image\Hero\SettingOut.bmp", 60, 0))
		return false
	
	Loop, 299
	{
		if (Q = 1)
		{
			if (page = 0)
			{
				return false
			}
			else
			{
				Loop, 8
				{
					f := 5 * (A_Index - 1)
					
					if ((page = f) || (page = f + 1) || (page = f + 3))
						Drag(522, 141, 522, 334)
					else if ((page = f + 2) || (page = f + 4))
						Drag(522, 142, 522, 334)
				}
				
				Q := 8
				page--
				
				if (page = 0)
				{
					SleepLog(3000)
				}
			}
		}
		else
		{
			Q := Q - 1
		}
		
		if (IFStandbyHeroStar(Q, Star)) 
		{
			QClick(Q)
			
			if (!WaitImagePlus(clickX, clickY, "Image\Hero\X.bmp", 60, 0))
				return false
			
			if (IsImagePlus(clickX, clickY, "Image\Hero\StrengthenB.bmp" , 60, 0))
			{
				return
			}
			else
			{
				if (IsImagePlus(clickX, clickY, "Image\Hero\X.bmp" , 60, 0))
					ClickToWaitImage(clickX, clickY, "Image\Hero\SettingOut.bmp")
			}
		}
		else
		{
			return false
		}
	}
}

IFStandbyHeroStar(Q , n)
{
	if (Q < 5)
	{
		sX := 137 + Q * 105
		sY := 193
	}
	else
	{
		sX := 137 + (Q - 4) * 105
		sY := 338
	}
	
	eX := sX + 30
	eY := sY + 20
	
	if (n = 1)
		ColorID := 0xDBDBDB
	else if (n = 2)
		ColorID := 0xB0D247
	else if (n = 3)
		ColorID := 0x3685FC
	else if (n = 4)
		ColorID := 0xF88913
	else if (n = 5)
		ColorID := 0xEA3333
	else if (n = 6)
		ColorID := 0xD851D0
	else
		return true
	
	if (IsPixelSquare(clickX, clickY, ColorID, sX, sY, eX, eY))
		return true
	else
		return false
}

IFStandbyHero5Plus(Q)
{
	if (Q < 5)
	{
		sX := 184 + Q * 105
		sY := 83
	}
	else
	{
		sX := 184 + (Q - 4) * 105
		sY := 228
	}
	
	eX        := sX + 16
	eY        := sY + 30
	ImageName := "Image\Hero\Plus5.bmp"
	
	if (IsImagePlus(clickX, clickY, ImageName, 95, "WHITE", sX, sY, eX, eY))
		return true
	else
		return false
}

QClick(Q)
{
	if (Q < 5)
	{
		clickX := 137 + Q * 105
		clickY := 193
	}
	else
	{
		clickX := 137 + (Q - 4) * 105
		clickY := 338
	}
	
	Click(clickX, clickY)
}

IFStandbyHero30(Q)
{
	if (Q < 5)
	{
		sX := 177 + Q * 105
		sY := 154
	}
	else
	{
		sX := 177 + (Q - 4) * 105
		sY := 298
	}
	
	eX        := sX + 23
	eY        := sY + 27
	ImageName := "Image\Hero\MainFullLevel2.bmp"
	
	if (IsImagePlus(clickX, clickY, ImageName, 95, "WHITE", sX, sY, eX, eY))
		return true
	else
		return false
}

IsPixelSquare(ByRef clickX, ByRef clickY, ColorID, sX, sY, eX, eY)
{
	CoordMode, Pixel, Screen
	RealWinSize(posX, posY, width, height, "BlueStacks App Player")
	
	SysGet, wFrame,   7
	SysGet, wCaption, 4
	
	sX := sX + posX + wFrame
	sY := sY + posY + wFrame + wCaption
	eX := eX + posX + wFrame
	eY := eY + posY + wFrame + wCaption
	
	PixelSearch, vX, vY, sX, sY, eX, eY, %ColorID%, 30, Fast RGB
	
	if (ErrorLevel = 0)
	{
		clickX := vX - posX
		clickY := vY - posY
		
		return true
	}
	
	if (ErrorLevel = 1)
	{
		clickX := 0
		clickY := 0
		
		return false
	}
}

SacrificeHero30(St, Byref Target = 0, Byref NoPlus5 = 0)
{
	if (!WaitImagePlus(clickX, clickY, "Image\Hero\StrengthenOut.bmp", 60, 0))
		return false
	
	P       := 1
	n       := 1
	SCount  := 0
	EndPage := 0
	
	Loop, 309
	{
		if (IFSacrificeHeroStar(P, n))
		{
			if (n = St)
			{
				if (SCount = 5)
				{
					log := "# " St "성 강화재료 투입 완료"
					Addlog(log)
					
					U := StrengthenNow(St, Target, NoPlus5)
					return U
				}
				
				if (SCount > 0)
				{
					log := "# " St "성 강화재료 투입"
					Addlog(log)
					
					PClick(P)
					SCount++
				}
				else if (IFSacrificeHero30(P))
				{
					log := "# " St "성 강화재료 투입"
					Addlog(log)
					
					PClick(P)
					SCount++
				}
			}
			
			if (n > St)
			{
				if (SCount > 0)
				{
					log := "# " St "성 강화재료 투입 완료"
					Addlog(log)
					
					SacrificeLeft%St% := 0
					U := StrengthenNow(St, Target, NoPlus5)
					
					if (U = 1)
					{
						if (SacrificeLeft%St% = 1)
							return true
						else
							return false
					}
					else
					{
						return false
					}
				}
				else
				{
					log := "# " St "성 강화재료 부족"
					Addlog(log)
					
					SacrificeLeft%St% = 0
					
					if (!WaitImagePlus(clickX, clickY, "Image\Hero\StrengthenOut.bmp", 60, 0))
						return false
					
					Click(clickX, clickY)
					
					return false
				}
			}
			
			P++
		}
		else
		{
			n++
		}
		
		if (P = 7)
		{
			if (EndPage = 1)
			{
				if (SCount > 0)
				{
					log := "# " St "성 강화재료 투입 완료"
					Addlog(log)
					
					SacrificeLeft%St% := 0
					U := StrengthenNow(St, Target, NoPlus5)
					
					if (U = 1)
					{
						if (SacrificeLeft%St% = 1)
							return true
						else
							return false
					}
					else
					{
						return false
					}
				}
				else
				{
					log := "# " St "성 강화재료 부족"
					Addlog(log)
					
					if (!WaitImagePlus(clickX, clickY, "Image\Hero\StrengthenOut.bmp", 60, 0))
						return false
					
					Click(clickX, clickY)
					
					return false
				}
			}
			
			Drag(522, 334, 522, 136)
			
			sX := 620
			sY := 356
			eX := sX + 16
			eY := sY + 19
			
			if (IsImagePlus(clickX, clickY, "Image\Hero\EndPage2.bmp", 80, 0, sX, sY, eX, eY))
			{
				log := "# 마지막 페이지"
				Addlog(log)
				
				SleepLog(3000)
				n       := 1
				EndPage := 1
			}
			
			P := 1
		}
	}
}

IFSacrificeHeroStar(P, n)
{
	if (P < 4)
	{
		sX := 242 + P * 105
		sY := 193
	}
	else
	{
		sX := 242 + (P - 3) * 105
		sY := 338
	}
	
	eX := sX + 30
	eY := sY + 20
	
	if (n = 1)
		ColorID := 0xDBDBDB
	else if (n = 2)
		ColorID := 0xB0D247
	else if (n = 3)
		ColorID := 0x3685FC
	else if (n = 4)
		ColorID := 0xF88913
	else if (n = 5)
		ColorID := 0xEA3333
	else if (n = 6)
		ColorID := 0xD851D0
	else
		return true
	
	if (IsPixelSquare(clickX, clickY, ColorID, sX, sY, eX, eY))
		return true
	else
		return false
}

IFSacrificeHero30(P)
{
	if (P < 4)
	{
		sX := 276 + P * 106
		sY := 157
	}
	else
	{
		sX := 276 + (P - 3) * 106
		sY := 305
	}
	
	eX := sX + 23
	eY := sY + 15
	
	ImageName := "Image\Hero\MainFullLevel2.bmp"
	
	if (IsImagePlus(clickX, clickY, ImageName, 120, "WHITE", sX, sY, eX, eY))
		return true
	else
		return false
}

PClick(P)
{
	if (P < 4)
	{
		clickX := 242 + P * 105
		clickY := 193
	}
	else
	{
		clickX := 242 + (P - 3) * 105
		clickY := 338
	}
	
	Click(clickX, clickY)
}

StrengthenNow(St, Byref Target = 0, Byref NoPlus5 = 0)
{
	log := "# 강화 시도"
	Addlog(log)
	
	if (!WaitImagePlus(clickX, clickY, "Image\Hero\StrengthenS.bmp", 60, 0))
		return false
	
	log := "# 하단 강화 버튼 클릭"
	Addlog(log)
	
	Click(clickX, clickY)
	
	Loop,
	{
		SleepLog(1000)
		
		if (IsImagePlus(clickX, clickY, "Image\Hero\StrengthenNow.bmp", 60, 0))
		{
			log := "# 바로 강화 버튼 클릭"
			Addlog(log)
			
			Click(clickX, clickY)
			
			if (!WaitImagePlus(clickX, clickY, "Image\Hero\StrengthenResult.bmp", 60, 0))
				return false
			
			log := "# 강화 완료! 강화결과 확인"
			Addlog(log)
			
			Loop, %SCount%
			{
				sX := 147 + A_Index * 68
				sY := 133
				eX := sX + 55
				eY := sY + 25
				
				if (IsPixelSquare(clickX, clickY, 0x8EC63D, sX, sY, eX, eY))
				{
					log := "# " A_Index "번 강화 : 성공"
					Addlog(log)
					
					GuiControlGet, NumStrSuccess, W_StrengthenSetup:
					NumStrSuccess++
					GuiControl, W_StrengthenSetup:, NumStrSuccess, %NumStrSuccess%
				}
				else if (IsPixelSquare(clickX, clickY, 0xFFE2AB, sX, sY, eX, eY))
				{
					log := "# " A_Index "번 강화 : 실패"
					Addlog(log)
					
					GuiControlGet, NumStrFailure, W_StrengthenSetup:
					NumStrFailure++
					GuiControl, W_StrengthenSetup:, NumStrFailure, %NumStrFailure%
				}
				else
				{
					log := "# " A_Index "번 강화 : 반환"
					Addlog(log)
					
					SacrificeLeft%St% := 1
				}
			}
			if (CoreMode = 1)
			{
				if (IsImagePlus(clickX, clickY, "Image\Hero\Plus5Prime.bmp", 120, "WHITE", 177, 65, 193, 85))
				{
					Target--
					NoPlus5--
				}
			}
			
			if (!WaitImagePlus(clickX, clickY, "Image\Hero\StrengthenResult.bmp", 60, 0))
				return false
			
			Click(clickX, clickY)
			
			return true
		}
		else if (IsImagePlus(clickX, clickY, "Image\Hero\GoldShort.bmp" , 60, 0))
		{
			log := "# 강화 골드 부족"
			Addlog(log)
			
			GoldShort := 1
			
			ClickToWaitImage(clickX, clickY, "Image\Hero\StrengthenOut.bmp")
			Click(clickX, clickY)
			
			return false
		}
	}
}

ScanCore(Byref Num1Core1Target, Byref Num1Core2Target, Byref Num1Core3Target, Byref Num1Core4Target, Byref Num1Core5Target, Byref Num2Core1Target, Byref Num2Core2Target, Byref Num2Core3Target, Byref Num2Core4Target, Byref Num2Core5Target, Byref Num3Core1Target, Byref Num3Core2Target, Byref Num3Core3Target, Byref Num3Core4Target, Byref Num3Core5Target, Byref Num4Core1Target, Byref Num4Core2Target, Byref Num4Core3Target, Byref Num4Core4Target, Byref Num4Core5Target, Byref Num1Core1NoPlus5, Byref Num1Core2NoPlus5, Byref Num1Core3NoPlus5, Byref Num1Core4NoPlus5, Byref Num1Core5NoPlus5, Byref Num2Core1NoPlus5, Byref Num2Core2NoPlus5, Byref Num2Core3NoPlus5, Byref Num2Core4NoPlus5, Byref Num2Core5NoPlus5, Byref Num3Core1NoPlus5, Byref Num3Core2NoPlus5, Byref Num3Core3NoPlus5, Byref Num3Core4NoPlus5, Byref Num3Core5NoPlus5, Byref Num4Core1NoPlus5, Byref Num4Core2NoPlus5, Byref Num4Core3NoPlus5, Byref Num4Core4NoPlus5, Byref Num4Core5NoPlus5)
{
	GuiControlGet, StrengthenCoreStar,    W_StrengthenSetup:
	GuiControlGet, IsNotStrengthen2Core1, W_StrengthenSetup:
	GuiControlGet, IsNotStrengthen2Core2, W_StrengthenSetup:
	GuiControlGet, IsNotStrengthen2Core3, W_StrengthenSetup:
	GuiControlGet, IsNotStrengthen2Core4, W_StrengthenSetup:
	GuiControlGet, IsNotStrengthen2Core5, W_StrengthenSetup:
	
	log := "# 영웅 강화 : 목록을 읽어 옵니다."
	Addlog(log)
	
	Q       := 1
	n       := 1
	page    := 0
	EndPage := 0
	
	Loop, 4
	{
		Star := A_Index
		
		Loop, 5
		{
			Kind := A_Index
			Num%Star%Core%Kind%NoPlus5 := 0
			Num%Star%Core%Kind%Plus5 := 0
		}
	}
	
	if (StrengthenCoreStar = 1)
	{
		Min := 1
		Max := 1
	}
	else if (StrengthenCoreStar = 2)
	{
		Min := 1
		Max := 2
	}
	else if (StrengthenCoreStar = 3)
	{
		Min := 1
		Max := 3
	}
	else if (StrengthenCoreStar = 4)
	{
		Min := 1
		Max := 4
	}
	else if (StrengthenCoreStar = 5)
	{
		Min := 2
		Max := 2
	}
	else if (StrengthenCoreStar = 6 || StrengthenCoreStar = 9)
	{
		Min := 2
		Max := 3
	}
	else if (StrengthenCoreStar = 7 || StrengthenCoreStar = 10 || StrengthenCoreStar = 12 || StrengthenCoreStar = 15)
	{
		Min := 2
		Max := 4
	}
	else if (StrengthenCoreStar = 8)
	{
		Min := 3
		Max := 3
	}
	else if (StrengthenCoreStar = 11 || StrengthenCoreStar = 14)
	{
		Min := 3
		Max := 4
	}
	else if (StrengthenCoreStar = 13)
	{
		Min := 4
		Max := 4
	}
	
	Loop, 309
	{
		if (IFStandbyHeroStar(Q , n))
		{
			if (n = Min || (Min < n && n < Max) || n = Max)
			{
				WhatCoreKind(Q, Kind)
				
				if (IFStandbyCore5Plus(Q))
					Num%n%Core%Kind%Plus5++
				else
					Num%n%Core%Kind%NoPlus5++
			}
			
			if (n > Max)
				break
			
			Q++
		}
		else
		{
			n++
		}
		
		if (Q > 4)
		{
			if (EndPage = 1)
			{
				if (Q = 9)
					break
				
				continue
			}
			
			if (page = 0)
			{
				Drag(522, 135, 522, 235)
				
				if (IsImagePlus(clickX, clickY, "Image\Hero\OnePage.bmp", 80, 0))
				{
					log := "# 마지막 페이지"
					Addlog(log)
					
					EndPage := 1
					Q       := 5
					SleepLog(3000)
					
					continue
				}
				
				SleepLog(3000)
				Drag(522, 235, 522, 135)
			}
			else
			{
				Loop, 15
				{
					f := 5 * (A_Index - 1)
					
					if ((page = f + 1) || (page = f + 2) || (page = f + 3) || (page = f + 4))
						Drag(522, 231, 522, 135)
					else if (page = f)
						Drag(522, 232, 522, 135)
				}
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Hero\EndPage.bmp", 80, 0, 624, 361, 640, 380))
			{
				log := "# 마지막 페이지"
				Addlog(log)
				
				SleepLog(3000)
				EndPage := 1
			}
			
			page++
			Q := 1
		}
	}
	
	Loop, 4
	{
		Star := A_Index
		
		Loop, 5
		{
			Kind := A_Index
			Num%Star%Core%Kind%Target := Floor((Num%Star%Core%Kind%NoPlus5 + Num%Star%Core%Kind%Plus5) * 0.5) - Num%Star%Core%Kind%Plus5
		}
	}
	
	if (IsNotStrengthen2Core1)
		Num2Core1Target := 0
	
	if (IsNotStrengthen2Core2)
		Num2Core2Target := 0
	
	if (IsNotStrengthen2Core3)
		Num2Core3Target := 0
	
	if (IsNotStrengthen2Core4)
		Num2Core4Target := 0
	
	if (IsNotStrengthen2Core5)
		Num2Core5Target := 0
	
	log := "# 영웅 강화 : 목록을 모두 읽어왔습니다."
	Addlog(log)
}

IFCoreKind(Q, Kind)
{
	if (Kind = 1)
	{
		ColorID := 0xF85303
		
		if (Q < 5)
		{
			sX := 150 + Q * 105
			sY := 130
		}
		else
		{
			sX := 150 + (Q - 4) * 105
			sY := 130 + 144
		}
		
		eX := sX + 5
		eY := sY + 10
		
		if (IsPixelSquare(clickX, clickY, ColorID, sX, sY, eX, eY))
			return true
	}
	else if (Kind = 2)
	{
		ColorID := 0x1355B6
		
		if (Q < 5)
		{
			sX := 125 + Q * 105
			sY := 120
		}
		else
		{
			sX := 125 + (Q - 4) * 105
			sY := 120 + 144
		}
		
		eX := sX + 12
		eY := sY + 13
		
		if (IsPixelSquare(clickX, clickY, ColorID, sX, sY, eX, eY))
			return true
	}
	else if (Kind = 3)
	{
		ColorID := 0x4E7F0A
		
		if (Q < 5)
		{
			sX := 183 + Q * 105
			sY := 90
		}
		else
		{
			sX := 183 + (Q - 4) * 105
			sY := 90 + 144
		}
		
		eX := sX + 11
		eY := sY + 19
		
		if (IsPixelSquare(clickX, clickY, ColorID, sX, sY, eX, eY))
			return true
	}
	else if (Kind = 4)
	{
		ColorID := 0xF42862
		
		if (Q < 5)
		{
			sX := 157 + Q * 105
			sY := 131
		}
		else
		{
			sX := 157 + (Q - 4) * 105
			sY := 131 + 144
		}
		
		eX := sX + 7
		eY := sY + 11
		
		if (IsPixelSquare(clickX, clickY, ColorID, sX, sY, eX, eY))
			return true
	}
	else if (Kind = 5)
	{
		ColorID := 0xBB00FD
		
		if (Q < 5)
		{
			sX := 131 + Q * 105
			sY := 102
		}
		else
		{
			sX := 131 + (Q - 4) * 105
			sY := 102 + 144
		}
		
		eX := sX + 20
		eY := sY + 15
		
		if (IsPixelSquare(clickX, clickY, ColorID, sX, sY, eX, eY))
			return true
	}
	else
	{
		return false
	}
}

WhatCoreKind(Q, Byref Kind)
{
	Static K := 1
	
	Loop, 5
	{
		if (IFCoreKind(Q, K))
		{
			Kind := K
			return
		}
		
		if (K = 5)
			K := 1
		else
			K++
	}
}

IFStandbyCore5Plus(Q)
{
	if (Q < 5)
	{
		sX := 184 + Q * 105
		sY := 83
	}
	else
	{
		sX := 184 + (Q - 4) * 105
		sY := 228
	}
	
	eX := sX + 16
	eY := sY + 30
	
	if (IsImagePlus(clickX, clickY, "Image\Hero\Plus5Prime.bmp", 120, "WHITE", sX, sY, eX, eY))
		return true
	else
		return false
}

StrengthenCore(Star, St, Kind, Byref Target, Byref NoPlus5)
{
	Cont := 1
	
	if (!WaitImagePlus(clickX, clickY, "Image\Hero\NormalHeroes.bmp", 60, 0))
		return false
	
	SetHeroStrengthenOrder()
	
	Loop,
	{
		W := FindCoreTarget(Star, Kind, Target, NoPlus5)
		
		if (W = 0)
		{
			log := "# " Star "성 " Kind "종 강화대상 원소 탐색 오류"
			Addlog(log)
			
			return
		}
		
		Loop,
		{
			Loop, 100
			{
				SleepLog(1000)
				
				if (IsImagePlus(clickX, clickY, "Image\Hero\SettingOut.bmp" , 60, 0))
				{
					log := "# 강화대상 5강 완료 후 영웅관리 화면 복귀"
					Addlog(log)
					
					if (Target = 0)
						return
					
					SetHeroStrengthenOrder()
					break, 2
				}
				else if (IsImagePlus(clickX, clickY, "Image\Hero\StrengthenB.bmp" , 60, 0))
				{
					log := "# 영웅강화 화면 진입"
					Addlog(log)
					
					Click(clickX, clickY)
					break
				}
				else if (IsImagePlus(clickX, clickY, "Image\Hero\StrengthenOut.bmp" , 60, 0))
				{
					log := "# 영웅강화 화면"
					Addlog(log)
					
					break
				}
			}
			
			log := "# 강화재료 설정 : " St "성 30레벨 영웅"
			Addlog(log)
			
			Cont := SacrificeHero30(St, Target, NoPlus5)
			
			if (Cont = 0)
			{
				log := "# 강화재료 또는 골드 부족"
				Addlog(log)
				
				Loop, 100
				{
					SleepLog(1000)
					
					if (IsImagePlus(clickX, clickY, "Image\Hero\SettingOut.bmp", 60, 0))
					{
						log := "# 강화대상 5강 완료 후 영웅관리 화면 복귀"
						Addlog(log)
						
						return
					}
					else if (IsImagePlus(clickX, clickY, "Image\Hero\X.bmp", 60, 0))
					{
						log := "# 영웅관리 화면으로 나가기"
						Addlog(log)
						
						Click(clickX, clickY)
						return
					}
				}
			}
			else
			{
				log := "# 영웅강화 계속 시도"
				Addlog(log)
			}
		}
	}
}

FindCoreTarget(Star, Kind, Target, NoPlus5)
{
	if (!WaitImagePlus(clickX, clickY, "Image\Hero\NormalHeroes.bmp", 60, 0))
		return false
	
	Q       := 1
	n       := 1
	page    := 0
	EndPage := 0
	
	Loop, 309
	{
		if (IFStandbyHeroStar(Q , n))
		{
			if (n = Star)
			{
				if (IFCoreKind(Q, Kind))
				{
					if (!IFStandbyCore5Plus(Q))
					{
						log := "# " Q "위치 영웅정보 화면 진입"
						Addlog(log)
						
						QClick(Q)
						
						if (!WaitImagePlus(clickX, clickY, "Image\Hero\X.bmp", 60, 0))
							return false
						
						if (!IsImagePlus(clickX, clickY, "Image\Hero\StrengthenB.bmp", 60, 0))
						{
							log := "# 오류 : " Q "위치 5강 오인식"
							Addlog(log)
						}
						else if (IsImagePlus(clickX, clickY, "Image\Hero\Plus.bmp", 60, "WHITE", 271, 9, 300, 26))
						{
							log := "# 강화대상 : 강화 중인 원소"
							Addlog(log)
							
							return true
						}
						else if (IsImagePlus(clickX, clickY, "Image\Hero\StrengthenB.bmp", 60, 0))
						{
							ClickToWaitImage(clickX, clickY, "Image\Hero\StrengthenOut.bmp")
							
							if (!IsImagePlus(clickX, clickY, "Image\Hero\0Point.bmp", 60, 0))
							{
								log := "# 강화대상 : 강화 중인 원소"
								Addlog(log)
								
								return true
							}
							else
							{
								NoPlus5--
								
								if (NoPlus5 = 0)
								{
									log := "# 강화대상 : 마지막 원소"
									Addlog(log)
									
									return true
								}
								else if (IsImagePlus(clickX, clickY, "Image\Hero\StrengthenOut.bmp", 60, 0))
								{
									ClickToWaitImage(clickX, clickY, "Image\Hero\X.bmp")
									ClickToWaitImage(clickX, clickY, "Image\Hero\SettingOut.bmp")
								}
							}
						}
					}
				}
			}
			
			if (n > Star)
			{
				log := "# 원소 탐색 오류 : 지정한 성수 초과"
				Addlog(log)
				
				return false
			}
			
			Q++
		}
		else
		{
			n++
		}
		
		if (Q = 5)
		{
			if (EndPage = 1)
			{
				if (Q = 9)
				{
					log := "# 원소 탐색 오류 : 마지막 페이지 넘김"
					Addlog(log)
					
					return false
				}
				
				continue
			}
			
			if (page = 0)
			{
				Drag(522, 135, 522, 235)
				
				if (IsImagePlus(clickX, clickY, "Image\Hero\OnePage.bmp", 80, 0))
				{
					log := "# 마지막 페이지"
					Addlog(log)
					
					EndPage := 1
					Q       := 5
					SleepLog(3000)
					
					continue
				}
				
				SleepLog(3000)
				Drag(522, 235, 522, 135)
			}
			else
			{
				Loop, 15
				{
					f := 5 * (A_Index - 1)
					
					if ((page = f + 1) || (page = f + 2) || (page = f + 3) || (page = f + 4))
						Drag(522, 231, 522, 135)
					else if (page = f)
						Drag(522, 232, 522, 135)
				}
			}
			
			if (IsImagePlus(clickX, clickY, "Image\Hero\EndPage.bmp", 80, 0, 624, 361, 640, 380))
			{
				log := "# 마지막 페이지"
				Addlog(log)
				
				SleepLog(3000)
				EndPage := 1
			}
			
			page++
			Q := 1
		}
	}
}

HeroesSkillsLoad()
{
	SKILL_LIST := "사용안함"
	
	IniRead, IniHeroesSkillsCount, 	%SkillsFile%, Count, HeroesSkillsCount
	
	Loop, %IniHeroesSkillsCount% {
		IniRead, IniHeroesSkillName%A_Index%, %SkillsFile%, HeroesSkills, HeroesSkillName%A_Index%
		Skill  := IniHeroesSkillName%A_Index%
		
		IniRead, IniHeroesSkillUse%A_Index%, %SkillsFile%, HeroesSkillsUse, %Skill%
		SkillUse  := IniHeroesSkillUse%A_Index%
		
		if (SkillUse = "Y") {
			SKILL_LIST := SKILL_LIST "|" Skill
		}
	}
	
	Addlog("# 스킬 목록 로드 완료")
}

HeroesSkillsReset()
{
	SKILL_LIST := "|" SKILL_LIST
	
	GuiControl, W_RaidSetup:, RaidFirstReserveSkill1,   %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidFirstReserveSkill2,   %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidFirstReserveSkill3,   %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidFirstReserveSkill4,   %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidFirstReserveSkill5,   %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidFirstRepeatSkill1,    %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidFirstRepeatSkill2,    %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidFirstRepeatSkill3,    %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidFirstRepeatSkill4,    %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidFirstRepeatSkill5,    %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidSecondReserveSkill1,  %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidSecondReserveSkill2,  %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidSecondReserveSkill3,  %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidSecondReserveSkill4,  %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidSecondReserveSkill5,  %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidSecondRepeatSkill1,   %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidSecondRepeatSkill2,   %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidSecondRepeatSkill3,   %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidSecondRepeatSkill4,   %SKILL_LIST%
	GuiControl, W_RaidSetup:, RaidSecondRepeatSkill5,   %SKILL_LIST%
	
	GuiControl, W_SiegeSetup:, StartBufferSkill1,        %SKILL_LIST%
	GuiControl, W_SiegeSetup:, StartBufferSkill2,        %SKILL_LIST%
	GuiControl, W_SiegeSetup:, StartBufferSkill3,        %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossStartSkill1,          %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossStartSkill2,          %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossStartSkill3,          %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossStartSkill4,          %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossStartSkill5,          %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossRepeatSkill1,         %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossRepeatSkill2,         %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossRepeatSkill3,         %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossRepeatSkill4,         %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossRepeatSkill5,         %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossRepeatSkill6,         %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossRepeatSkill7,         %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossRepeatSkill8,         %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossRepeatSkill9,         %SKILL_LIST%
	GuiControl, W_SiegeSetup:, BossRepeatSkill10,        %SKILL_LIST%
}

EnableAutoSkills()
{
	if (IsImagePlus(clickX, clickY, "Image\Common\AutoSkillsDisabled.bmp", 60, 0)) {
		log := "# 자동 스킬 설정"
		AddLog(log)
		
		Click(clickX, clickY)
	}
}

DisableAutoSkills() 
{
	if (IsImagePlus(clickX, clickY, "Image\Common\AutoSkillsEnabled.bmp", 60, 0)) {
		log := "# 자동 스킬 해제"
		AddLog(log)
		
		Click(clickX, clickY)
	}
}

IsPossibleSkillReserve()
{
	if (IsImageDisplay("Image\Common\SkillReserve1.bmp", 60, "BLACK", 372, 274, 635, 300))
		return true
	else if (IsImageDisplay("Image\Common\SkillReserve2.bmp", 60, "BLACK", 372, 325, 635, 350))
		return true
	else 
		return false
}

SearchSkill(ByRef clickX, ByRef clickY, SearchSkill)
{
	if (SearchSkill = "사용안함") {
		return false
	}
	
	StringReplace, SkillImage, SearchSkill,  %A_SPACE%1번,  _1.bmp, All
	StringReplace, SkillImage, SkillImage,   %A_SPACE%2번,  _2.bmp, All
	StringReplace, SkillImage, SkillImage,   %A_SPACE%각성, _3.bmp, All
	
	SkillImagePath := "Image\Skill\" SkillImage
	
	IfNotExist, %SkillImagePath%
		return false
	
	StringRight, SkillPosition, SkillImage,    5
	StringLeft,  SkillPosition, SkillPosition, 1

	SX := 374
	EX := 394
	
	if (SkillPosition = 1) {
		SY := 278
		EY := 303
		
		Loop, 5 {
			IsDisplay := false
			
			if (IsImagePlus(clickX, clickY, SkillImagePath, 70, 0, SX, SY, EX, EY)) {
				IsDisplay := true
				break
			} else {
				SX := SX + 60
				EX := EX + 60
			}
			
		}
	} else if (SkillPosition = 2) {
		SY := 330
		EY := 355
		
		Loop, 5 {
			IsDisplay := false
			
			if (IsImagePlus(clickX, clickY, SkillImagePath, 70, 0, SX, SY, EX, EY)) {
				IsDisplay := true
				break
			} else {
				SX := SX + 60
				EX := EX + 60
			}
		}
	} else if (SkillPosition = 3) {
		SX := 388
		EX := 394
		SY := 224
		EY := 229
		
		Loop, 5 {
			IsDisplay := false
			
			if (IsImagePlus(clickX, clickY, SkillImagePath, 80, 0, SX, SY, EX, EY)) {
				IsDisplay := true
				break
			} else {
				SX := SX + 60
				EX := EX + 60
			}
		}
	}
	
	if (IsDisplay = true) {
		return true
	} else {
		bAgainSearch := SearchSkillRage(clickX, clickY, SearchSkill)
		return bAgainSearch
	}
}

SearchSkillRage(ByRef clickX, ByRef clickY, SearchSkill) 
{
	if (SearchSkill = "사용안함") {
		return false
	}
	
	StringReplace, SkillImage, SearchSkill,  %A_SPACE%1번,  _1_.bmp, All
	StringReplace, SkillImage, SkillImage,   %A_SPACE%2번,  _2_.bmp, All
	StringReplace, SkillImage, SkillImage,   %A_SPACE%각성, _3_.bmp, All
	
	SkillImagePath := "Image\Skill\" SkillImage
	
	IfNotExist, %SkillImagePath%
		return false
	
	StringRight, SkillPosition, SkillImage,    6
	StringLeft,  SkillPosition, SkillPosition, 1

	SX := 374
	EX := 394
	
	if (SkillPosition = 1) {
		SY := 278
		EY := 303
		
		Loop, 5 {
			IsDisplay := false
			
			if (IsImagePlus(clickX, clickY, SkillImagePath, 70, 0, SX, SY, EX, EY)) {
				IsDisplay := true
				break
			} else {
				SX := SX + 60
				EX := EX + 60
			}
			
		}
	} else if (SkillPosition = 2) {
		SY := 330
		EY := 355
		
		Loop, 5 {
			IsDisplay := false
			
			if (IsImagePlus(clickX, clickY, SkillImagePath, 70, 0, SX, SY, EX, EY)) {
				IsDisplay := true
				break
			} else {
				SX := SX + 60
				EX := EX + 60
			}
		}
	} else if (SkillPosition = 3) {
		SX := 388
		EX := 394
		SY := 224
		EY := 229
		
		Loop, 5 {
			IsDisplay := false
			
			if (IsImagePlus(clickX, clickY, SkillImagePath, 80, 0, SX, SY, EX, EY)) {
				IsDisplay := true
				break
			} else {
				SX := SX + 60
				EX := EX + 60
			}
		}
	}
	
	if (IsDisplay = true) {
		return true
	} else {
		return false
	}
}

RaidFirstReserveSkillFire()
{
	iSkillIndex := 1
	iLoopIndex  := 0
	
	GuiControlGet,  RaidIsSkipReserveSkill,     W_RaidSetup:
	
	if (!RaidIsSkipReserveSkill) {
		AddLog("# 레이드: 예약 스킬 스킵 불가")
	}
	
	Loop {
		if (IsImageDisplay("Image\Raid\Defeat.bmp", 60, 0)) {
			AddLog("# 레이드: 종료")
			return true
		}
		
		if (IsImageDisplay("Image\Raid\Ok.bmp", 60, 0)) {
			AddLog("# 레이드: 종료")
			return true
		}
		
		if (IsPossibleSkillReserve()) {
			AddLog("# 레이드: 스킬 예약 중, 대기")
			Sleep, %TIME_SKILL%
			
			continue
		}
		
		GuiControlGet,  RaidFirstReserveSkill%iSkillIndex%,     W_RaidSetup:
		ReserveSkill := RaidFirstReserveSkill%iSkillIndex%
		
		if (ReserveSkill = "사용안함") {
			AddLog("# 레이드: 1공대 예약 스킬 " . iSkillIndex . "번 사용안함")
			iSkillIndex := iSkillIndex + 1
			
		} else {
			if (SearchSkill(clickX, clickY, ReserveSkill) = true) {
				AddLog("# 레이드: 1공대 예약 스킬 " . iSkillIndex . "번 사용: " . ReserveSkill)
				ClickFast(clickX, clickY)
				
				Sleep, %TIME_CLICK%
				
				iSkillIndex := iSkillIndex + 1
				iLoopIndex  := 0
			} else {
				iLoopIndex  := iLoopIndex  + 1
			}
		}
		
		if (RaidIsSkipReserveSkill && (iLoopIndex > 10)) {
			AddLog("# 레이드: 1공대 예약 스킬 " . ReserveSkill . " 사용 불가")
			iLoopIndex  := 0
			iSkillIndex := iSkillIndex + 1
		}
		
		if (iSkillIndex > 5) {
			break
		}
		
		Sleep, %TIME_REFRESH%
	}
	
	return true
}

RaidSecondReserveSkillFire() 
{
	iSkillIndex := 1
	iLoopIndex  := 0
	
	GuiControlGet,  RaidIsSkipReserveSkill,     W_RaidSetup:
	
	if (!RaidIsSkipReserveSkill) {
		AddLog("# 레이드: 예약 스킬 스킵 불가")
	}
	
	Loop {
		if (IsImageDisplay("Image\Raid\Defeat.bmp", 60, 0)) {
			AddLog("# 레이드: 종료")
			return true
		}
		
		if (IsImageDisplay("Image\Raid\Ok.bmp", 60, 0)) {
			AddLog("# 레이드: 종료")
			return true
		}
		
		if (IsPossibleSkillReserve()) {
			AddLog("# 레이드: 스킬 예약 중, 대기")
			Sleep, %TIME_SKILL%
			
			continue
		}
		
		GuiControlGet,  RaidSecondReserveSkill%iSkillIndex%,     W_RaidSetup:
		ReserveSkill := RaidSecondReserveSkill%iSkillIndex%
		
		if (ReserveSkill = "사용안함") {
			AddLog("# 레이드: 2공대 예약 스킬 " . iSkillIndex . "번 사용안함")
			iSkillIndex := iSkillIndex + 1
			
		} else {
			if (SearchSkill(clickX, clickY, ReserveSkill) = true) {
				AddLog("# 레이드: 2공대 예약 스킬 " . iSkillIndex . "번 사용: " . ReserveSkill)
				ClickFast(clickX, clickY)
				
				Sleep, %TIME_CLICK%
				
				iSkillIndex := iSkillIndex + 1
				iLoopIndex  := 0
			} else {
				iLoopIndex  := iLoopIndex  + 1
			}
		}
		
		if (RaidIsSkipReserveSkill && (iLoopIndex > 10)) {
			AddLog("# 레이드: 2공대 예약 스킬 " . ReserveSkill . " 사용 불가")
			iLoopIndex  := 0
			iSkillIndex := iSkillIndex + 1
		}
		
		if (iSkillIndex > 5) {
			break
		}
		
		Sleep, %TIME_REFRESH%
	}
	
	return true
}

RaidFirstRepeatSkillFire() 
{
	if (IsPossibleSkillReserve()) {
		AddLog("# 레이드: 스킬 예약 중, 대기")
		Sleep, %TIME_SKILL%
		
		return false
	}
	
	Loop, 5 {
		GuiControlGet, RaidFirstRepeatSkill%A_Index%,     W_RaidSetup:
		RepeatSkill := RaidFirstRepeatSkill%A_Index%
		
		if (RecentlySkill = RepeatSkill) {
			continue
		}
		
		if (SearchSkill(clickX, clickY, RepeatSkill) = true) {
			AddLog("# 레이드: 1공대 반복 스킬 사용: " . RepeatSkill)
			ClickFast(clickX, clickY)
			
			RecentlySkill := RepeatSkill
			
			Sleep, %TIME_CLICK%
			
			return true
		}
		
		Sleep, %TIME_REFRESH%
	}
	
	return false
}

RaidSecondRepeatSkillFire()
{
	if (IsPossibleSkillReserve()) {
		AddLog("# 레이드: 스킬 예약 중, 대기")
		Sleep, %TIME_SKILL%
		
		return false
	}
	
	Loop, 5 {
		GuiControlGet, RaidSecondRepeatSkill%A_Index%,     W_RaidSetup:
		RepeatSkill := RaidSecondRepeatSkill%A_Index%
		
		if (RecentlySkill = RepeatSkill) {
			continue
		}
		
		if (SearchSkill(clickX, clickY, RepeatSkill) = true) {
			AddLog("# 레이드: 2공대 반복 스킬 사용: " . RepeatSkill)
			ClickFast(clickX, clickY)
			
			RecentlySkill := RepeatSkill
			
			Sleep, %TIME_CLICK%
			
			return true
		}
		
		Sleep, %TIME_REFRESH%
	}
	
	return false
}

HappySell()
{
	happy1=Image\Hero\Happy\happy1.bmp
	happy2=Image\Hero\Happy\happy2.bmp
	happy3=Image\Hero\Happy\happy3.bmp
	happy4=Image\Hero\Happy\happy4.bmp
	happy5=Image\Hero\Happy\happy5.bmp
	happy6=Image\Hero\Happy\happy6.bmp
	happy7=Image\Hero\Happy\happy7.bmp
	happy8=Image\Hero\Happy\happy8.bmp
	happy9=Image\Hero\Happy\happy9.bmp
	happy10=Image\Hero\Happy\happy10.bmp
	happy11=Image\Hero\Happy\happy11.bmp
	happy12=Image\Hero\Happy\happy12.bmp
	
	Loop
	{
		if(IsImagePlus(clickX, clickY, happy1, 50, 0) or IsImagePlus(clickX, clickY, happy2, 50, 0) or IsImagePlus(clickX, clickY, happy3, 50, 0) or IsImagePlus(clickX, clickY, happy4, 50, 0) or IsImagePlus(clickX, clickY, happy5, 50, 0) or IsImagePlus(clickX, clickY, happy6, 50, 0) or IsImagePlus(clickX, clickY, happy7, 50, 0) or IsImagePlus(clickX, clickY, happy8, 50, 0) or IsImagePlus(clickX, clickY, happy9, 50, 0) or IsImagePlus(clickX, clickY, happy10, 50, 0) or IsImagePlus(clickX, clickY, happy11, 50, 0) or IsImagePlus(clickX, clickY, happy12, 50, 0))
		{
			Click(clickX, clickY)
			
			sleep, 1000
			
			if (IsImagePlus(clickX, clickY, "Image\Hero\Happy\Clear.bmp", 60, 0))
			{
				Click(clickX, clickY)
				
				sleep, 1000
			}
			else if (IsImagePlus(clickX, clickY, "Image\Hero\Selling.bmp", 60, 0))
			{
				{
					Click(clickX, clickY)
					
					Loop
					{
						if (IsImagePlus(clickX, clickY, "Image\Hero\SellingConfirm.bmp", 60, 0))
						{
							Click(clickX, clickY)
						}
					
						if (IsImagePlus(clickX, clickY, "Image\Hero\HeroSellYes.bmp", 60, 0))
						{
							Click(clickX, clickY)
							
							if(WaitImagePlus(clickX, clickY, "Image\Hero\Comp.bmp", 60, 0))
							{
								Click(clickX, clickY)
							}
							
							break
						}
						
						sleep, %TIME_REFRESH%
					}
				}
			}
		}
		else
		{
			break
		}
	}
}

New_FullLevelManage()
{
	log := "# 30 달성 영웅 교체"
	AddLog(log)
	
	GuiControlGet, HeroChangeOption, W_Setting:
	StringLeft, ChangeType, HeroChangeOption, 1
	
	ImageCheker:=0
	loop
	{
		if(ImageCheker=0 and IsImagePlus(clickX, clickY,  "Image\Hero\Setting.bmp", 60, 0))
		{
			Click(clickX, clickY)
			ImageCheker:=1
		}
			
		if(IsImagePlus(clickX, clickY,  "Image\Hero\SettingOut.bmp", 60, 0))
			break
			
		if(ImageCheker=1 and mod(A_Index, 20)=0)
		{
			ImageCheker:=0
		}
			
		if(A_Index > 100)
			return false
			
		sleep, 200
	}

	SetHeroChangeOrder()
	
	log := "# 현재 구성중인 영웅 확인"
	AddLog(log)
	
	SmallHero1:=-2
	SmallHero2:=-2
	SmallHero3:=-2
	SmallHero4:=-2
	SmallHero5:=-2
	Total30HeroCount:=0
	cntDrag:=1
	IsCoreChange:=0
	IsHero30LevelUp:=0
	
	if (ChangeType = 1)
	{
		SmallHero2 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[2].sX,  HeroSmallPositon[2].sY,  HeroSmallPositon[2].eX,  HeroSmallPositon[2].eY)
		SmallHero3 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[3].sX,  HeroSmallPositon[3].sY,  HeroSmallPositon[3].eX,  HeroSmallPositon[3].eY)
		SmallHero4 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[4].sX,  HeroSmallPositon[4].sY,  HeroSmallPositon[4].eX,  HeroSmallPositon[4].eY)
	}
	else if (ChangeType = 2)
	{
		SmallHero1 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[1].sX,  HeroSmallPositon[1].sY,  HeroSmallPositon[1].eX,  HeroSmallPositon[1].eY)
		SmallHero2 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[2].sX,  HeroSmallPositon[2].sY,  HeroSmallPositon[2].eX,  HeroSmallPositon[2].eY)
		SmallHero3 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[3].sX,  HeroSmallPositon[3].sY,  HeroSmallPositon[3].eX,  HeroSmallPositon[3].eY)
		SmallHero4 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[4].sX,  HeroSmallPositon[4].sY,  HeroSmallPositon[4].eX,  HeroSmallPositon[4].eY)
	}
	else if (ChangeType = 3)
	{
		SmallHero3 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[3].sX,  HeroSmallPositon[3].sY,  HeroSmallPositon[3].eX,  HeroSmallPositon[3].eY)
		SmallHero4 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[4].sX,  HeroSmallPositon[4].sY,  HeroSmallPositon[4].eX,  HeroSmallPositon[4].eY)
	}
	else if (ChangeType = 4)
	{
		SmallHero2 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[7].sX,  HeroSmallPositon[7].sY,  HeroSmallPositon[7].eX,  HeroSmallPositon[7].eY)
		SmallHero3 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[8].sX,  HeroSmallPositon[8].sY,  HeroSmallPositon[8].eX,  HeroSmallPositon[8].eY)
		SmallHero4 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[9].sX,  HeroSmallPositon[9].sY,  HeroSmallPositon[9].eX,  HeroSmallPositon[9].eY)
	}
	else if (ChangeType = 5)
	{
		SmallHero2 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[7].sX,  HeroSmallPositon[7].sY,  HeroSmallPositon[7].eX,  HeroSmallPositon[7].eY)
		SmallHero3 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[8].sX,  HeroSmallPositon[8].sY,  HeroSmallPositon[8].eX,  HeroSmallPositon[8].eY)
		SmallHero4 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[9].sX,  HeroSmallPositon[9].sY,  HeroSmallPositon[9].eX,  HeroSmallPositon[9].eY)
		SmallHero5 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[10].sX, HeroSmallPositon[10].sY, HeroSmallPositon[10].eX, HeroSmallPositon[10].eY)
	}
	else if (ChangeType = 6)
	{
		SmallHero3 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[8].sX,  HeroSmallPositon[8].sY,  HeroSmallPositon[8].eX,  HeroSmallPositon[8].eY)
		SmallHero4 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[9].sX,  HeroSmallPositon[9].sY,  HeroSmallPositon[9].eX,  HeroSmallPositon[9].eY)
	}
	else if (ChangeType = 7)
	{
		SmallHero3 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[13].sX,  HeroSmallPositon[13].sY,  HeroSmallPositon[13].eX,  HeroSmallPositon[13].eY)
		SmallHero4 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[14].sX,  HeroSmallPositon[14].sY,  HeroSmallPositon[14].eX,  HeroSmallPositon[14].eY)
		SmallHero5 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[15].sX,  HeroSmallPositon[15].sY,  HeroSmallPositon[15].eX,  HeroSmallPositon[15].eY)
	}
	else if (ChangeType = 8)
	{
		SmallHero4 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[19].sX,  HeroSmallPositon[19].sY,  HeroSmallPositon[19].eX,  HeroSmallPositon[19].eY)
		SmallHero5 := GetSmallHeroNumber(clickX, clickY, HeroSmallPositon[20].sX,  HeroSmallPositon[20].sY,  HeroSmallPositon[20].eX,  HeroSmallPositon[20].eY)
	}

;장착중인 영웅 리스트 확보
	log := "# 현재 영웅 : "  SmallHero1 " / " SmallHero2 " / " SmallHero3 " / " SmallHero4 " / " SmallHero5
	AddLog(log)

;장착중인 영웅 30레벨 여부 확인
	loop, 5
	{
		if(IsUsedHeroFullLevel(A_Index))
		{
			Is30LevelSmall%A_Index%:=1
			Total30HeroCount++
			
			log := A_Index "번슬롯 30레벨"
			AddLog(log)
		}
		else
		{
			Is30LevelSmall%A_Index%:=0
		}
	}
;-----------------창고의 영웅 검색 시작
	log := "#보유영웅 검색 시작"
	AddLog(log)
	
	loop
	{
		loop
		{
			;MainHero%% 1-8번 등록번호
			;Is30LevelSmall%% 장착 영웅의 30레벨 검사
			;SmallHero%% 장착 영웅의 등록번호

			indexA:=1
			loop, 8
			{
				sx:=HeroMainPosition[indexA].sX+65
				sy:=HeroMainPosition[indexA].sY+75
				ex:=HeroMainPosition[indexA].eX
				ey:=HeroMainPosition[indexA].eY

				if (!IsImagePlus(clickX, clickY, "Image\Hero\MainFullLevel.bmp", 60, "WHITE", sx, sy, ex, ey) and !IsImagePlus(clickX, clickY, "Image\Hero\MainFullLevel3.bmp", 60, "WHITE", sx, sy, ex, ey) and !IsImagePlus(clickX, clickY, "Image\Hero\MainFullLevel4.bmp", 60, "WHITE", sx, sy, ex, ey))
				{
					log := indexA "번 영웅 30 아님"
					AddLog(log)
					
					;30이 아니면 등록번호 조사
					;등록번호 조사 후 중복인지 검사
					
					sx:=HeroMainPosition[indexA].sX
					sy:=HeroMainPosition[indexA].sY
					ex:=HeroMainPosition[indexA].eX
					ey:=HeroMainPosition[indexA].eY
					
					indexB:=1
					loop, 34
					{
						number:=HeroCheck%indexB%
						ImageName := "Image\Hero\HeroIcon\M" number ".bmp"

						if(IsImagePlus(clickX, clickY, ImageName, 69, 0, sx, sy, ex, ey))					
						{
							log := "  @ 영웅 찾음: " number
							AddLog(log)
							
							MainHero%indexA%:=number  ;MainHero에 등록번호 저장
							break
						}

						indexB++
						
						if(indexB > 34)
						{
							MainHero%indexA%:=-1
							log := "  @ " indexA "번 미등록 영웅"
							AddLog(log)
						}
					}
					
					if(indexA=8)
						break
				}
				else
				{
					log := indexA "번 영웅부터 30이라 종료 "
					AddLog(log)
					indexA--
					break
				}
				indexA++
			}
			
			if(indexA = 0 and IsCoreChange=0)
			{
				AddLog("교체가능한 일반영웅 없음. 원소교체 시도")
				IsCoreChange:=1
				SetOrder("Normal")
				SetOrder("Level")
				cntDrag:=1
			}
			else
			{
				break
			}
		}
	
	;영웅 푸쉬
	;Is30LevelSmall
	;SmallHero 미등록 영웅은 -1
	;Total30HeroCount
	;같은 인덱스 쓰는 영웅들 정리

		Index_C:=1
		loopCount:=IndexA-1
		loop, %loopCount%
		{
			IndexB:=Index_C+1
			
			if(MainHero%IndexB%!=0)
			{
				loop
				{
					if(!CompareHeroGroup(MainHero%IndexB%, MainHero%Index_C%)) ;앞이 뉴 뒤가 올드
					{
						MainHero%IndexB%:=0 ;비교해서 같은 인덱스면 지워버림
					}
					
					if(IndexB >= IndexA)
						break
					
					IndexB++
				}
			}
			
			Index_C++
		}

		IndexB:=1
		loop, %IndexA%
		{
			if(Total30HeroCount=0)
			{
				IsPoor:=0
				AddLog("교체완료")
				break
			}
			
			if(MainHero%IndexB%!=0)
			{
				targetX:=0
				targetY:=0
				targetSlot:=0
				CompareHeroNum:=0
				SmallHero_bak:=0
				
				loop, 5
				{      ;CompareHeroGroup false면 같은 그룹영웅
					if(SmallHero%A_Index%!=-2 and !CompareHeroGroup(MainHero%IndexB%, SmallHero%A_Index%))
					{
						CompareHeroNum:=A_Index
						AddLog(A_Index "번슬롯에 장착된 영웅이 " IndexB "번과 같은그룹")
						break
					}
				}
				
				if(CompareHeroNum=0) ;중첩 없으니 푸쉬
				{
					sx:=HeroMainPosition[IndexB].sX
					sy:=HeroMainPosition[IndexB].sY
					ex:=HeroMainPosition[IndexB].eX
					ey:=HeroMainPosition[IndexB].eY
					x:=sx+(ex-sx)/2
					y:=sy+(ey-sy)/2
					
					AddLog("그냥 교체")
					
					TempIndex_A:=1
					loop, 5
					{
						if(Is30LevelSmall%TempIndex_A%=1)
						{
							if(ChangeType >=1 and ChangeType <=3)
							{
								sx:=HeroSmallPositon[TempIndex_A].sX
								sy:=HeroSmallPositon[TempIndex_A].sY
								ex:=HeroSmallPositon[TempIndex_A].eX
								ey:=HeroSmallPositon[TempIndex_A].eY
							}
							else if(ChangeType >=4 and ChangeType <=6)
							{
								sx:=HeroSmallPositon[TempIndex_A+5].sX
								sy:=HeroSmallPositon[TempIndex_A+5].sY
								ex:=HeroSmallPositon[TempIndex_A+5].eX
								ey:=HeroSmallPositon[TempIndex_A+5].eY
							}
							else if(ChangeType = 7)
							{
								sx:=HeroSmallPositon[TempIndex_A+10].sX
								sy:=HeroSmallPositon[TempIndex_A+10].sY
								ex:=HeroSmallPositon[TempIndex_A+10].eX
								ey:=HeroSmallPositon[TempIndex_A+10].eY
							}
							else if(ChangeType = 8)
							{
								sx:=HeroSmallPositon[TempIndex_A+15].sX
								sy:=HeroSmallPositon[TempIndex_A+15].sY
								ex:=HeroSmallPositon[TempIndex_A+15].eX
								ey:=HeroSmallPositon[TempIndex_A+15].eY
							}
							
							targetX:=sx+(ex-sx)/2
							targetY:=sy+(ey-sy)/2

							Click(x,y) ;창고 영웅 클릭
							
							if (WaitImagePlus(clickX, clickY, "Image\Hero\Leader.bmp", 60, 0))
							{
								if (IsImagePlus(clickX, clickY, "Image\Hero\Placement.bmp", 60, 0))
								{
									ClickToWaitImage(clickX, clickY, "Image\Hero\SettingOut.bmp") ;클릭 후 SettingOut 보일때까지 대기
									Click(targetX,targetY) ;슬롯에 푸쉬
									
									AddLog(IndexB "번 영웅을 " TempIndex_A "번슬롯에 푸쉬")
									
									sleep, 1000
						
									if(IsImagePlus(clickX, clickY, "Image\Hero\ChangeFail.bmp", 60, 0))
									{
										Click(clickX,clickY)
										AddLog(IndexB "번과 " TempIndex_A "번슬롯 중복으로 교체 실패")
										
										sleep, 1000
									}
									else
									{
										if(!IsUsedHeroFullLevel(TempIndex_A))
										{
											Total30HeroCount--
											SmallHero%TempIndex_A%:=MainHero%IndexB% ;다른 등록번호 영웅이라 업데이트
											Is30LevelSmall%TempIndex_A%:=0
											
											AddLog(IndexB "번을 " TempIndex_A "번슬롯으로 교체 성공")
											
											if(IsPoor=1)
											{
												IsPoor:=2
											}
											
											break
										}
									}
								}
								else
								{
									AddLog(IndexB "번 이미 장착된 영웅")
									
									IsImagePlus(clickX, clickY, "Image\Hero\X.bmp", 60, 0)
									ClickToWaitImage(clickX, clickY, "Image\Hero\SettingOut.bmp")
									
									break
								}
							}
							else
							{
								if (AfterRestart = 1)
								{
									AddLog("# : 재시작이 일어났습니다")
							
									return false
								}
							}
						}
						TempIndex_A++
					}
				}
				else if(Is30LevelSmall%CompareHeroNum%=1) ;중첩이지만 30이라 교체
				{
					sx:=HeroMainPosition[IndexB].sX
					sy:=HeroMainPosition[IndexB].sY
					ex:=HeroMainPosition[IndexB].eX
					ey:=HeroMainPosition[IndexB].eY
					x:=sx+(ex-sx)/2
					y:=sy+(ey-sy)/2

					if(ChangeType >=1 and ChangeType <=3)
					{
						sx:=HeroSmallPositon[CompareHeroNum].sX
						sy:=HeroSmallPositon[CompareHeroNum].sY
						ex:=HeroSmallPositon[CompareHeroNum].eX
						ey:=HeroSmallPositon[CompareHeroNum].eY
					}
					else if(ChangeType >=4 and ChangeType <=6)
					{
						sx:=HeroSmallPositon[CompareHeroNum+5].sX
						sy:=HeroSmallPositon[CompareHeroNum+5].sY
						ex:=HeroSmallPositon[CompareHeroNum+5].eX
						ey:=HeroSmallPositon[CompareHeroNum+5].eY
					}
					else if(ChangeType = 7)
					{
						sx:=HeroSmallPositon[CompareHeroNum+10].sX
						sy:=HeroSmallPositon[CompareHeroNum+10].sY
						ex:=HeroSmallPositon[CompareHeroNum+10].eX
						ey:=HeroSmallPositon[CompareHeroNum+10].eY
					}
					else if(ChangeType = 8)
					{
						sx:=HeroSmallPositon[CompareHeroNum+15].sX
						sy:=HeroSmallPositon[CompareHeroNum+15].sY
						ex:=HeroSmallPositon[CompareHeroNum+15].eX
						ey:=HeroSmallPositon[CompareHeroNum+15].eY
					}
					
					targetX:=sx+(ex-sx)/2
					targetY:=sy+(ey-sy)/2
					Is30LevelSmall%CompareHeroNum%:=0
					AddLog("중첩된 영웅이 30이라 교체")
					
					Click(x,y)

					if (WaitImagePlus(clickX, clickY, "Image\Hero\Leader.bmp", 60, 0))
					{
						if (IsImagePlus(clickX, clickY, "Image\Hero\Placement.bmp", 60, 0))
						{
							ClickToWaitImage(clickX, clickY, "Image\Hero\SettingOut.bmp") ;클릭 후 SettingOut 보일때까지 대기
							Click(targetX,targetY)
							
							sleep, 1000

							loop
							{
								if(IsImagePlus(clickX, clickY, "Image\Hero\ChangeFail.bmp", 60, 0))
								{
									Click(clickX,clickY)
									AddLog(IndexB "번을 " CompareHeroNum "번슬롯으로 교체실패")
									break
								}
								else
								{
									if(!IsUsedHeroFullLevel(CompareHeroNum))
									{
										Total30HeroCount--
										AddLog(IndexB "번을 " CompareHeroNum "번슬롯으로 교체 성공")
										
										if(IsPoor=1)
										{
											IsPoor:=2
										}
										
										break
									}
									else if(A_Index >= 20)
									{
										AddLog("시간 초과로 " IndexB "번 교체실패")
										break
									}
									else
									{
										AddLog(IndexB "번 교체 대기 중")
									}
								}
								sleep, 500
							}
						}
						else
						{
							AddLog(IndexB "번 이미 장착된 영웅")
							
							Is30LevelSmall%CompareHeroNum%:=1
							IsImagePlus(clickX, clickY, "Image\Hero\X.bmp", 60, 0)
							ClickToWaitImage(clickX, clickY, "Image\Hero\SettingOut.bmp")
						}
					}
					else
					{
						if (AfterRestart = 1)
						{
							AddLog("# : 재시작이 일어났습니다")
					
							return false
						}
					}
				}
				else
				{
					if(CompareHeroNum=1 and Is30LevelSmall%CompareHeroNum%=0)
						AddLog("같은 그룹영웅이 있어 다른 영웅으로 교체시도")
					else
						AddLog("교체할 영웅 없음")
				}
			}
			
			IndexB++
		}

		if(Total30HeroCount=0) ;교체 다했으면 종료
		{
			IsPoor:=0
			AddLog("교체 종료")
			break
		}
		else
		{
			if(IsPoor=2)
			{
				AddLog("더이상 교체할 영웅이 없음")
				IsGetNewHero:=0
				IsPoor:=1
				break
			}
			else
			{
				if(IndexA=8)
				{
					log := "# 다음 8명 교체 시도"
					AddLog(log)
					
					if (cntDrag = 1 || cntDrag = 2 || cntDrag = 4)
						Drag(315, 325, 315, 132)
					else if (cntDrag = 3 || cntDrag = 5)
						Drag(315, 325, 315, 133)
					
					cntDrag++
				}else if (IsCoreChange=0)
				{
					AddLog("원소교체 시도")
					IsCoreChange:=1
					SetOrder("Normal")
					if(cntDrag>1)
					{
						SetOrder("Level")
					}
					cntDrag:=1
				}
				else
				{
					AddLog("더이상 교체할 영웅이 없음")
					IsGetNewHero:=0
					IsPoor:=1
					break
				}
			}
		}
	}
	AddLog("영웅교체 작업 끝")
	
	if (WaitImagePlus(clickX, clickY,  "Image\Hero\SettingOut.bmp", 60, 0))
	{
		ClickToWaitImage(clickX, clickY, "Image\Adventure\Start.bmp")
		
		return true
	}
	else
	{
		return false
	}
}

New_HeroAutoSelling()
{
	GuiControlGet, HeroSellingOption, W_Setting:
	GuiControlGet, IsHeroSellingLowLevel, W_Setting:
	StringLeft, SellingType, HeroSellingOption, 1
	
	Loop
	{
		if (IsImagePlus(clickX, clickY, "Image\Hero\Setting.bmp", 60, 0))
			break
		
		if (IsImagePlus(clickX, clickY, "Image\Hero\Setting2.bmp", 60, 0))
			break
		
		if (A_Index > 10000)
		{
			log := "# 실패 : 시간 초과"
			AddLog(log)
			OnStart := 0
			
			return false
		}
		
		if (AfterRestart = 1)
		{
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			OnStart := 0
			
			return true
		}
		
		sleep, %TIME_REFRESH%
	}
	
	ClickToWaitImage(clickX, clickY, "Image\Hero\SettingOut.bmp")
	X := clickX
	Y := clickY
	
	if (SellingType = 1)
	{
		log := "# 영웅 판매 안함"
		AddLog(log)
		Click(X, Y)
		
		Loop
		{
			log := "# 영웅 판매: 종료"
			AddLog(log)
			
			if (IsImagePlus(clickX, clickY, "Image\Adventure\Start.bmp", 60, 0))
				break
			
			if (IsImagePlus(clickX, clickY, "Image\Tower\Start.bmp", 60, 0))
				break
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				return false
			}
			
			if (A_Index > 500)
				AfterRestart := 1
			
			sleep, %TIME_REFRESH%
		}
		
		return true
	}
	
	log := "# 영웅 자동 판매"
	AddLog(log)
	
	PushNote("[Nebula] 영웅", "판매")
	X := clickX
	Y := clickY
	
	log := "# 영웅 : 오름순 등급순 정렬"
	AddLog(log)
	
	SetOrder("Rank")
	
	if (IsHeroSellingLowLevel)
	{
		log := "# 30 레벨이 아닌 영웅도 판매"
		AddLog(log)
	}
	
	num := 1
	
	if (SellingType = 2)
	{
		log := "# 1성 영웅 판매"
		AddLog(log)
		Rank := 1
		sellingTry := 1
	}
	else if (SellingType = 3)
	{
		log := "# 2성 영웅 판매"
		AddLog(log)
		Rank := 2
		sellingTry := 1
	}
	else if (SellingType = 4)
	{
		log := "# 1성, 2성 영웅 판매"
		AddLog(log)
		Rank := 1
		sellingTry := 2
	}
	
	Loop, %sellingTry%
	{
		log := "# 영웅 판매: " Rank "성 시작"
		AddLog(log)
		
		FileName := "Image\Hero\Rank" Rank ".bmp"
		
		sellLimit := Rank + 1
		LimitName := "Image\Hero\Rank" sellLimit ".bmp"
		cntDrag   := 1
		
		ResetChecker:=0
		Loop
		{
			if (num > 8)
			{
				log := "# 다음 8명 판매 시도"
				AddLog(log)
				
				if (cntDrag = 1 || cntDrag = 2 || cntDrag = 4)
					Drag(315, 325, 315, 132)
				else if (cntDrag = 3 || cntDrag = 5)
					Drag(315, 325, 315, 133)
				
				cntDrag++
				
				if (cntDrag > 5)
					cntDrag = 1
				
				SleepLog(TIME_DRAG)
				num := 1
			}
			
			if (AfterRestart = 1)
			{
				log := "# 재시작이 일어났습니다"
				AddLog(log)
				
				return false
			}
			
			if (ResetChecker > 100)
			{
				log := "# 대기 시간 초과"
				AddLog(log)
				AfterRestart := 1
			}
			else
			{
				ResetChecker++
			}
			
			log := "# " num "번 영웅 확인"
			AddLog(log)
			
			if (!WaitImagePlus(clickX, clickY, "Image\Hero\SettingOut.bmp", 60, 0))
				return false
			
			if (IsImagePlus(clickX, clickY, "Image\Hero\HeroLocked.bmp", 60, 0, HeroMainPosition[num].sX, HeroMainPosition[num].sY, HeroMainPosition[num].eX-65, HeroMainPosition[num].eY-75))
			{
				AddLog("# 잠금 영웅 패스")
				num++
				continue
			}
			
			if (IsImagePlus(clickX, clickY, FileName, 60, "WHITE", HeroMainPosition[num].sX, HeroMainPosition[num].sY, HeroMainPosition[num].eX, HeroMainPosition[num].eY))
			{
				rankX := clickX
				rankY := clickY
				
				if (IsImagePlus(clickX, clickY, "Image\Hero\MainFullLevel.bmp", 60, "WHITE", HeroMainPosition[num].sX+65, HeroMainPosition[num].sY+75, HeroMainPosition[num].eX, HeroMainPosition[num].eY))
				{
					Click(clickX, clickY)
					
					if (WaitImagePlus(clickX, clickY, "Image\Hero\Leader.bmp", 60, 0))
					{
						if (IsImagePlus(clickX, clickY, "Image\Hero\Selling.bmp", 60, 0))
						{
							Click(clickX, clickY)
							
							Loop
							{
								if (IsImagePlus(clickX, clickY, "Image\Hero\SellingConfirm.bmp", 60, 0))
								{
									Click(clickX, clickY)
								}
							
								if (IsImagePlus(clickX, clickY, "Image\Hero\HeroSellYes.bmp", 60, 0))
								{
									log := "# 영웅 판매 성공"
									AddLog(log)
									Click(clickX, clickY)
									SleepLog(TIME_CLICK)
									ResetChecker:=0
									
									if(WaitImagePlus(clickX, clickY, "Image\Hero\Comp.bmp", 60, 0))
									{
										Click(clickX, clickY)
									}
									
									break
								}
								
								if (IsImagePlus(clickX, clickY, "Image\Hero\SellFailLock.bmp", 60, 0))
								{
									log := "# 영웅 잠금으로 판매 안함"
									AddLog(log)
									
									ClickToWaitImage(clickX, clickY, "Image\Hero\X.bmp")
									num++
									Click(clickX, clickY)
									
									break
								}
								
								if (IsImagePlus(clickX, clickY, "Image\Hero\SellFailSpecial.bmp", 60, 0))
								{
									log := "# 특수 영웅이라 판매 안함"
									AddLog(log)
									
									WaitImagePlus(clickX, clickY,  "Image\Common\No2.bmp", 60, 0)
									ClickToWaitImage(clickX, clickY, "Image\Hero\X.bmp")
									num++
									Click(clickX, clickY)
									
									break
								}
								
								if (AfterRestart = 1)
								{
									log := "# 재시작이 일어났습니다"
									AddLog(log)
									return false
								}
								
								if (A_Index > 50)
								{
									log := "# 대기 시간 초과"
									AddLog(log)
									AfterRestart := 1
								}
								
								sleep, %TIME_REFRESH%
							}
						}
						else
						{
							if (IsImagePlus(clickX, clickY, "Image\Hero\X.bmp", 60, 0))
							{
								log := "# 영웅 판매 실패"
								AddLog(log)
								
								num++
								Click(clickX, clickY)
							}
						}
					}
				}
				else if (IsHeroSellingLowLevel)
				{
					Click(rankX, rankY)
					
					if (WaitImagePlus(clickX, clickY, "Image\Hero\Leader.bmp", 60, 0))
					{
						if (IsImagePlus(clickX, clickY, "Image\Hero\Selling.bmp", 60, 0))
						{
							if (WaitImagePlus(clickX, clickY, "Image\Hero\SellingConfirm.bmp", 60, 0))
							{
								Click(clickX, clickY)
							}
								
							log := "# 영웅 판매 성공"
							AddLog(log)
							
							IniRead, IniNumSellHero, %CountFile%, Count, NumSellHero
							NumSellHero := IniNumSellHero
							
							NumSellHero++
							
							IniWrite, %NumSellHero%, %CountFile%, Count, NumSellHero
							
							if(WaitImagePlus(clickX, clickY, "Image\Hero\HeroSellYes.bmp", 60, 0))
							{
								Click(clickX, clickY)
							}
							
							SleepLog(TIME_CLICK)
							
							if(WaitImagePlus(clickX, clickY, "Image\Hero\Comp.bmp", 60, 0))
							{
								Click(clickX, clickY)
							}
						}
						else
						{
							if (IsImagePlus(clickX, clickY, "Image\Hero\X.bmp", 60, 0))
							{
								log := "# 영웅 판매 실패"
								AddLog(log)
								num++
								Click(clickX, clickY)
							}
						}
					}
				}
				else
				{
					num++
				}
			}
			else
			{
				if (IsImagePlus(clickX, clickY, LimitName, 30, "WHITE", HeroMainPosition[num].sX, HeroMainPosition[num].sY, HeroMainPosition[num].eX, HeroMainPosition[num].eY))
				{
					log := "# 영웅 판매: " Rank "성 완료"
					AddLog(log)
					Rank++
					break
				}
				else
				{
					num++
				}
			}
		}
	}
	
	log := "# 영웅 판매: 완료"
	AddLog(log)
	Click(X, Y)
	
	Loop
	{
		log := "# 영웅 판매: 종료"
		AddLog(log)
		
		if (IsImagePlus(clickX, clickY, "Image\Adventure\Start.bmp", 60, 0))
			break
		
		if (IsImagePlus(clickX, clickY, "Image\Tower\Start.bmp", 60, 0))
			break
		
		if (AfterRestart = 1)
		{
			log := "# 재시작이 일어났습니다"
			AddLog(log)
			
			return false
		}
		
		if (A_Index > 50)
		{
			log := "# 대기 시간 초과"
			AddLog(log)
			AfterRestart := 1
		}
		
		sleep, %TIME_REFRESH%
	}
	return true
}