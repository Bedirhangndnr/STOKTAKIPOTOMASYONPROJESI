¸
eC:\Users\bedir\OneDrive\Belgeler\GitHub\STOKTAKIPOTOMASYONPROJESI\STOKTAKIP\STOKTAKIP\Admin.Master.cs
	namespace 	
	STOKTAKIP
 
{		 
public

 

partial

 
class

 
Admin

 
:

  
System

! '
.

' (
Web

( +
.

+ ,
UI

, .
.

. /

MasterPage

/ 9
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
} 
} Ó>
eC:\Users\bedir\OneDrive\Belgeler\GitHub\STOKTAKIPOTOMASYONPROJESI\STOKTAKIP\STOKTAKIP\Duzenle.aspx.cs
	namespace 	
	STOKTAKIP
 
{ 
public 

partial 
class 
Duzenle  
:! "
System# )
.) *
Web* -
.- .
UI. 0
.0 1
Page1 5
{ 
int 
id 
; 
string 
islem 
= 
$str 
; 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
islem 
= 
Request 
. 
QueryString '
[' (
$str( /
]/ 0
;0 1
id 
= 
Convert 
. 
ToInt32  
(  !
Request! (
.( )
QueryString) 4
[4 5
$str5 9
]9 :
): ;
;; <
if 
( 
Page 
. 

IsPostBack 
==  "
false# (
)( )
{ 
SayfayiYukle 
( 
) 
; 
} 
} 	
private 
void 
SayfayiYukle !
(! "
)" #
{ 	!
lbl_BasariliYadaDegil !
.! "
Visible" )
=* +
false, 1
;1 2
VeriTabaniIslemleri )
veriTabaniIslemleri_urunGetir  =
=> ?
new@ C
VeriTabaniIslemleriD W
(W X
)X Y
;Y Z)
veriTabaniIslemleri_urunGetir   )
.  ) *
BaglantiBaslat  * 8
(  8 9
)  9 :
;  : ;
Urun!! 
urun!! 
=!! 
new!! 
Urun!!  
(!!  !)
veriTabaniIslemleri_urunGetir!!! >
)!!> ?
;!!? @
urun"" 
."" 
ID"" 
="" 
id"" 
;"" 
	DataTable## 
dt## 
=## 
urun## 
.##  

SatirGetir##  *
(##* +
)##+ ,
;##, -
foreach&& 
(&& 
DataRow&& 
r&& 
in&& !
dt&&" $
.&&$ %
Rows&&% )
)&&) *
{'' 
txtbx_UrunAdi(( 
.(( 
Text(( "
=((# $
r((% &
[((& '
$str((' 1
]((1 2
.((2 3
ToString((3 ;
(((; <
)((< =
;((= >

txtbx_Adet)) 
.)) 
Text)) 
=))  !
r))" #
[))# $
$str))$ 1
]))1 2
.))2 3
ToString))3 ;
()); <
)))< =
;))= >
lbl_UrunKodu** 
.** 
Text** !
=**" #
r**$ %
[**% &
$str**& 1
]**1 2
.**2 3
ToString**3 ;
(**; <
)**< =
;**= >
}++ 
},, 	
	protected-- 
void-- 
AlanlariTemizle-- &
(--& '
)--' (
{.. 	

txtbx_Adet// 
.// 
Text// 
=// 
string// $
.//$ %
Empty//% *
;//* +
txtbx_UrunAdi00 
.00 
Text00 
=00  
string00! '
.00' (
Empty00( -
;00- .!
lbl_BasariliYadaDegil11 !
.11! "
Text11" &
=11' (
string11) /
.11/ 0
Empty110 5
;115 6
}22 	
	protected33 
