babamodz = gg.alert("😈𝗕𝗔𝗕𝗔𝗠𝗢𝗗𝗭 𝗢𝗙𝗙𝗜𝗖𝗜𝗔𝗟😈\n\n🔴If You Are New User Please Verify Your Key\n\n🔴If You Have Verified Your Key Once You Can Directly Click On Login", "🌹Login", "🥀Verify Key", "Exit")
if babamodz == 1 then
local file = io.open("/storage/emulated/0/SpecialKey.lua", "r")
local text = file:read("*a") -- The *a text makes it read the contents of the whole file.
LOGIN = 'http://babagaming.mywebcommunity.org/admin/signin_key.php'
L = gg.makeRequest(LOGIN,nil,text).content
if not L then gg.alert('Please Allow Internet Connection...') else
 pcall(load(L))  
end
end
if babamodz ==2 then 
VER = 'http://babagaming.mywebcommunity.org/admin/verify_keys.php'
verify = gg.prompt({'ⓋⒺⓇⒾⒻⓎ ⓎⓄⓊⓇ ⓀⒺⓎ'},verify,{'text'})
gg.toast('Please Wait...')
if verify == nil then return end
if not verify then return end
IDV = verify[1]
if IDV == '' then--1
gg.alert('Log-In Field Must Not Be Empty') 
else
VV = gg.makeRequest(VER,nil,IDV).content
if not VV then gg.alert('[SCRIPT] Allow Internet Connection...') else
io.open("/storage/emulated/0/SpecialKey.lua", "w"):write(IDV)
pcall(load(VV))
gg.alert("Please Click On Login If Your Key Has Been Verified Successfully")
end
end
end
if babamodz ==3 then
os.exit()
end