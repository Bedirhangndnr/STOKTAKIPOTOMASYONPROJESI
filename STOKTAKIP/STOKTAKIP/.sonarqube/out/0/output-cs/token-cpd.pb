ˆ
cC:\Users\bedir\OneDrive\Belgeler\GitHub\STOKTAKIPOTOMASYONPROJESI\STOKTAKIP\BusinessLayer\Class1.cs
	namespace 	
BusinessLayer
 
{ 
public		 

class		 
Class1		 
{

 
} 
} ÐQ
hC:\Users\bedir\OneDrive\Belgeler\GitHub\STOKTAKIPOTOMASYONPROJESI\STOKTAKIP\BusinessLayer\Entity\Urun.cs
	namespace

 	
BusinessLayer


 
.

 
Entity

 
{ 
public 

class 
Urun 
{ 
private 
VeriTabaniIslemleri #
veritabaniIslem$ 3
;3 4
public 
Urun 
( 
VeriTabaniIslemleri ' 
veriTabanÄ°Islemleri( ;
); <
{ 	
veritabaniIslem 
=  
veriTabanÄ°Islemleri 1
;1 2
} 	
	protected 
VeriTabaniIslemleri %
VeritabaniIslem& 5
{ 	
get 
{ 
return 
veritabaniIslem (
;( )
}* +
set 
{ 
veritabaniIslem !
=" #
value$ )
;) *
}+ ,
} 	
private 
int 
id 
; 
public 
int 
ID 
{ 	
get 
{ 
return 
id 
; 
} 
set 
{ 
id 
= 
value 
; 
} 
} 	
private 
int 
kod 
; 
public 
int 
Kod 
{   	
get!! 
{!! 
return!! 
kod!! 
;!! 
}!! 
set"" 
{"" 
kod"" 
="" 
value"" 
;"" 
}""  
}## 	
private$$ 
string$$ 
isim$$ 
;$$ 
public%% 
string%% 
Isim%% 
{&& 	
get'' 
{'' 
return'' 
isim'' 
;'' 
}''  
set(( 
{(( 
isim(( 
=(( 
value(( 
;(( 
}((  !
})) 	
private** 
int** 
sayi** 
;** 
public++ 
int++ 
Sayi++ 
{,, 	
get-- 
{-- 
return-- 
sayi-- 
;-- 
}--  
set.. 
{.. 
sayi.. 
=.. 
value.. 
;.. 
}..  !
}// 	
private00 
int00  
stokGuncllemeMiktari00 (
;00( )
public11 
int11  
StokGuncllemeMiktari11 '
{22 	
get33 
{33 
return33  
stokGuncllemeMiktari33 -
;33- .
}33/ 0
set44 
{44  
stokGuncllemeMiktari44 &
=44' (
value44) .
;44. /
}440 1
}55 	
public66 
	DataTable66 

SatirGetir66 #
(66# $
)66$ %
{77 	
veritabaniIslem88 
.88 
spAd88  
=88! "
$str88# ;
;88; <
veritabaniIslem99 
.99 
AddSqlParameter99 +
(99+ ,
$str99, 1
,991 2
id993 5
)995 6
;996 7
veritabaniIslem:: 
.:: 
Uygula:: "
(::" #
)::# $
;::$ %
veritabaniIslem;; 
.;; 

TabloGetir;; &
(;;& '
);;' (
;;;( )
return<< 
veritabaniIslem<< "
.<<" #
VeriTablosu<<# .
;<<. /
}== 	
public>> 
void>> 
Delete>> 
(>> 
)>> 
{?? 	
veritabaniIslem@@ 
.@@ 
spAd@@  
=@@! "
$str@@# /
;@@/ 0
veritabaniIslemAA 
.AA 
AddSqlParameterAA +
(AA+ ,
$strAA, 1
,AA1 2
idAA3 5
)AA5 6
;AA6 7
tryBB 
{CC 
veritabaniIslemDD 
.DD  
CalistirDD  (
(DD( )
)DD) *
;DD* +
veritabaniIslemEE 
.EE  
DeleteEE  &
(EE& '
)EE' (
;EE( )
}FF 
catchGG 
(GG 
	ExceptionGG 
)GG 
{HH 
throwJJ 
;JJ 
}KK 
}LL 	
publicNN 
SqlDataReaderNN 
GetAllNN #
(NN# $
)NN$ %
{OO 	
veritabaniIslemPP 
.PP 
spAdPP  
=PP! "
$strPP# 5
;PP5 6
returnQQ 
veritabaniIslemQQ "
.QQ" #
GetAllQQ# )
(QQ) *
)QQ* +
;QQ+ ,
}RR 	
publicSS 
	DataTableSS 
TumunuGetirSS $
(SS$ %
)SS% &
{TT 	
veritabaniIslemUU 
.UU 
spAdUU  
=UU! "
$strUU# 5
;UU5 6
veritabaniIslemVV 
.VV 

TabloGetirVV &
(VV& '
)VV' (
;VV( )
returnWW 
veritabaniIslemWW "
.WW" #
VeriTablosuWW# .
;WW. /
}XX 	
publicYY 
	DataTableYY $
UrunKodunaGoreSatirGetirYY 1
(YY1 2
)YY2 3
{ZZ 	
veritabaniIslem[[ 
.[[ 
spAd[[  
=[[! "
$str[[# @
;[[@ A
veritabaniIslem\\ 
.\\ 
AddSqlParameter\\ +
(\\+ ,
$str\\, 8
,\\8 9
kod\\: =
)\\= >
;\\> ?
veritabaniIslem]] 
.]] 
Calistir]] $
(]]$ %
)]]% &
;]]& '
veritabaniIslem__ 
.__ 

TabloGetir__ &
(__& '
)__' (
;__( )
return`` 
veritabaniIslem`` "
.``" #
VeriTablosu``# .
;``. /
}aa 	
publicbb 
SqlDataReaderbb 
GetByIdbb $
(bb$ %
)bb% &
{cc 	
throwdd 
newdd #
NotImplementedExceptiondd -
(dd- .
)dd. /
;dd/ 0
}ee 	
publicff 
	DataTableff 
UrunAdinaGoreGetirff +
(ff+ ,
)ff, -
{gg 	
veritabaniIslemhh 
.hh 
spAdhh  
=hh! "
$strhh# :
;hh: ;
veritabaniIslemii 
.ii 
AddSqlParameterii +
(ii+ ,
$strii, 7
,ii7 8
isimii9 =
)ii= >
;ii> ?
veritabaniIslemjj 
.jj 
Calistirjj $
(jj$ %
)jj% &
;jj& '
veritabaniIslemkk 
.kk 

TabloGetirkk &
(kk& '
)kk' (
;kk( )
returnll 
veritabaniIslemll "
.ll" #
VeriTablosull# .
;ll. /
}mm 	
publicoo 
voidoo 
Insertoo 
(oo 
)oo 
{pp 	
veritabaniIslemqq 
.qq 
spAdqq  
=qq! "
$strqq# 0
;qq0 1
veritabaniIslemrr 
.rr 
AddSqlParameterrr +
(rr+ ,
$strrr, 7
,rr7 8
isimrr9 =
)rr= >
;rr> ?
veritabaniIslemss 
.ss 
AddSqlParameterss +
(ss+ ,
$strss, :
,ss: ;
sayiss< @
)ss@ A
;ssA B
veritabaniIslemtt 
.tt 
AddSqlParametertt +
(tt+ ,
$strtt, 8
,tt8 9
kodtt: =
)tt= >
;tt> ?
tryuu 
{vv 
veritabaniIslemww 
.ww  
Calistirww  (
(ww( )
)ww) *
;ww* +
}xx 
catchyy 
(yy 
	Exceptionyy 
)yy 
{zz 
throw|| 
;|| 
}}} 
}~~ 	
public 
void 
StokGuncelle  
(  !
)! "
{
€€ 	
veritabaniIslem
 
.
 
spAd
  
=
! "
$str
# 4
;
4 5
veritabaniIslem
‚‚ 
.
‚‚ 
AddSqlParameter
‚‚ +
(
‚‚+ ,
$str
‚‚, F
,
‚‚F G"
stokGuncllemeMiktari
‚‚H \
)
‚‚\ ]
;
‚‚] ^
veritabaniIslem
ƒƒ 
.
ƒƒ 
AddSqlParameter
ƒƒ +
(
ƒƒ+ ,
$str
ƒƒ, 8
,
ƒƒ8 9
kod
ƒƒ: =
)
ƒƒ= >
;
ƒƒ> ?
try
…… 
{
†† 
veritabaniIslem
‡‡ 
.
‡‡  
Calistir
‡‡  (
(
‡‡( )
)
‡‡) *
;
‡‡* +
}
ˆˆ 
catch
‰‰ 
(
‰‰ 
	Exception
‰‰ 
)
‰‰ 
{
ŠŠ 
throw
ŒŒ 
;
ŒŒ 
}
 
}
ŽŽ 	
public
 
void
 
Update
 
(
 
)
 
{
 	
veritabaniIslem
‘‘ 
.
‘‘ 
spAd
‘‘  
=
‘‘! "
$str
‘‘# 4
;
‘‘4 5
veritabaniIslem
’’ 
.
’’ 
AddSqlParameter
’’ +
(
’’+ ,
$str
’’, 1
,
’’1 2
id
’’3 5
)
’’5 6
;
’’6 7
veritabaniIslem
““ 
.
““ 
AddSqlParameter
““ +
(
““+ ,
$str
““, 7
,
““7 8
isim
““9 =
)
““= >
;
““> ?
veritabaniIslem
”” 
.
”” 
AddSqlParameter
”” +
(
””+ ,
$str
””, :
,
””: ;
sayi
””< @
)
””@ A
;
””A B
veritabaniIslem
•• 
.
•• 
AddSqlParameter
•• +
(
••+ ,
$str
••, 8
,
••8 9
kod
••: =
)
••= >
;
••> ?
try
–– 
{
—— 
veritabaniIslem
˜˜ 
.
˜˜  
Calistir
˜˜  (
(
˜˜( )
)
˜˜) *
;
˜˜* +
veritabaniIslem
™™ 
.
™™  
Update
™™  &
(
™™& '
)
™™' (
;
™™( )
}
šš 
catch
›› 
(
›› 
	Exception
›› 
)
›› 
{
œœ 
throw
žž 
;
žž 
}
ŸŸ 
}
   	
}
¢¢ 
}££ Ÿ
tC:\Users\bedir\OneDrive\Belgeler\GitHub\STOKTAKIPOTOMASYONPROJESI\STOKTAKIP\BusinessLayer\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str (
)( )
]) *
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
$str *
)* +
]+ ,
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
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *öV
uC:\Users\bedir\OneDrive\Belgeler\GitHub\STOKTAKIPOTOMASYONPROJESI\STOKTAKIP\BusinessLayer\Work\VeritabaniIslemleri.cs
	namespace		 	
BusinessLayer		
 
.		 
Work		 
{

 
public 

class 
VeriTabaniIslemleri $
{ 

SqlCommand 
comm 
= 
new 

SqlCommand (
(( )
)) *
;* +
private 
SqlConnection 
conn_ #
;# $
List 
< 
SqlParameter 
> 
sqlParameters_ )
=* +
new, /
List0 4
<4 5
SqlParameter5 A
>A B
(B C
)C D
;D E
public 
string 
spAd 
; 
public 
SqlConnection 
Conn !
{ 	
get 
{ 
return 
conn_ 
; 
}  !
set 
{ 
conn_ 
= 
value 
;  
}! "
} 	
public 
VeriTabaniIslemleri "
(" #
)# $
{ 	
try 
{ 
conn_ 
= 
new 
SqlConnection )
() *
$str* x
)x y
;y z
comm 
. 

Connection 
=  !
conn_" '
;' (
} 
catch 
( 
	Exception 
) 
{   
throw!! 
;!! 
}"" 
}## 	
public$$ 
SqlConnection$$ 
BaglantiBaslat$$ +
($$+ ,
)$$, -
{%% 	
try&& 
{'' 
conn_(( 
.(( 
Open(( 
((( 
)(( 
;(( 
return)) 
conn_)) 
;)) 
}** 
catch++ 
(++ 
	Exception++ 
)++ 
{,, 
conn_-- 
.-- 
Close-- 
(-- 
)-- 
;-- 
return.. 
null.. 
;.. 
}// 
}00 	
public11 
SqlConnection11 
BaglantiBitir11 *
(11* +
)11+ ,
{22 	
try33 
{44 
conn_55 
.55 
Close55 
(55 
)55 
;55 
return66 
conn_66 
;66 
}77 
catch88 
(88 
	Exception88 
)88 
{99 
throw:: 
;:: 
return;; 
null;; 
;;; 
}<< 
}== 	
public@@ 
void@@ 
Insert@@ 
(@@ 
)@@ 
{AA 	
commBB 
.BB 
CommandTextBB 
=BB 
spAdBB #
;BB# $
commCC 
.CC 
CommandTypeCC 
=CC 
SystemCC %
.CC% &
DataCC& *
.CC* +
CommandTypeCC+ 6
.CC6 7
StoredProcedureCC7 F
;CCF G
commDD 
.DD 
ExecuteNonQueryDD  
(DD  !
)DD! "
;DD" #
}EE 	
publicGG 
voidGG 
UpdateGG 
(GG 
)GG 
{HH 	
commII 
.II 
CommandTextII 
=II 
spAdII #
;II# $
commJJ 
.JJ 
CommandTypeJJ 
=JJ 
SystemJJ %
.JJ% &
DataJJ& *
.JJ* +
CommandTypeJJ+ 6
.JJ6 7
StoredProcedureJJ7 F
;JJF G
commKK 
.KK 
ExecuteNonQueryKK  
(KK  !
)KK! "
;KK" #
}LL 	
publicNN 
voidNN 
DeleteNN 
(NN 
)NN 
{OO 	
commPP 
.PP 
CommandTypePP 
=PP 
SystemPP %
.PP% &
DataPP& *
.PP* +
CommandTypePP+ 6
.PP6 7
StoredProcedurePP7 F
;PPF G
commQQ 
.QQ 
CommandTextQQ 
=QQ 
spAdQQ #
;QQ# $
commRR 
.RR 
ExecuteNonQueryRR  
(RR  !
)RR! "
;RR" #
}SS 	
publicTT 
voidTT 
CalistirTT 
(TT 
)TT 
{UU 	
DeleteSqlParametersVV 
(VV  
)VV  !
;VV! "
forWW 
(WW 
intWW 
iWW 
=WW 
$numWW 
;WW 
iWW 
<WW 
sqlParameters_WW  .
.WW. /
CountWW/ 4
;WW4 5
iWW6 7
++WW7 9
)WW9 :
{XX 
commYY 
.YY 

ParametersYY 
.YY  
AddWithValueYY  ,
(YY, -
sqlParameters_YY- ;
[YY; <
iYY< =
]YY= >
.YY> ?
ParameterNameYY? L
,YYL M
sqlParameters_YYN \
[YY\ ]
iYY] ^
]YY^ _
.YY_ `
ValueYY` e
)YYe f
;YYf g
}ZZ 
comm[[ 
.[[ 
CommandType[[ 
=[[ 
System[[ %
.[[% &
Data[[& *
.[[* +
CommandType[[+ 6
.[[6 7
StoredProcedure[[7 F
;[[F G
comm\\ 
.\\ 
CommandText\\ 
=\\ 
spAd\\ #
;\\# $
comm]] 
.]] 
ExecuteNonQuery]]  
(]]  !
)]]! "
;]]" #
sqlParameters___ 
.__ 
Clear__  
(__  !
)__! "
;__" #
}aa 	
publicbb 
voidbb 
Uygulabb 
(bb 
)bb 
{cc 	
DeleteSqlParametersdd 
(dd  
)dd  !
;dd! "
foree 
(ee 
intee 
iee 
=ee 
$numee 
;ee 
iee 
<ee 
sqlParameters_ee  .
.ee. /
Countee/ 4
;ee4 5
iee6 7
++ee7 9
)ee9 :
{ff 
commgg 
.gg 

Parametersgg 
.gg  
AddWithValuegg  ,
(gg, -
sqlParameters_gg- ;
[gg; <
igg< =
]gg= >
.gg> ?
ParameterNamegg? L
,ggL M
sqlParameters_ggN \
[gg\ ]
igg] ^
]gg^ _
.gg_ `
Valuegg` e
)gge f
;ggf g
}hh 
commii 
.ii 
CommandTypeii 
=ii 
Systemii %
.ii% &
Dataii& *
.ii* +
CommandTypeii+ 6
.ii6 7
StoredProcedureii7 F
;iiF G
commjj 
.jj 
CommandTextjj 
=jj 
spAdjj #
;jj# $
commkk 
.kk 
ExecuteNonQuerykk  
(kk  !
)kk! "
;kk" #
sqlParameters_ll 
.ll 
Clearll  
(ll  !
)ll! "
;ll" #
}mm 	
publicnn 
SqlDataReadernn 
GetAllnn #
(nn# $
)nn$ %
{oo 	
commpp 
.pp 
CommandTextpp 
=pp 
spAdpp #
;pp# $
commqq 
.qq 
CommandTypeqq 
=qq 
Systemqq %
.qq% &
Dataqq& *
.qq* +
CommandTypeqq+ 6
.qq6 7
StoredProcedureqq7 F
;qqF G
SqlDataReaderrr 
drrr 
=rr 
commrr #
.rr# $
ExecuteReaderrr$ 1
(rr1 2
)rr2 3
;rr3 4
returnss 
drss 
;ss 
}tt 	
privateww 
	DataTableww 
veriTablosuww %
=ww& '
newww( +
	DataTableww, 5
(ww5 6
)ww6 7
;ww7 8
publicxx 
	DataTablexx 
VeriTablosuxx $
{yy 	
getzz 
{zz 
returnzz 
veriTablosuzz $
;zz$ %
}zz& '
set{{ 
{{{ 
veriTablosu{{ 
={{ 
value{{  %
;{{% &
}{{' (
}|| 	
public}} 
void}} 

TabloGetir}} 
(}} 
)}}  
{~~ 	
comm
 
.
 
CommandText
 
=
 
spAd
 #
;
# $
comm
‚‚ 
.
‚‚ 
CommandType
‚‚ 
=
‚‚ 
System
‚‚ %
.
‚‚% &
Data
‚‚& *
.
‚‚* +
CommandType
‚‚+ 6
.
‚‚6 7
StoredProcedure
‚‚7 F
;
‚‚F G
SqlDataAdapter
ƒƒ 
da
ƒƒ 
=
ƒƒ 
new
ƒƒ  #
SqlDataAdapter
ƒƒ$ 2
(
ƒƒ2 3
comm
ƒƒ3 7
)
ƒƒ7 8
;
ƒƒ8 9
da
„„ 
.
„„ 
Fill
„„ 
(
„„ 
veriTablosu
„„ 
)
„„  
;
„„  !
}
…… 	
public
‡‡ 
SqlDataReader
‡‡ 
GetById
‡‡ $
(
‡‡$ %
)
‡‡% &
{
ˆˆ 	
comm
‰‰ 
.
‰‰ 
CommandText
‰‰ 
=
‰‰ 
spAd
‰‰ #
;
‰‰# $
comm
ŠŠ 
.
ŠŠ 
CommandType
ŠŠ 
=
ŠŠ 
System
ŠŠ %
.
ŠŠ% &
Data
ŠŠ& *
.
ŠŠ* +
CommandType
ŠŠ+ 6
.
ŠŠ6 7
StoredProcedure
ŠŠ7 F
;
ŠŠF G
SqlDataReader
‹‹ 
dr
‹‹ 
=
‹‹ 
comm
‹‹ #
.
‹‹# $
ExecuteReader
‹‹$ 1
(
‹‹1 2
)
‹‹2 3
;
‹‹3 4
return
ŒŒ 
dr
ŒŒ 
;
ŒŒ 
}
 	
public
ŽŽ 
void
ŽŽ 
AddSqlParameter
ŽŽ #
(
ŽŽ# $
string
ŽŽ$ *
parameterName
ŽŽ+ 8
,
ŽŽ8 9
object
ŽŽ: @
parameterValue
ŽŽA O
)
ŽŽO P
{
 	
sqlParameters_
‘‘ 
.
‘‘ 
Add
‘‘ 
(
‘‘ 
new
‘‘ "
SqlParameter
‘‘# /
(
‘‘/ 0
parameterName
‘‘0 =
,
‘‘= >
parameterValue
‘‘? M
)
‘‘M N
)
‘‘N O
;
‘‘O P
}
’’ 	
public
““ 
void
““ !
DeleteSqlParameters
““ '
(
““' (
)
““( )
{
”” 	
if
•• 
(
•• 
comm
•• 
.
•• 

Parameters
•• 
.
••  
Count
••  %
>
••& '
$num
••( )
)
••) *
{
–– 
comm
—— 
.
—— 

Parameters
—— 
.
——  
Clear
——  %
(
——% &
)
——& '
;
——' (
}
˜˜ 
}
™™ 	
}
šš 
}›› 