local base_char,keywords=152,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
  function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[’ bit==₯  bit32~=₯ ͺ
bitfunc=bit32

bitfunc=bit

€ e={
verbose=,
info=,
errro=«,
}
€ ‘ u(...)
’ e.verbose ͺ print("[verbose]",...)

€ ‘ c(...)
’ e.info ͺ print("[verbose]",...)

€ ‘ t(...)
’ e.errro ͺ print("[verbose]",...)

‘ cmd3dcode_pipe_showlog(a,t)
’ a==₯ ͺ a="verbose"
’ t==₯ ͺ t=« 
e[a]=t

€ f=3
€ e=""
€ l=-1
€ d=-1
€ i=-1
€ t=0
€ n=0
€ o=0
€ a=0
€ s=0
€ r=0
€ ‘ m()
o=0
a=0

€ ‘ h()
e=""
l=-1
d=-1
i=-1
t=0
n=0
r=0
s=0
m()

h()
€ ‘ w(a)
u("receive",(n+1).."/"..t,"byte",a,string.char(a))
’ l<0 ͺ
l=a
©
 d<0 ͺ
d=a
i=l
t=d
c("cmd id",i,"data len",t)
’ t<1 ͺ
h()

©

e=e..string.char(a)
n=n+1
’ n>=t ͺ
€ t=string.byte(e:sub(1,1))
€ t=ThreeDimensionsCode_SafePipe_CmdHandles[t]
€ a
’ t ͺ
a=e:sub(2)
t=ThreeDimensionsCode_SafePipe_CmdHandles[t]

€ o=e:find(":")
’ o ͺ
€ i=e:sub(1,o-1)
a=e:sub(o+1)
t=ThreeDimensionsCode_SafePipe_CmdHandles[i]


’ t ͺ
t(i,a)

c("receive over, time",GetTime()-s,"cmd id",i)
c(e)
h()
©


€ ‘ i(t)
€ e=GetTime()
’ r==0 ͺ
s=e
u("first bit come in")

’ e-r>f ͺ
u("safe pipe θΆζΆε³ι­")
h()
s=e


r=e
’ t>0 ͺ
o=bitfunc.bor(o,bitfunc.lshift(t,7-a))

a=a+1
’ a>=8 ͺ
w(o)
m(o)


‘ ThreeDimensionsCode_Savepipe_Yin()
i(0)

‘ ThreeDimensionsCode_Savepipe_Yang()
i(1)

ThreeDimensionsCode_SafePipe_CmdHandles={
"newsize",
"script",
"ping",
"ir",
"iu",
"id",
newsize=‘(e,t)
€ e=t:find("x")
’ e ͺ
€ e=t:sub(1,e-1)
e=tonumber(e)
’ e ͺ
’ ThreeDimensionsCode_Blackboard ͺ
ThreeDimensionsCode_Blackboard.setReadScreenWidth(e)



,
script=‘(t,e)
loadstring(e)()
,
}
]===], '@../!!!163UI.3dcodecmd!!!/savepipe.lua'))()