void33 
btn_Guncele_Command33 *
(33* +
object33+ 1
sender332 8
,338 9
CommandEventArgs33: J
e33K L
)33L M
{44 	
Regex55 
rgx55 
=55 
new55 
Regex55 !
(55! "
$str55" 0
)550 1
;551 2
bool66 *
containsSpecialCharacterInAdet66 /
=660 1
rgx662 5
.665 6
IsMatch666 =
(66= >

txtbx_Adet66> H
.66H I
Text66I M
)66M N
;66N O
if77 
(77 
!77 
(77 *
containsSpecialCharacterInAdet77 0
)770 1
)771 2
{88 
if99 
(99 
txtbx_UrunAdi99 !
.99! "
Text99" &
.99& '
Length99' -
>99- .
$num99. 1
)991 2
{:: !
lbl_BasariliYadaDegil;; )
.;;) *
Visible;;* 1
=;;2 3
true;;4 8
;;;8 9!
lbl_BasariliYadaDegil<< )
.<<) *
Text<<* .
=<</ 0
$str<<1 {
;<<{ |
}== 
else>> 
{?? 
if@@ 
(@@ 
Convert@@ 
.@@  
ToInt32@@  '
(@@' (

txtbx_Adet@@( 2
.@@2 3
Text@@3 7
)@@7 8
<@@9 :
$num@@; <
)@@< =
{AA !
lbl_BasariliYadaDegilBB -
.BB- .
VisibleBB. 5
=BB6 7
trueBB8 <
;BB< =!
lbl_BasariliYadaDegilCC -
.CC- .
TextCC. 2
=CC3 4
$strCC5 p
;CCp q
}DD 
elseEE 
{FF 
VeriTabaniIslemleriGG +
veriTabaniIslemleriGG, ?
=GG@ A
newGGB E
VeriTabaniIslemleriGGF Y
(GGY Z
)GGZ [
;GG[ \
veriTabaniIslemleriHH +
.HH+ ,
BaglantiBaslatHH, :
(HH: ;
)HH; <
;HH< =
UrunII 
urunII !
=II" #
newII$ '
UrunII( ,
(II, -
veriTabaniIslemleriII- @
)II@ A
;IIA B
urunJJ 
.JJ 
IDJJ 
=JJ  !
idJJ" $
;JJ$ %
urunKK 
.KK 
IsimKK !
=KK" #
txtbx_UrunAdiKK$ 1
.KK1 2
TextKK2 6
;KK6 7
urunLL 
.LL 
SayiLL !
=LL" #
ConvertLL$ +
.LL+ ,
ToInt32LL, 3
(LL3 4

txtbx_AdetLL4 >
.LL> ?
TextLL? C
)LLC D
;LLD E
urunMM 
.MM 
KodMM  
=MM! "
ConvertMM# *
.MM* +
ToInt32MM+ 2
(MM2 3
lbl_UrunKoduMM3 ?
.MM? @
TextMM@ D
)MMD E
;MME F
urunNN 
.NN 
UpdateNN #
(NN# $
)NN$ %
;NN% &
veriTabaniIslemleriOO +
.OO+ ,
BaglantiBitirOO, 9
(OO9 :
)OO: ;
;OO; <
AlanlariTemizlePP '
(PP' (
)PP( )
;PP) *
}QQ 
}TT 
}UU 
}WW 	
	protectedYY 
voidYY 
btn_sil_CommandYY &
(YY& '
objectYY' -
senderYY. 4
,YY4 5
CommandEventArgsYY6 F
eYYG H
)YYH I
{ZZ 	
VeriTabaniIslemleri[[ 
veriTabaniIslemleri[[  3
=[[4 5
new[[6 9
VeriTabaniIslemleri[[: M
([[M N
)[[N O
;[[O P
veriTabaniIslemleri\\ 
.\\  
BaglantiBaslat\\  .
(\\. /
)\\/ 0
;\\0 1
Urun]] 
urun]] 
=]] 
new]] 
Urun]]  
(]]  !
veriTabaniIslemleri]]! 4
)]]4 5
;]]5 6
urun^^ 
.^^ 
ID^^ 
=^^ 
id^^ 
;^^ 
urun__ 
.__ 
Delete__ 
(__ 
)__ 
;__ 
veriTabaniIslemleri`` 
.``  
BaglantiBitir``  -
(``- .
)``. /
;``/ 0
}aa 	
}bb 
}cc Ω>
bC:\Users\bedir\OneDrive\Belgeler\GitHub\STOKTAKIPOTOMASYONPROJESI\STOKTAKIP\STOKTAKIP\Ekle.aspx.cs
	namespace 	
	STOKTAKIP
 
