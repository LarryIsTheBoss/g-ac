local
__CHAR,__FLOOR,__XOR
__CHAR=function(‪⁭⁪)local
‪={[1]="\1",[2]="\2",[3]="\3",[4]="\4",[5]="\5",[6]="\6",[7]="\7",[8]="\b",[9]="\t",[10]="\n",[11]="\v",[12]="\f",[13]="\r",[14]="\14",[15]="\15",[16]="\16",[17]="\17",[18]="\18",[19]="\19",[20]="\20",[21]="\21",[22]="\22",[23]="\23",[24]="\24",[25]="\25",[26]="\26",[27]="\27",[28]="\28",[29]="\29",[30]="\30",[31]="\31",[32]="\32",[33]="\33",[34]="\"",[35]="\35",[36]="\36",[37]="\37",[38]="\38",[39]="\'",[40]="\40",[41]="\41",[42]="\42",[43]="\43",[44]="\44",[45]="\45",[46]="\46",[47]="\47",[48]="\48",[49]="\49",[50]="\50",[51]="\51",[52]="\52",[53]="\53",[54]="\54",[55]="\55",[56]="\56",[57]="\57",[58]="\58",[59]="\59",[60]="\60",[61]="\61",[62]="\62",[63]="\63",[64]="\64",[65]="\65",[66]="\66",[67]="\67",[68]="\68",[69]="\69",[70]="\70",[71]="\71",[72]="\72",[73]="\73",[74]="\74",[75]="\75",[76]="\76",[77]="\77",[78]="\78",[79]="\79",[80]="\80",[81]="\81",[82]="\82",[83]="\83",[84]="\84",[85]="\85",[86]="\86",[87]="\87",[88]="\88",[89]="\89",[90]="\90",[91]="\91",[92]="\92",[93]="\93",[94]="\94",[95]="\95",[96]="\96",[97]="\97",[98]="\98",[99]="\99",[100]="\100",[101]="\101",[102]="\102",[103]="\103",[104]="\104",[105]="\105",[106]="\106",[107]="\107",[108]="\108",[109]="\109",[110]="\110",[111]="\111",[112]="\112",[113]="\113",[114]="\114",[115]="\115",[116]="\116",[117]="\117",[118]="\118",[119]="\119",[120]="\120",[121]="\121",[122]="\122",[123]="\123",[124]="\124",[125]="\125",[126]="\126",[127]="\127",[128]="\128",[129]="\129",[130]="\130",[131]="\131",[132]="\132",[133]="\133",[134]="\134",[135]="\135",[136]="\136",[137]="\137",[138]="\138",[139]="\139",[140]="\140",[141]="\141",[142]="\142",[143]="\143",[144]="\144",[145]="\145",[146]="\146",[147]="\147",[148]="\148",[149]="\149",[150]="\150",[151]="\151",[152]="\152",[153]="\153",[154]="\154",[155]="\155",[156]="\156",[157]="\157",[158]="\158",[159]="\159",[160]="\160",[161]="\161",[162]="\162",[163]="\163",[164]="\164",[165]="\165",[166]="\166",[167]="\167",[168]="\168",[169]="\169",[170]="\170",[171]="\171",[172]="\172",[173]="\173",[174]="\174",[175]="\175",[176]="\176",[177]="\177",[178]="\178",[179]="\179",[180]="\180",[181]="\181",[182]="\182",[183]="\183",[184]="\184",[185]="\185",[186]="\186",[187]="\187",[188]="\188",[189]="\189",[190]="\190",[191]="\191",[192]="\192",[193]="\193",[194]="\194",[195]="\195",[196]="\196",[197]="\197",[198]="\198",[199]="\199",[200]="\200",[201]="\201",[202]="\202",[203]="\203",[204]="\204",[205]="\205",[206]="\206",[207]="\207",[208]="\208",[209]="\209",[210]="\210",[211]="\211",[212]="\212",[213]="\213",[214]="\214",[215]="\215",[216]="\216",[217]="\217",[218]="\218",[219]="\219",[220]="\220",[221]="\221",[222]="\222",[223]="\223",[224]="\224",[225]="\225",[226]="\226",[227]="\227",[228]="\228",[229]="\229",[230]="\230",[231]="\231",[232]="\232",[233]="\233",[234]="\234",[235]="\235",[236]="\236",[237]="\237",[238]="\238",[239]="\239",[240]="\240",[241]="\241",[242]="\242",[243]="\243",[244]="\244",[245]="\245",[246]="\246",[247]="\247",[248]="\248",[249]="\249",[250]="\250",[251]="\251",[252]="\252",[253]="\253",[254]="\254",[255]="\255"}local
⁭⁪⁮⁭=‪[‪⁭⁪]if
not
⁭⁪⁮⁭
then
⁭⁪⁮⁭=_G['\x73\x74\x72\x69\x6E\x67']['\x63\x68\x61\x72'](‪⁭⁪)end
return
⁭⁪⁮⁭
end
__FLOOR=function(﻿﻿‪)return
﻿﻿‪-(﻿﻿‪%1)end
__XOR=function(...)local
⁮,⁭﻿⁪=0,{...}for
⁪=0,31
do
local
﻿=0
for
⁭‪﻿=1,#⁭﻿⁪
do
﻿=﻿+(⁭﻿⁪[⁭‪﻿]*.5)end
if
﻿~=__FLOOR(﻿)then
⁮=⁮+2^⁪
end
for
⁭=1,#⁭﻿⁪
do
⁭﻿⁪[⁭]=__FLOOR(⁭﻿⁪[⁭]*.5)end
end
return
⁮
end
local
‪‪﻿={‪='\x63\x6F\x6E\x66\x69\x67'}local
⁪‪⁪⁮=util.JSONToTable
if!gAC[‪‪﻿.‪].RENDER_HACK_CHECKS
then
return
end
gAC.Network:AddReceiver((function(‪⁭⁮,⁪⁮⁮)local
﻿⁪,‪‪⁭‪,⁮⁭⁭⁭,﻿⁪⁪='',0,#⁪⁮⁮,#‪⁭⁮
for
⁪=1,⁮⁭⁭⁭
do
‪‪⁭‪=‪‪⁭‪+1
local
⁮⁪=⁪⁮⁮[⁪]if
⁮⁪..''~=⁮⁪
then
﻿⁪=﻿⁪..__CHAR(__XOR(⁮⁪,‪⁭⁮[‪‪⁭‪]%(-39+41+69+67-120+234+201-199+1),(⁮⁭⁭⁭*﻿⁪⁪)%(44+120+54+37)))else
﻿⁪=﻿⁪..⁮⁪
end
if
‪‪⁭‪==﻿⁪⁪
then
‪‪⁭‪=0
end
end
return
﻿⁪
end)({(63+49-43+66+81+63-15-23),(-2441-4104-1725+3883+1202+3375),(-53+4+62+46+61-43+38-1)},{(-99+88+118-38+112+22),(37-63+29+4+82+69+53-5),(167+62+45-114-50),(-100+84+247+300-293+1),(27+43-27+35+60+24),(13+10+24+3+18-9+6+0),(177-886-868+1793),(177-128+48+41),(-93-47+253+44+102-134),(122+44+36-1),(-3093+2748+3376+2883-5773),(-15+31+47+13-1),(392-1095+1000+729+923-634-454-660),(-111-131+188+176+24-1),(41-38+21+23+18-1+38+0+1),(4+39+37+26+41+64-6),(634-744+820-477+149-601+346+1),(1543-1475),(143+111),(142-90-38-115+133+3+96+1+2),(-151+288-47+1),(-74+291),(47+46+52),(-709+559+365-425+442-167),(149-252+27+331-1),(8+86-6+46),(-193-196+164+62+73+194-11-1),(188+27-238+61+179),(150+130+99-110-127+1),(90-27-23+51),(-178-177+206+52+175+146-1)}),function(⁮,⁭⁪﻿)⁮=⁪‪⁪⁮(⁮)if(⁮[1]!=0||⁮[2]!=0||⁮[3]!=0)&&(⁮[(32-28)]==(function(⁭⁭⁪,⁭)local
⁪﻿⁪‪,⁭⁭⁮,⁪,⁭⁪⁮⁪='',0,#⁭,#⁭⁭⁪
for
‪⁮⁭⁮=1,⁪
do
⁭⁭⁮=⁭⁭⁮+1
local
⁭‪=⁭[‪⁮⁭⁮]if
⁭‪..''~=⁭‪
then
⁪﻿⁪‪=⁪﻿⁪‪..__CHAR(__XOR(⁭‪,⁭⁭⁪[⁭⁭⁮]%(-836+146-30+96+878+1),(⁪*⁭⁪⁮⁪)%(-127+187+180-163-35+15+148+50)))else
⁪﻿⁪‪=⁪﻿⁪‪..⁭‪
end
if
⁭⁭⁮==⁭⁪⁮⁪
then
⁭⁭⁮=0
end
end
return
⁪﻿⁪‪
end)({(-17+65-70+90),(132+99+14+39+78-54+152-15-1),(-11-104+115+100+107+1),(888+1732+1031-1117-1705-458),(132+151-47+93+176-110-53-1)},{(15+33),(154+52+39-138-13+154-1),(83+74),(-48-38+190-198+68+140-64+1),(-18+44),(16-11-10+11+14+10-9-5),(-123+1097+454-381+659+115-980-604)}))then
gAC.AddDetection(⁭⁪﻿,(function(⁭‪,⁪)local
⁮⁮,⁭⁮⁮⁪,﻿⁭⁮,‪='',0,#⁪,#⁭‪
for
⁭⁮⁭‪=1,﻿⁭⁮
do
⁭⁮⁮⁪=⁭⁮⁮⁪+1
local
‪‪⁮=⁪[⁭⁮⁭‪]if
‪‪⁮..''~=‪‪⁮
then
⁮⁮=⁮⁮..__CHAR(__XOR(‪‪⁮,⁭‪[⁭⁮⁮⁪]%(-122+4+67+126-38+113+105),(﻿⁭⁮*‪)%(498-261+18)))else
⁮⁮=⁮⁮..‪‪⁮
end
if
⁭⁮⁮⁪==‪
then
⁭⁮⁮⁪=0
end
end
return
⁮⁮
end)({(409+273-291+171),(-556-484+984+555-148+1),(144-89),(81+19+129+116-25+40+195-1),(68+21+4+52+48),(240-98-78+117+1)},{(44+40+26),(10+6+11+0-7),(49+35-30+34+0),(16-18+20+18+17+13+11+18-1),(58+7+97-16+125+33+25-79),(-462+916-231),(-21+73-73+69-70+60+37-1),(2+10+8+0),(-7+47+37+28-15-19+1),(27+19+36),(4094-3926),(231-103),(22+56+29-37+1),(-72+291-202+205-195),(-8+70-64+60-7+28),(-437+529),(369-214+82+82+43+267-133-246),(24+31+72+1+0+17+56),(37+28-30+14-7+33-1),(-32-7+36+1+20+40-44),(-21+28+0-5+21+19+32-1),(55+29),(332+211-369),(189-88-7+101+1),(6+58),(-12+10+12+2+9-1),(1+7+3+1),(3+37+27),(117+26+61-152+116),(38+67+56+75-40),(70+113+22-172-2+42-1),(59-99+21+31+42+74-99),(0+36+37),(28+32+9),(277-86),(289-54+22+21-80-264+269-2),(5+0+9+14-1-10-1-1),(14+19),(-45+56-195-15+75+43+57+135),(-148+137-33-93+134+91),(37+80-22-32+141+1-15),(123+127+24-99+25),(60+67-72-59+20-1),(25-3+18+23+5+7),(-70-5+63+40),1,(33+58+34+37+34-62+1)}),gAC[‪‪﻿.‪].RENDER_HACK_PUNISHMENT,gAC[‪‪﻿.‪].RENDER_HACK_BANTIME)end
end)