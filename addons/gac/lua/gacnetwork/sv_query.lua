local
a={a='Run',b='FileQuery',c='FileRelation',d='NetworkReceivers',e='Network',f='gAC_NonNetClientLoaded',g='NonNetworkedPlayers',h='Encoder',i='DBGPrint',j='Decoder_Var',k='DRMAddCLCode',l='Encode',m='Global_Decoder',n='Decoder_Get',o='Decoder_Func',p='Decoder_Undo',q='DRM_LoadIndexes',r='LICENSE',s='config',t='Add',u='Print'}local
b=SortedPairs
local
c=file.Exists
local
d=file.Read
local
e=hook[a.t]local
f=hook[a.a]local
g=pairs
local
h=string.Replace
local
i=string.match
local
j=util.Compress
local
k=util.JSONToTable
local
l=http.Post
local
m=gmod.GetGamemode
local
n=debug.getinfo
local
o=debug.getupvalue
local
p=require
local
q=string.sub
local
r=string.gsub
local
s=print
local
t=tostring
local
u=xpcall
local
v=debug.traceback
local
w=string.byte
local
x=GetHostName
local
y=(SERVER
and
util.AddNetworkString
or
nil)local
z=net.Receive
local
A=net.Start
local
B=net.WriteData
local
C=net.Send
local
D=hook[a.a]local
E=timer.Simple
local
F=hook.Remove
gAC[a.b]=gAC[a.b]or{}gAC[a.c]=gAC[a.c]or{}gAC[a.d]=gAC[a.d]or{}if!gAC[a.e]then
gAC[a.e]={}gAC[a.h]={}function
gAC.Network:AddReceiver(L,M)gAC[a.d][#gAC[a.d]+1]={L,M}end
local
I=math.Round
local
J=string.char
local
K=math.random
function
gAC.Encoder.stringrandom(L)local
M=""for
N=1,L
do
local
O=I(K(1,4))if
O==1
then
M=M..J(K(97,122))elseif
O==2
then
M=M..J(K(65,90))elseif
O==3
then
M=M..J(K(49,57))end
end
return
M
end
gAC[a.e][a.g]={}y("gAC.PlayerInit")z("gAC.PlayerInit",function(L,M)if
M.gAC_ClientLoaded
then
return
end
if
M[a.f]then
return
end
M[a.f]=!!1
gAC[a.e][a.g][#gAC[a.e][a.g]+1]=M:SteamID64()end)end
function
gAC.AddQuery(I)local
J=I
if
i(i(I,"^.+(%..+)$"),".json")then
return
end
I=d(I,"LUA")local
K=#gAC[a.b]+1
gAC[a.b][K]=I
gAC[a.c][K]=J
gAC[a.i]("Added file "..J.." to file query")end
local
G=-1
e("gAC.IncludesLoaded","Decoder_Unloader",function()if
G>0
then
gAC[a.b][#gAC[a.b]]=nil
G=0
end
for
I=1,#gAC[a.b]do
local
J=gAC[a.b][I]local
K=gAC[a.c][I]local
L=i(K,"^(.+)%..+$")..'.json'if
c(L,"LUA")then
local
M=k(d(L,"LUA"))for
N,O
in
g(M)do
J=h(J,N,gAC[a.h][a.l](O,gAC[a.e][a.m]))end
J=h(J,"__DECODER_STR__","_G"..gAC[a.e][a.j].."('"..gAC[a.e][a.n].."')")J=h(J,"__DECODER_FUNC__",gAC[a.h][a.o])gAC[a.i]('Encoded local file "'..K..'"')end
gAC[a.b][I]=j(J)gAC[a.i]('Added compressed file "'..K..'" to file query')end
if#gAC[a.b]>0
then
gAC[a.b][#gAC[a.b]+1]=j("_G"..gAC[a.e][a.j].." = _G"..gAC[a.e][a.j].."('"..gAC[a.e][a.p].."')")G=#gAC[a.b]end
for
I=1,#gAC[a.d]do
local
J=gAC[a.d][I]gAC[a.e]:AddReceiver(J[1],J[2])end
gAC[a.d]={}end)do
local
I,J='https://glorifieddrm.net/main.php','gac'local
function
K(ab,bb)local
cb=hook.GetTable()if
cb[ab]and
cb[ab][bb]then
F(ab,bb)cb[ab][bb]=nil
end
end
local
L,M=!1,function()end
local
N=function(ab)if
ab==nil
then
return!!1
end
local
bb=n(ab)if(bb.what=='C'and
bb.source=='=[C]'and
bb.short_src=='[C]'and
bb.nups==0
and
bb.linedefined==-1
and
bb.lastlinedefined==-1
and
bb.currentline==-1
and
o(bb.func,1)==nil)then
return!!1
else
return!1
end
end
local
O=function(ab)p(ab)if
N(RunString)==!!1
and
N(RunStringG)==!!1
then
local
bb=RunStringG
M=function(cb,db)return
u(bb,v,cb,db)end
end
RunStringG=nil
end
local
P={'','==','='}local
Q='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'local
function
R(ab)local
bb,cb='',w(ab)for
db=8,1,-1
do
bb=bb..(cb%2^db-cb%2^(db-1)>0
and'1'or'0')end
return
bb
end
local
function
S(ab)if(#ab<6)then
return''end
local
bb=0
for
cb=1,6
do
bb=bb+(q(ab,cb,cb)=='1'and
2^(6-cb)or
0)end
return
q(Q,bb+1,bb+1)end
local
function
T(ab)return
r(r(ab,'.',R)..'0000','%d%d%d?%d?%d?%d?',S)..P[#ab%3+1]end
local
U={}for
ab,bb
in
g(gAC[a.q])do
U[ab]=0
end
local
function
V()for
ab,bb
in
g(U)do
if
bb~=0
and(bb<2
or
bb==4)then
return!1
end
end
return!!1
end
local
W,X={},{}local
function
Y()if!V()then
return
end
if
G>0
then
gAC[a.b][#gAC[a.b]]=nil
G=0
end
for
ab=1,#X
do
local
bb=X[ab]local
cb,db=M(bb[1],bb[2])if
cb==!1
then
s("[GlorifiedDRM] Execution error for file '"..FileIndex.."'")s("[GlorifiedDRM] Recommend contacting the developers on this...\n"..db)U[bb[2]]=5
else
U[bb[2]]=3
end
X[ab]=nil
end
for
ab=1,#W
do
local
bb=W[ab]local
cb=nil
do
gAC[a.k]=function(fb,gb)cb={fb,k(gb)}end
local
db,eb=M(bb[1],bb[2])gAC[a.k]=nil
if
db==!1
then
s("[GlorifiedDRM] Execution error for file '"..FileIndex.."'")s("[GlorifiedDRM] Recommend contacting the developers on this...\n"..eb)U[bb[2]]=5
cb=nil
else
U[bb[2]]=3
end
end
if
cb~=nil
then
local
db,eb=cb[1],cb[2]if
eb~=!1
then
for
fb,gb
in
g(eb)do
db=h(db,fb,gAC[a.h][a.l](gb,gAC[a.e][a.m]))end
db=h(db,"__DECODER_STR__","_G"..gAC[a.e][a.j].."('"..gAC[a.e][a.n].."')")db=h(db,"__DECODER_FUNC__",gAC[a.h][a.o])end
gAC[a.b][#gAC[a.b]+1]=j(db)gAC[a.i]('Encoded DRM file "'..bb[2]..'"')end
W[ab]=nil
end
if
V()then
if#gAC[a.b]>0
then
gAC[a.b][#gAC[a.b]+1]=j("_G"..gAC[a.e][a.j].." = _G"..gAC[a.e][a.j].."('"..gAC[a.e][a.p].."')")G=#gAC[a.b]end
for
ab=1,#gAC[a.d]do
local
bb=gAC[a.d][ab]gAC[a.e]:AddReceiver(bb[1],bb[2])end
gAC[a.d]={}gAC[a.u]('DRM files has initialized!')D('gAC.DRMInitalized',!!1)end
end
e("gAC.IncludesLoaded","gAC.DidDRMInitalized",function()if
V()then
D('gAC.DRMInitalized',!1)end
end)local
Z={}function
gAC.DRMAdd(ab,bb)local
cb=gAC[a.q][bb]if!cb
then
return
end
if
not
L
then
O(J)L=!!1
end
local
db=!1
local
function
eb(fb)if
db
and
not
fb
then
return
end
db=!!1
K(ab,bb)U[bb]=1
l(I,{license=gAC[a.s][a.r],file_ID=cb,addon="GlorifiedAnticheat"},function(gb)if
q(gb,1,4)=='ERR:'then
s("[GlorifiedDRM] File request failure for '"..cb.."'")s("[GlorifiedDRM] To prevent the system from recursive errors, the DRM has halted.")s("[GlorifiedDRM] ERR: "..gb)U[bb]=4
else
if
Z[cb]then
s("[GlorifiedDRM] File '"..cb.."' received after "..Z[cb].."/4 attempts")end
X[#X+1]={gb,bb}U[bb]=2
Y()end
end,function(gb)if
not
Z[cb]then
Z[cb]=1
else
Z[cb]=Z[cb]+1
end
if
Z[cb]and
Z[cb]>=4
then
s("[GlorifiedDRM] File request failure for '"..cb.."' all attempts failed.")s("[GlorifiedDRM] To prevent the system from recursive errors, the DRM has halted.")U[bb]=4
Y()else
s("[GlorifiedDRM] File request failure for '"..cb.."' retrying in 3s "..Z[cb].."/4")E(3,function()eb(!!1)end)end
s("[GlorifiedDRM] ERR: '"..gb.."'")end)end
e(ab,bb,eb)end
function
gAC.DRMAddClient(ab,bb)local
cb=gAC[a.q][bb]if!cb
then
return
end
if
not
L
then
O(J)L=!!1
end
local
db=!1
local
function
eb(fb)if
db
and
not
fb
then
return
end
db=!!1
K(ab,bb)U[bb]=1
l(I,{license=gAC[a.s][a.r],file_ID=cb,addon="GlorifiedAnticheat"},function(gb)if
q(gb,1,4)=='ERR:'then
s("[GlorifiedDRM] File request failure for '"..cb.."'")s("[GlorifiedDRM] To prevent the system from recursive errors, the DRM has halted.")s("[GlorifiedDRM] ERR: "..gb)U[bb]=4
else
if
Z[cb]then
s("[GlorifiedDRM] File '"..cb.."' received after "..Z[cb].."/4 attempts")end
W[#W+1]={gb,bb}U[bb]=2
end
Y()end,function(gb)if
not
Z[cb]then
Z[cb]=1
else
Z[cb]=Z[cb]+1
end
if
Z[cb]and
Z[cb]>=4
then
s("[GlorifiedDRM] File request failure for '"..cb.."' all attempts failed.")s("[GlorifiedDRM] To prevent the system from recursive errors, the DRM has halted.")U[bb]=4
Y()else
s("[GlorifiedDRM] File request failure for '"..cb.."' retrying in 3s "..Z[cb].."/4")E(3,function()eb(!!1)end)end
s("[GlorifiedDRM] ERR: '"..gb.."'")end)end
e(ab,bb,eb)end
concommand[a.t]('drm_filestatus',function()gAC[a.u]('GlorifiedDRM file status')for
ab,bb
in
g(U)do
local
cb=""if
bb==0
then
cb="Not Requested"end
if
bb==1
then
cb="Not Received"end
if
bb==2
then
cb="Finializing"end
if
bb==3
then
cb="Executed"end
if
bb==4
then
cb="Request Error"end
if
bb==5
then
cb="Execution Error"end
s('[GlorifiedDRM] index "'..ab.."' - "..cb)end
end)end
e("gAC.ClientLoaded","SendFiles",function(I)if#gAC[a.b]>0
then
for
J,K
in
b(gAC[a.b])do
if
gAC[a.b][J]==nil
then
continue
end
gAC[a.e]:Send("LoadPayload",gAC[a.b][J],I,!!1)end
D("gAC.CLFilesLoaded",I)end
end)local
H=!1
e('PlayerInitialSpawn','DidGacLoad?',function(I)if
gAC[a.e]and
gAC[a.e].ReceiveCount
then
return
end
if
H
then
return
end
gAC[a.u]('WARNING, gAC networking did not initialize in time.')gAC[a.u]('Chances are that something is wrong with your license key.')gAC[a.u]('Please contact the developers of gAC to resolve this.')H=!!1
end)