{ 
public 

partial 
class 
Ekle 
: 
System  &
.& '
Web' *
.* +
UI+ -
.- .
Page. 2
{ 
int 
id 
; 
string 
islem 
= 
$str 
; 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
islem 
= 
Request 
. 
QueryString '
[' (
$str( /
]/ 0
;0 1
id 
= 
Convert 
. 
ToInt32  
(  !
Request! (
.( )
QueryString) 4
[4 5
$str5 =
]= >
)> ?
;? @
} 	
private 
bool 
UrunKoduKontrol $
($ %
)% &
{ 	
VeriTabaniIslemleri 
veriTabaniIslemleri  3
=4 5
new6 9
VeriTabaniIslemleri: M
(M N
)N O
;O P
veriTabaniIslemleri 
.  
BaglantiBaslat  .
(. /
)/ 0
;0 1
Urun 
urun 
= 
new 
Urun  
(  !
veriTabaniIslemleri! 4
)4 5
;5 6
	DataTable 
dt 
= 
urun 
.  
TumunuGetir  +
(+ ,
), -
;- .
foreach 
( 
DataRow 
dr 
in  "
dt# %
.% &
Rows& *
)* +
{   
if!! 
(!! 
dr!! 
[!! 
$str!! "
]!!" #
.!!# $
ToString!!$ ,
(!!, -
)!!- .
==!!/ 1
txtbx_UrunKodu!!2 @
.!!@ A
Text!!A E
)!!E F
{"" 
return## 
false##  
;##  !
}$$ 
}%% 
return&& 
true&& 
;&& 
}'' 	
	protected)) 
void)) 
AlanlariTemizle)) &
())& '
)))' (
{** 	

txtbx_Adet++ 
.++ 
Text++ 
=++ 
string++ $
.++$ %
Empty++% *
;++* +
txtbx_UrunAdi,, 
.,, 
Text,, 
=,,  
string,,! '
.,,' (
Empty,,( -
;,,- .
txtbx_UrunKodu-- 
.-- 
Text-- 
=--  !
string--" (
.--( )
Empty--) .
;--. /!
lbl_BasariliYadaDegil.. !
...! "
Text.." &
=..' (
string..) /
.../ 0
Empty..0 5
;..5 6
}// 	
	protected00 
void00 
Guncelle_Ekle00 $
(00$ %
object00% +
sender00, 2
,002 3
CommandEventArgs004 D
e00E F
)00F G
{11 	
if22 
(22 
String22 
.22 
IsNullOrEmpty22 $
(22$ %
txtbx_UrunAdi22% 2
.222 3
Text223 7
.227 8
Trim228 <
(22< =
)22= >
)22> ?
||22@ B
String22C I
.22I J
IsNullOrEmpty22J W
(22W X
txtbx_UrunKodu22X f
.22f g
Text22g k
.22k l
Trim22l p
(22p q
)22q r
)22r s
)22s t
{33 !
lbl_BasariliYadaDegil44 %
.44% &
Text44& *
=44+ ,
$str44- }
;44} ~!
lbl_BasariliYadaDegil55 %
.55% &
	ForeColor55& /
=550 1
System552 8
.558 9
Drawing559 @
.55@ A
Color55A F
.55F G
Red55G J
;55J K!
lbl_BasariliYadaDegil66 %
.66% &
Visible66& -
=66. /
true660 4
;664 5
}77 
else88 
{99 
Regex;; 
rgx;; 
=;; 
new;; 
Regex;;  %
(;;% &
$str;;& 4
);;4 5
;;;5 6
bool<< *
containsSpecialCharacterInAdet<< 3
=<<4 5
rgx<<6 9
.<<9 :
IsMatch<<: A
(<<A B

txtbx_Adet<<B L
.<<L M
Text<<M Q
)<<Q R
;<<R S
bool== )
containsSpecialCharacterInKod== 2
===3 4
rgx==5 8
.==8 9
IsMatch==9 @
(==@ A
txtbx_UrunKodu==A O
.==O P
Text==P T
)==T U
;==U V
if>> 
(>> 
!>> 
(>> *
containsSpecialCharacterInAdet>> 4
&&>>5 7)
containsSpecialCharacterInKod>>8 U
)>>U V
)>>V W
{?? 
if@@ 
(@@ 
txtbx_UrunKodu@@ &
.@@& '
Text@@' +
.@@+ ,
Length@@, 2
!=@@3 5
$num@@6 7
)@@7 8
{AA !
lbl_BasariliYadaDegilBB -
.BB- .
VisibleBB. 5
=BB6 7
trueBB8 <
;BB< =!
lbl_BasariliYadaDegilCC -
.CC- .
TextCC. 2
=CC3 4
$strCC5 [
;CC[ \
}DD 
elseEE 
{FF 
ifGG 
(GG 
!GG 
UrunKoduKontrolGG ,
(GG, -
)GG- .
)GG. /
{HH !
lbl_BasariliYadaDegilII 1
.II1 2
VisibleII2 9
=II: ;
trueII< @
;II@ A!
lbl_BasariliYadaDegilJJ 1
.JJ1 2
TextJJ2 6
=JJ7 8
$strJJ9 o
;JJo p
}KK 
elseLL 
{MM 
VeriTabaniIslemleriNN /'
veriTabaniIslemleriUrunEkleNN0 K
=NNL M
newNNN Q
VeriTabaniIslemleriNNR e
(NNe f
)NNf g
;NNg h'
veriTabaniIslemleriUrunEkleOO 7
.OO7 8
BaglantiBaslatOO8 F
(OOF G
)OOG H
;OOH I
UrunPP  
urunPP! %
=PP& '
newPP( +
UrunPP, 0
(PP0 1'
veriTabaniIslemleriUrunEklePP1 L
)PPL M
;PPM N
urunQQ  
.QQ  !
KodQQ! $
=QQ% &
ConvertQQ' .
.QQ. /
ToInt32QQ/ 6
(QQ6 7
txtbx_UrunKoduQQ7 E
.QQE F
TextQQF J
)QQJ K
;QQK L
urunRR  
.RR  !
IsimRR! %
=RR& '
txtbx_UrunAdiRR( 5
.RR5 6
TextRR6 :
;RR: ;
urunSS  
.SS  !
SayiSS! %
=SS& '
ConvertSS( /
.SS/ 0
ToInt32SS0 7
(SS7 8

txtbx_AdetSS8 B
.SSB C
TextSSC G
)SSG H
;SSH I
urunTT  
.TT  !
InsertTT! '
(TT' (
)TT( )
;TT) *'
veriTabaniIslemleriUrunEkleUU 7
.UU7 8
BaglantiBitirUU8 E
(UUE F
)UUF G
;UUG H!
lbl_BasariliYadaDegilVV 1
.VV1 2
VisibleVV2 9
=VV: ;
falseVV< A
;VVA B
AlanlariTemizleWW +
(WW+ ,
)WW, -
;WW- .
}XX 
}YY 
}ZZ 
else[[ 
{\\ !
lbl_BasariliYadaDegil]] )
.]]) *
Visible]]* 1
=]]2 3
true]]4 8
;]]8 9!
lbl_BasariliYadaDegil^^ )
.^^) *
Text^^* .
=^^/ 0
$str^^1 V
;^^V W
}__ 
}`` 
}aa 	
}bb 
}cc õ
pC:\Users\bedir\OneDrive\Belgeler\GitHub\STOKTAKIPOTOMASYONPROJESI\STOKTAKIP\STOKTAKIP\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str $
)$ %
]% &
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *ÂJ
jC:\Users\bedir\OneDrive\Belgeler\GitHub\STOKTAKIPOTOMASYONPROJESI\STOKTAKIP\STOKTAKIP\StokGuncelle.aspx.cs
	namespace 	
	STOKTAKIP
 
{ 
public 

partial 
class 
StokGuncelle %
:& '
System( .
.. /
Web/ 2
.2 3
UI3 5
.5 6
Page6 :
{ 
int 
guncelleme_miktari 
=  
$num! "
;" #
int 
id 
; 
string 
islem 
= 
$str 
; 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
islem 
= 
Request 
. 
QueryString '
[' (
$str( 5
]5 6
;6 7
id 
= 
Convert 
. 
ToInt32  
(  !
Request! (
.( )
QueryString) 4
[4 5
$str5 =
]= >
)> ?
;? @
if 
( 
Page 
. 

IsPostBack 
==  "
false# (
)( )
{ 
SayfayiYukle 
( 
) 
; 
} 
} 	
private 
void 
SayfayiYukle !
(! "
)" #
{ 	
if   
(   
islem   
==   
$str   
)   
{!! "
lbl_degisenUrunMiktari"" &
.""& '
Text""' +
="", -
$str"". H
;""H I
}## 
else$$ 
if$$ 
($$ 
islem$$ 
==$$ 
$str$$ #
)$$# $
{%% "
lbl_degisenUrunMiktari&& &
.&&& '
Text&&' +
=&&, -
$str&&. F
;&&F G
}(( 
})) 	
	protected** 
void** &
GuncellemeMiktariniDuzenle** 1
(**1 2
)**2 3
{++ 	
bool,, $
checkIfCountLessThanZero,, )
;,,) *
if-- 
(-- 
islem-- 
==-- 
$str-- !
)--! "
{.. 
guncelleme_miktari// "
=//# $
Convert//% ,
.//, -
ToInt32//- 4
(//4 5

txtbx_Adet//5 ?
.//? @
Text//@ D
)//D E
;//E F
}00 
else11 
if11 
(11 
islem11 
==11 
$str11 %
)11% &
{22 

txtbx_Adet33 
.33 
Text33 
=33  !
$str33" =
;33= >
guncelleme_miktari44 "
=44# $
Convert44% ,
.44, -
ToInt3244- 4
(444 5
$str445 8
+449 :

txtbx_Adet44; E
.44E F
Text44F J
)44J K
;44K L
}55 
}66 	
	protected77 
void77 
AlanlariTemizle77 &
(77& '
)77' (
{88 	

txtbx_Adet99 
.99 
Text99 
=99 
string99 $
.99$ %
Empty99% *
;99* +
txtbx_UrunKodu:: 
.:: 
Text:: 
=::  !
string::" (
.::( )
Empty::) .
;::. /!
lbl_BasariliYadaDegil;; !
.;;! "
Text;;" &
=;;' (
string;;) /
.;;/ 0
Empty;;0 5
;;;5 6
}<< 	
	protected>> 
bool>> +
MevcutUrunAdediCikarilandanAzMi>> 6
(>>6 7
Urun>>7 ;
urun>>< @
,>>@ A
int>>B E"
cikarilacakUrunMiktari>>F \
)>>\ ]
{?? 	
	DataTable@@ 
dt@@ 
=@@ 
urun@@ 
.@@  $
UrunKodunaGoreSatirGetir@@  8
(@@8 9
)@@9 :
;@@: ;
foreachAA 
(AA 
DataRowAA 
rAA 
inAA !
dtAA" $
.AA$ %
RowsAA% )
)AA) *
{BB 
intCC 
mevcurUrunMiktariCC %
=CC& '
ConvertCC( /
.CC/ 0
ToInt32CC0 7
(CC7 8
rCC8 9
[CC9 :
$strCC: G
]CCG H
.CCH I
ToStringCCI Q
(CCQ R
)CCR S
)CCS T
;CCT U
ifDD 
(DD 
mevcurUrunMiktariDD %
-DD% &"
cikarilacakUrunMiktariDD& <
<DD< =
$numDD= >
)DD> ?
{EE 
returnFF 
trueFF 
;FF  
}GG 
}HH 
returnII 
trueII 
;II 
}JJ 	
	protectedKK 
voidKK 
btn_Guncele_CommandKK .
(KK. /
objectKK/ 5
senderKK6 <
,KK< =
CommandEventArgsKK> N
eKKO P
)KKP Q
{LL 	
RegexMM 
rgxMM 
=MM 
newMM 
RegexMM !
(MM! "
$strMM" 0
)MM0 1
;MM1 2
boolNN *
containsSpecialCharacterInAdetNN /
=NN0 1
rgxNN2 5
.NN5 6
IsMatchNN6 =
(NN= >

txtbx_AdetNN> H
.NNH I
TextNNI M
)NNM N
;NNN O
ifOO 
(OO 
!OO 
(OO *
containsSpecialCharacterInAdetOO 0
)OO0 1
)OO1 2
{PP 
ifRR 
(RR 
txtbx_UrunKoduRR "
.RR" #
TextRR# '
.RR' (
LengthRR( .
!=RR/ 1
$numRR2 3
)RR3 4
{SS !
lbl_BasariliYadaDegilTT )
.TT) *
VisibleTT* 1
=TT2 3
trueTT4 8
;TT8 9!
lbl_BasariliYadaDegilUU )
.UU) *
TextUU* .
=UU/ 0
$strUU1 W
;UUW X
}VV 
elseWW 
{XX 
ifYY 
(YY 
ConvertYY 
.YY  
ToInt32YY  '
(YY' (

txtbx_AdetYY( 2
.YY2 3
TextYY3 7
)YY7 8
<YY8 9
$numYY9 :
)YY: ;
{ZZ !
lbl_BasariliYadaDegil[[ -
.[[- .
Visible[[. 5
=[[6 7
true[[8 <
;[[< =!
lbl_BasariliYadaDegil\\ -
.\\- .
Text\\. 2
=\\3 4
$str\\5 p
;\\p q
}]] 
else^^ 
{__ 
VeriTabaniIslemleriaa +
veriTabaniIslemleriaa, ?
=aa@ A
newaaB E
VeriTabaniIslemleriaaF Y
(aaY Z
)aaZ [
;aa[ \
veriTabaniIslemleribb +
.bb+ ,
BaglantiBaslatbb, :
(bb: ;
)bb; <
;bb< =
Uruncc 
uruncc !
=cc" #
newcc$ '
Uruncc( ,
(cc, -
veriTabaniIslemlericc- @
)cc@ A
;ccA B
urundd 
.dd 
Koddd  
=dd! "
Convertdd# *
.dd* +
ToInt32dd+ 2
(dd2 3
txtbx_UrunKodudd3 A
.ddA B
TextddB F
)ddF G
;ddG H
ifee 
(ee 
islemee !
==ee" $
$stree% -
)ee- .
{ff 
guncelleme_miktarigg .
=gg/ 0
Convertgg1 8
.gg8 9
ToInt32gg9 @
(gg@ A

txtbx_AdetggA K
.ggK L
TextggL P
)ggP Q
;ggQ R
}hh 
elseii 
ifii 
(ii  !
islemii! &
==ii' )
$strii* 1
)ii1 2
{jj 
guncelleme_miktarill .
=ll/ 0
Convertll1 8
.ll8 9
ToInt32ll9 @
(ll@ A
$strllA D
+llE F

txtbx_AdetllG Q
.llQ R
TextllR V
)llV W
;llW X
}mm 
urunnn 
.nn  
StokGuncllemeMiktarinn 1
=nn2 3
guncelleme_miktarinn4 F
;nnF G
ifoo 
(oo +
MevcutUrunAdediCikarilandanAzMioo ;
(oo; <
urunoo< @
,oo@ A
guncelleme_miktariooB T
)ooT U
)ooU V
{pp !
lbl_BasariliYadaDegilqq 1
.qq1 2
Visibleqq2 9
=qq: ;
trueqq< @
;qq@ A!
lbl_BasariliYadaDegilrr 1
.rr1 2
Textrr2 6
=rr7 8
$strrr9 t
;rrt u
}ss 
elsett 
{uu 
urunvv  
.vv  !
StokGuncellevv! -
(vv- .
)vv. /
;vv/ 0
txtbx_UrunKoduww *
.ww* +
Textww+ /
=ww0 1
stringww2 8
.ww8 9
Emptyww9 >
;ww> ?

txtbx_Adetxx &
.xx& '
Textxx' +
=xx, -
stringxx. 4
.xx4 5
Emptyxx5 :
;xx: ;
AlanlariTemizleyy +
(yy+ ,
)yy, -
;yy- .
}zz 
}|| 
}}} 
}~~ 
else 
{
ÄÄ #
lbl_BasariliYadaDegil
ÅÅ %
.
ÅÅ% &
Visible
ÅÅ& -
=
ÅÅ. /
true
ÅÅ0 4
;
ÅÅ4 5#
lbl_BasariliYadaDegil
ÇÇ %
.
ÇÇ% &
Text
ÇÇ& *
=
ÇÇ+ ,
$str
ÇÇ- R
;
ÇÇR S
}
ÉÉ 
}
ÑÑ 	
}
ÖÖ 
}ÜÜ •
iC:\Users\bedir\OneDrive\Belgeler\GitHub\STOKTAKIPOTOMASYONPROJESI\STOKTAKIP\STOKTAKIP\UrunListesi.aspx.cs
	namespace 	
	STOKTAKIP
 
{ 
public 

partial 
class 
UrunListesi $
:% &
System' -
.- .
Web. 1
.1 2
UI2 4
.4 5
Page5 9
{ 
int 
id 
; 
int 
kategori_id 
; 
string 
islem 
= 
$str 
; 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
id 
= 
Convert 
. 
ToInt32  
(  !
Request! (
.( )
QueryString) 4
[4 5
$str5 >
]> ?
)? @
;@ A
if 
( 
! 
Page 
. 

IsPostBack  
)  !
{ 
YemekleriiGetir 
(  
$str  2
)2 3
;3 4
} 
} 	
private 
void 
YemekleriiGetir $
($ %
string% +
	yorumTuru, 5
)5 6
{ 	
VeriTabaniIslemleri 
veriTabaniIslemleri  3
=4 5
new6 9
VeriTabaniIslemleri: M
(M N
)N O
;O P
veriTabaniIslemleri 
.  
BaglantiBaslat  .
(. /
)/ 0
;0 1
Urun   
urun   
=   
new   
Urun    
(    !
veriTabaniIslemleri  ! 4
)  4 5
;  5 6
SqlDataReader!! 
sqlDataReader!! '
=!!( )
urun!!* .
.!!. /
GetAll!!/ 5
(!!5 6
)!!6 7
;!!7 8
	DataList1"" 
."" 

DataSource""  
=""! "
sqlDataReader""# 0
;""0 1
	DataList1## 
.## 
DataBind## 
(## 
)##  
;##  !
veriTabaniIslemleri$$ 
.$$  
BaglantiBitir$$  -
($$- .
)$$. /
;$$/ 0
}%% 	
	protected(( 
void(( 
Unnamed_Command(( &
(((& '
object((' -
sender((. 4
,((4 5
CommandEventArgs((6 F
e((G H
)((H I
{)) 	
VeriTabaniIslemleri** 
veriTabaniIslemleri**  3
=**4 5
new**6 9
VeriTabaniIslemleri**: M
(**M N
)**N O
;**O P
veriTabaniIslemleri++ 
.++  
BaglantiBaslat++  .
(++. /
)++/ 0
;++0 1
Urun,, 
urun,, 
=,, 
new,, 
Urun,,  
(,,  !
veriTabaniIslemleri,,! 4
),,4 5
;,,5 6
urun-- 
.-- 
ID-- 
=-- 
Convert-- 
.-- 
ToInt32-- %
(--% &
e--& '
.--' (
CommandArgument--( 7
)--7 8
;--8 9
urun.. 
... 
Delete.. 
(.. 
).. 
;.. 
veriTabaniIslemleri// 
.//  
BaglantiBitir//  -
(//- .
)//. /
;/// 0
YemekleriiGetir00 
(00 
$str00 .
)00. /
;00/ 0
}11 	
	protected33 
void33 
btn_Ara_Command33 &
(33& '
object33' -
sender33. 4
,334 5
CommandEventArgs336 F
e33G H
)33H I
{44 	
YemekleriiGetir55 
(55 
$str55 +
)55+ ,
;55, -
}66 	
}77 
}88 