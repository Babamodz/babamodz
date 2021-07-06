function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end
function setvalue(address,flags,value) PS('Modify address value (address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "open失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "open失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "open,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "open失败") end end end end --@Saifu_hkc
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
on=" [ON]"
off=" [OFF]"
ak2 = off
ak3 = off
ak4 = off
ak5 = off
ak6 = off
ak7 = off
ak8 = off
ak9 = off
ak10 = off
ak11 = off
ak12 = off
ak13 = off
ak14 = off
ak15 = off
ak16 = off
ak17 = off
ak18 = off
ak19 = off
ak20 = off
ak21 = off
function HOME()
gg.setVisible(false)
MN = gg.multiChoice({
"🛡️ 𝐁𝐘𝐏𝐀𝐒𝐒 𝐀𝐍𝐓𝐈𝐒𝐀𝐅𝐄 🛡️",
"💢𝐖𝐀𝐋𝐋𝐇𝐀𝐂𝐊 𝐌𝐄𝐍𝐔💢",
"♦️𝐀𝐈𝐌𝐁𝐎𝐓180°"..ak2,--2
"♦️𝐀𝐈𝐌𝐁𝐎𝐓360°"..ak3,--
"♦️𝐀𝐈𝐌𝐋𝐎𝐂𝐊 𝐕1"..ak4,--4
"♦️𝐀𝐍𝐓𝐄𝐍𝐀 𝐏𝐑𝐎"..ak5,--
"♦️𝐍𝐎 𝐑𝐄𝐂𝐎𝐈𝐋++"..ak6,--3
"♦️𝐀𝐍𝐓𝐈𝐒𝐇𝐀𝐊𝐄 😜"..ak7,--4
"♦️𝐌𝐀𝐆𝐈𝐂 𝐁𝐔𝐋𝐋𝐄𝐓 𝐒𝐔𝐏𝐄𝐑"..ak8,--6
"♦️𝐄𝐒𝐏 𝐂𝐈𝐑𝐂𝐋𝐄 (𝐒𝐂𝐎𝐏𝐄-𝐈𝐍)"..ak9,--6
"♦️𝐄𝐒𝐏 𝐂𝐈𝐑𝐂𝐋𝐄 (𝐌𝐎𝐕𝐈𝐍𝐆)"..ak10,--7
"♦️𝐌𝐄𝐃𝐈𝐔𝐌 𝐒𝐏𝐄𝐄𝐃"..ak11,--8
"♦️𝐒𝐏𝐄𝐄𝐃 𝐅𝐈𝐗 𝐂𝐀𝐑 𝐆𝐋𝐈𝐂𝐇"..ak21,--8
"♦️𝐁𝐋𝐀𝐂𝐊+𝐖𝐇𝐈𝐓𝐄 𝐁𝐎𝐃𝐘"..ak12,--9
"♦️𝐈𝐏𝐀𝐃 𝐕𝐈𝐄𝐖+"..ak13,--10
"♦️𝐀𝐋𝐋 𝐂𝐀𝐑 𝐉𝐔𝐌𝐏+"..ak14,--13
"♦️𝐀𝐋𝐋 𝐕𝐇𝐈𝐂𝐋𝐄 𝐒𝐏𝐄𝐄𝐃"..ak15,--14
"♦️𝐒𝐔𝐏𝐄𝐑 𝐅𝐀𝐒𝐓 𝐋𝐀𝐍𝐃𝐈𝐍𝐆"..ak16,--15
"♦️𝐁𝐋𝐀𝐂𝐊 𝐒𝐊𝐘+"..ak17,--16
"♦️𝐍𝐎 𝐆𝐑𝐀𝐒𝐒 & 𝐓𝐑𝐄𝐄"..ak18,--
"♦️𝐑𝐄𝐌𝐎𝐕𝐄 𝐅𝐎𝐆"..ak19,--17
"♦️𝐒𝐌𝐀𝐋𝐋 𝐂𝐑𝐎𝐒𝐒𝐇𝐀𝐈𝐑"..ak20,--
"°°°~~~EXIT~~~°°°",
},nil," 『 ✔️ ʜɪ ᴍʏ ᴘᴀɪᴅ sᴜʙsᴄʀɪʙᴇʀ ᴜsᴇ ᴛʜɪs ɪɴ ᴍᴀɪɴ ɪᴅ ɴᴏ ʙᴀɴ ғᴜʟʟʏ sᴀғᴇ ᴘʀᴏᴛᴇᴄᴛɪᴏɴ ʙʏ ʙᴀʙᴀᴍᴏᴅᴢ [ 𝙿𝚄𝙱𝙶 𝙼𝙾𝙱𝙸𝙻𝙴 𝙻𝙸𝚃𝙴 𝚅𝙴𝚁𝚂𝙸𝙾𝙽 0.21.0 ]✔️』")
if MN == nil then
else
if MN[1] == true then Bypass()end
if MN[2] == true then wallhackmenu()end

if MN[3] == true then aimbot180()end
if MN[4] == true then aimbot360()end
if MN[5] == true then Aimlock()end
if MN[6] == true then antenapro()end
if MN[7] == true then recoil()end
if MN[8] == true then antishake()end
if MN[9] == true then magic()end
if MN[10] == true then smallespstable()end
if MN[11] == true then smallespm()end
if MN[12] == true then high()end--ak8
if MN[13] == true then FixspdD()end
if MN[14] == true then blackbody()end
if MN[15] == true then ipadv1()end
if MN[16] == true then jumpcar()end
if MN[17] == true then Allcarspd()end
if MN[18] == true then Spdlanding()end
if MN[19] == true then blacksky()end
if MN[20] == true then Ngrasstree()end
if MN[21] == true then Nofog()end
if MN[22] == true then Smallcross()end
if MN[23] == true then EXIT()end
end
PUBGMH = -1
end
function Bypass()
MENULITE11 = gg.choice({
"┏[🔊] 𝗣𝗥𝗢𝗧𝗘𝗖𝗧𝗜𝗢𝗡 𝗩5』",
"┏[🔊] 10𝗠𝗜𝗡 𝗕𝗔𝗡 𝗙𝗜𝗫』",
"┏[🔊] 3𝗥𝗗 𝗣𝗔𝗥𝗧𝗬 𝗙𝗜𝗫』",
"┏[🔊] 𝗕𝗟𝗢𝗖𝗞 𝗥𝗘𝗣𝗢𝗥𝗧𝗦』",
"┏[🔊] 𝗟𝗢𝗚𝗦 𝗖𝗟𝗘𝗔𝗡𝗘𝗥 [𝗘𝗩𝗘𝗥𝗬 𝗠𝗔𝗧𝗖𝗛]』",
"➖[🄱🄰🄲🄺]➖"
},nil,"🔑𝐔𝐒𝐄 𝐋𝐎𝐁𝐁𝐘 / 𝐆𝐀𝐌𝐄")

if MENULITE11 == nil then
  else
    if MENULITE11 == 1 then
      Protectv4()
    end
    if MENULITE11 == 2 then
      minfix()
    end
    if MENULITE11 == 3 then
      Thirdfix()
    end
    if MENULITE11 == 4 then
      minfixV2()
    end
    if MENULITE11 == 5 then
      Logsclean()
    end
    if MENULITE11 == 6 then
      HOME()
    end
  end
  PUBGMH = -1
  end

function Protectv4()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"7497068;301990404"', gg.TYPE_DWORD)
gg.sleep(1000)
gg.refineNumber('"7497068"', gg.TYPE_DWORD)
gg.getResults(131330)
gg.editAll("131842", gg.TYPE_DWORD)

gg.clearResults()
gg.processResume()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"7497068"', gg.TYPE_DWORD)
gg.sleep(1000)
gg.refineNumber('"7497068"', gg.TYPE_DWORD)
gg.getResults(131330)
gg.editAll("131842", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"29793"', gg.TYPE_DWORD)
gg.sleep(1000)
gg.refineNumber('"29793"', gg.TYPE_DWORD)
gg.getResults(131330)
gg.editAll("131842", gg.TYPE_DWORD)
gg.clearResults()


gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"29793"', gg.TYPE_DWORD)
gg.sleep(1000)
gg.refineNumber('"29793"', gg.TYPE_DWORD)
gg.getResults(131330)
gg.editAll("131842", gg.TYPE_DWORD)
gg.clearResults()


gg.clearResults()
gg.processResume()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"29795"', gg.TYPE_DWORD)
gg.sleep(1000)
gg.refineNumber('"29795"', gg.TYPE_DWORD)
gg.getResults(131330)
gg.editAll("131842", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"909391408;808923191"', gg.TYPE_DWORD)

gg.getResults(131330)
gg.editAll("131842", gg.TYPE_DWORD)
gg.clearResults()


gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"4805998"', gg.TYPE_DWORD)
gg.sleep(1000)
gg.refineNumber('"4805998"', gg.TYPE_DWORD)
gg.getResults(131330)
gg.editAll("131842", gg.TYPE_DWORD)
gg.clearResults()


end




function Logsclean()
os.remove("/storage/emulated/0/tencent")
gg.alert("US")
os.remove("/storage/emulated/0/*.")

os.remove("/storage/emulated/0/crash")
os.remove("/storage/emulated/0/*.log")
os.remove("/storage/emulated/0/*.txt")

  os.remove("src/main/java/com/google/errorprone/annotations")
  os.remove("src/main/java/com/google/errorprone/annotations")
  os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
  os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
  os.remove("src/main/java/com/google/errorprone/annotations")
  os.remove("src/main/java/com/google/errorprone/annotations")
  os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
  os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
  os.remove("src/main/java/com/google/errorprone/annotations")
  os.remove("src/main/java/com/google/errorprone/annotations")
  os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
  os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
  os.remove("src/main/java/com/google/errorprone/annotations")
  os.remove("src/main/java/com/google/errorprone/annotations")
  os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
  os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")

  os.remove(("/data/data/com.tencent.iglite/app_crashrecord/1004"))
  os.remove(("/data/data/com.tencent.iglite/files/__tsecache.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/AdjustAttribution"))
  os.remove(("/data/data/com.tencent.iglite/files/AdjustIoActivityState"))
  os.remove(("/data/data/com.tencent.iglite/files/AdjustIoPackageQueue"))
  os.remove(("/data/data/com.tencent.iglite/files/apm_cc"))
  os.remove(("/data/data/com.tencent.iglite/files/AppEventsLogger.persistedevents"))
  os.remove(("/data/data/com.tencent.iglite/files/cache.crc.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/gcTestConfig.txt"))
  os.remove(("/data/data/com.tencent.iglite/files/hawk_data_init"))
  os.remove(("/data/data/com.tencent.iglite/files/local_crash_lock"))
  os.remove(("/data/data/com.tencent.iglite/files/tersafe.update"))
  os.remove(("/data/data/com.tencent.iglite/files/mycpuinfo"))
  os.remove(("/data/data/com.tencent.iglite/files/tpnlcache.data"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_app_915c.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_cs_stat2.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_uts_c2.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/tss.i.m.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_tmp/config2.xml.6dab626b"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_tmp/config3.xml"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_tmp/mn_cache.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_tmp/tss_emu_c2.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_tmp/tss.ano2.dat"))
  os.remove(("/data/data/com.tencent.iglite/app_crashrecord/1004"))
  os.remove(("/data/data/com.tencent.iglite/files/__tsecache.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/AdjustAttribution"))
  os.remove(("/data/data/com.tencent.iglite/files/AdjustIoActivityState"))
  os.remove(("/data/data/com.tencent.iglite/files/AdjustIoPackageQueue"))
  os.remove(("/data/data/com.tencent.iglite/files/apm_cc"))
  os.remove(("/data/data/com.tencent.iglite/files/AppEventsLogger.persistedevents"))
  os.remove(("/data/data/com.tencent.iglite/files/cache.crc.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/gcTestConfig.txt"))
  os.remove(("/data/data/com.tencent.iglite/files/hawk_data_init"))
  os.remove(("/data/data/com.tencent.iglite/files/local_crash_lock"))
  os.remove(("/data/data/com.tencent.iglite/files/tersafe.update"))
  os.remove(("/data/data/com.tencent.iglite/files/mycpuinfo"))
  os.remove(("/data/data/com.tencent.iglite/files/tpnlcache.data"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_app_915c.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_cs_stat2.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_uts_c2.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/tss.i.m.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_tmp/config2.xml.6dab626b"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_tmp/config3.xml"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_tmp/mn_cache.dat"))
  os.remove(("/data/data/com.tencent.iglite/files/tss_tmp/tss_emu_c2.dat"))

end
function minfixV2()
gg.alert("COMMING SOON")
end

function minfix()
gg.alert("APPLY IN ISLAND LOBBY")
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1954047316", 4, false, 536870912, 0, -1)
  gg.sleep(1000)
gg.refineNumber("1954047316", 4, false, 536870912, 0, -1)
  gg.getResults(2210)
  gg.editAll("9", 4)
  gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1970037078", 4, false, 536870912, 0, -1)
  gg.sleep(1000)
  gg.refineNumber("1970037078", 4, false, 536870912, 0, -1)
  gg.getResults(1000)
  gg.editAll("9", 4)
  gg.clearResults()
  gg.toast("FIX 10MIN ACTIVATED")
  gg.alert("ACTIVATED 50%")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1231974243", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.sleep(1000)
  gg.refineNumber("1231974243", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("67109377", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1232364871", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(1000)
  gg.refineNumber("1232364871", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("67109377", gg.TYPE_DWORD)
  gg.clearResults()
  
  
end



function wallhackmenu()
MENULITE1 = gg.choice({
"┏[🔮]WᴀʟʟHᴀᴄᴋ\n┗SnapDragon『425』",
"┏[🔮]WᴀʟʟHᴀᴄᴋ\n┗SnapDragon『446』",
"┏[🔮]WᴀʟʟHᴀᴄᴋ\n┗SnapDragon『625』",
"┏[🔮]WᴀʟʟHᴀᴄᴋ\n┗SnapDragon『652』",
"┏[🔮]WᴀʟʟHᴀᴄᴋ\n┗SnapDragon『662』",
"┏[🔮]WᴀʟʟHᴀᴄᴋ\n┗SnapDragon『665』",
"┏[🔮]WᴀʟʟHᴀᴄᴋ\n┗SnapDragon『675』",
"┏[🔮]WᴀʟʟHᴀᴄᴋ\n┗SnapDragon『710』",
"┏[🔮]WᴀʟʟHᴀᴄᴋ\n┗SnapDragon『845』",
"➖[🄱🄰🄲🄺]➖"
},nil,"🔑𝐔𝐒𝐄 𝐋𝐎𝐁𝐁𝐘 / 𝐆𝐀𝐌𝐄\n🔑𝐌𝐔𝐒𝐓 𝐔𝐒𝐄 𝐁𝐀𝐋𝐀𝐍𝐂𝐄𝐃 𝐆𝐑𝐀𝐅𝐈𝐂")
  if MENULITE1 == nil then
  else
    if MENULITE1 == 1 then
      wh425()
    end
    if MENULITE1 == 2 then
      wh446()
    end
    if MENULITE1 == 3 then
      wh625()
    end
    if MENULITE1 == 4 then
      wh652()
    end
    if MENULITE1 == 5 then
      wh662()
    end
    if MENULITE1 == 6 then
      wh665()
    end
    if MENULITE1 == 7 then
      wh675()
    end
    if MENULITE1 == 8 then
      wh710()
    end
    if MENULITE1 == 9 then
      wh845()
    end
    if MENULITE1 == 10 then
      HOME()
    end
  end
  PUBGMH = -1
  end
function wh425()
gg.alert("UseItsOnSmoothGraphic")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("227;1,073,741,824;1,073,741,824;-1,082,130,432;1,073,741,824:49",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1,073,741,824",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("1,123,024,896",gg.TYPE_DWORD)
gg.clearResults()
gg.toast('WᴀʟʟHᴀᴄᴋ425✓')
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("1,462,766,082;8,200:5",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("8200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("5",gg.TYPE_DWORD)
gg.clearResults()
gg.toast('🤍COLORWHITE✓')
end
function wh446()
ONGOING = gg.multiChoice({
"┏Wᴀʟʟʜᴀᴄᴋ446\n┗[❤️]CᴏʟᴏᴜʀRᴇᴅ",
"┏Wᴀʟʟʜᴀᴄᴋ446\n┗[💛]CᴏʟᴏᴜʀYᴇʟʟᴏᴡ",
"┏Wᴀʟʟʜᴀᴄᴋ446\n┗[💚]CᴏʟᴏᴜʀGʀᴇᴇɴ",
"➥BᴀᴄᴋTᴏMᴇɴᴜ"
},nil,"🔑𝐔𝐒𝐄 𝐋𝐎𝐁𝐁𝐘 / 𝐆𝐀𝐌𝐄\n🔑𝐌𝐔𝐒𝐓 𝐔𝐒𝐄 𝐁𝐀𝐋𝐀𝐍𝐂𝐄𝐃 𝐆𝐑𝐀𝐅𝐈𝐂")
if ONGOING == nil then
else
if ONGOING[1] == true then
WH446RED()
end
if ONGOING[2] == true then
WH446YELLOW()
end
if ONGOING[3] == true then
WH446GREEN()
end
if ONGOING[4] == true then
wallhackmenu()
end
end
MP=-1
end
function WH446RED()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.25000405312F;7.2303376e-15F;2.250613451F;1.1997245e-39F;3.75000309944F;2.0F;-1.1938825e-39F:293",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(1000)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("11776.0F;24576.0F;2.0F;1.0F:2137",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(1000)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("WᴀʟʟHᴀᴄᴋ446✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("768D;32768D;32769D;32770D:29",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("32768;32769;32770",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("9;7;7",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Red✓")
end
function WH446YELLOW()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.25000405312F;7.2303376e-15F;2.250613451F;1.1997245e-39F;3.75000309944F;2.0F;-1.1938825e-39F:293",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(1000)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("11776.0F;24576.0F;2.0F;1.0F:2137",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(1000)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("WᴀʟʟHᴀᴄᴋ446✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("768D;32768D;32769D;32770D:29",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("32768;32769;32770",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("9;9;7",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Yellow✓")
end
function WH446GREEN()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.25000405312F;7.2303376e-15F;2.250613451F;1.1997245e-39F;3.75000309944F;2.0F;-1.1938825e-39F:293",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(1000)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("11776.0F;24576.0F;2.0F;1.0F:2137",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(1000)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("WᴀʟʟHᴀᴄᴋ446✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("768D;32768D;32769D;32770D:29",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("32768;32769;32770",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("7;9;7",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Green✓")
end
function wh625()
fuck=gg.multiChoice({
"┏Wᴀʟʟʜᴀᴄᴋ625\n┗[❤️]CᴏʟᴏᴜʀRᴇᴅ",
"┏Wᴀʟʟʜᴀᴄᴋ625\n┗[💛]CᴏʟᴏᴜʀYᴇʟʟᴏᴡ",
"┏Wᴀʟʟʜᴀᴄᴋ625\n┗[💚]CᴏʟᴏᴜʀGʀᴇᴇɴ",
"➥BᴀᴄᴋTᴏMᴇɴᴜ"
},nil,"🔑𝐔𝐒𝐄 𝐋𝐎𝐁𝐁𝐘 / 𝐆𝐀𝐌𝐄\n🔑𝐌𝐔𝐒𝐓 𝐔𝐒𝐄 𝐁𝐀𝐋𝐀𝐍𝐂𝐄𝐃 𝐆𝐑𝐀𝐅𝐈𝐂")
if fuck == nil then
else
if fuck[1] == true then
WH625RED()
end
if fuck[2] == true then
WH625YELLOW()
end
if fuck[3] == true then
WH625GREEN()
end
if fuck[4] == true then
wallhackmenu()
end
end
MP=-1
end
function WH625RED()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.25F;7.1054274e-15F;2.25048828125F;1.8954664e-40F;9.7715345e-41F;5.8812497e-42F;4.8146047e21F;3.7615819e-37F;2.0F:245",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.refineNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('2.0;-1.0;0.0;1.0;-127.0::17',16,false,536870912,0,-1)
gg.searchNumber('2',16,false,536870912,0,-1)
gg.getResults(30)
gg.editAll('120',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("👻WᴀʟʟHᴀᴄᴋ✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,200;8,203",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("7;8",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("♥️Red✓")
end
function WH625YELLOW()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.25F;7.1054274e-15F;2.25048828125F;1.8954664e-40F;9.7715345e-41F;5.8812497e-42F;4.8146047e21F;3.7615819e-37F;2.0F:245",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.refineNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('2.0;-1.0;0.0;1.0;-127.0::17',16,false,536870912,0,-1)
gg.searchNumber('2',16,false,536870912,0,-1)
gg.getResults(30)
gg.editAll('120',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("👻WᴀʟʟHᴀᴄᴋ✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200;8201;8203:25",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6;7;8",gg.TYPE_DWORD)
gg.toast("💛ʏᴇʟʟᴏwᴄᴏʟᴏᴜʀ✓")
gg.clearResults()
end
function WH625GREEN()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.25F;7.1054274e-15F;2.25048828125F;1.8954664e-40F;9.7715345e-41F;5.8812497e-42F;4.8146047e21F;3.7615819e-37F;2.0F:245",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.refineNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('2.0;-1.0;0.0;1.0;-127.0::17',16,false,536870912,0,-1)
gg.searchNumber('2',16,false,536870912,0,-1)
gg.getResults(30)
gg.editAll('120',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("👻WᴀʟʟHᴀᴄᴋ✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,201;8,203",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("7;8",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("💚✓")
end
function wh652()
bur=gg.multiChoice({
"┏Wᴀʟʟʜᴀᴄᴋ652\n┗[💛]CᴏʟᴏᴜʀYᴇʟʟᴏᴡ",
"┏Wᴀʟʟʜᴀᴄᴋ652\n┗[💚]CᴏʟᴏᴜʀGʀᴇᴇɴ",
"➥BᴀᴄᴋTᴏMᴇɴᴜ"
},nil,"🔑𝐔𝐒𝐄 𝐋𝐎𝐁𝐁𝐘 / 𝐆𝐀𝐌𝐄\n🔑𝐌𝐔𝐒𝐓 𝐔𝐒𝐄 𝐁𝐀𝐋𝐀𝐍𝐂𝐄𝐃 𝐆𝐑𝐀𝐅𝐈𝐂")
if bur == nil then
else
if bur[1] == true then
WH652YELLOW()
end
if bur[2] == true then
WH652GREEN()
end
if bur[3] == true then
wallhackmenu()
end
end
MP=-1
end
function WH652YELLOW()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('"1.9479773e22;1.9479762e22;4.8330515e21;4.833052e21;2.0:141"',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('"2"',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll('"80"',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('"4.7223665e21;4.7777101e21;4.7777107e21;4.8146047e21;2.0:93"',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('"2"',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(24)
gg.editAll('"80"',gg.TYPE_FLOAT)
gg.toast("WᴀʟʟHᴀᴄᴋ652✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8201;8200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(15)
gg.editAll("7",gg.TYPE_DWORD)
gg.toast("💛Activated by @babamodz")
gg.clearResults()
end
function WH652GREEN()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('"1.9479773e22;1.9479762e22;4.8330515e21;4.833052e21;2.0:141"',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('"2"',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll('"80"',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('"4.7223665e21;4.7777101e21;4.7777107e21;4.8146047e21;2.0:93"',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('"2"',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(24)
gg.editAll('"80"',gg.TYPE_FLOAT)
gg.toast("WᴀʟʟHᴀᴄᴋ652✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8201",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("8199",gg.TYPE_DWORD)
gg.toast("💚Activated by @babamodz")
gg.clearResults()
end
function wh662()
FALLS=gg.multiChoice({
"┏Wᴀʟʟʜᴀᴄᴋ662\n┗[❤️]CᴏʟᴏᴜʀRᴇᴅ",
"┏Wᴀʟʟʜᴀᴄᴋ662\n┗[💛]CᴏʟᴏᴜʀYᴇʟʟᴏᴡ",
"➥BᴀᴄᴋTᴏMᴇɴᴜ"
},nil,"🔑𝐔𝐒𝐄 𝐋𝐎𝐁𝐁𝐘 / 𝐆𝐀𝐌𝐄\n🔑𝐌𝐔𝐒𝐓 𝐔𝐒𝐄 𝐁𝐀𝐋𝐀𝐍𝐂𝐄𝐃 𝐆𝐑𝐀𝐅𝐈𝐂")
if FALLS == nil then
else
if FALLS[1] == true then
WH662RED()
end
if FALLS[2] == true then
WH662YELLOW()
end
if FALLS[3] == true then
wallhackmenu()
end
end
MP=-1
end
function WH662RED()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("4.474346e-42F;2.0F;5.1097588e21F:1045",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1,0)
gg.searchNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("150",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("11776.0F;2.0F:2381",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1,0)
gg.searchNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("150",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Wᴀʟʟʜᴀᴄᴋ662✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200D;65537D;524288D:33",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1,0)
gg.refineNumber("8200",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1,0)
gg.getResults(10)
gg.editAll("7",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("CᴏʟᴏᴜʀRed✓")
end
function WH662YELLOW()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("4.474346e-42F;2.0F;5.1097588e21F:1045",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1,0)
gg.searchNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("150",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("11776.0F;2.0F:2381",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1,0)
gg.searchNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("150",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Wᴀʟʟʜᴀᴄᴋ662✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200D;65537D;524288D:33",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1,0)
gg.refineNumber("8200",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1,0)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("CᴏʟᴏᴜʀYellow✓")
end
function wh665()
SPRING = gg.multiChoice({
"┏Wᴀʟʟʜᴀᴄᴋ665\n┗[❤️]CᴏʟᴏᴜʀRᴇᴅ",
"┏Wᴀʟʟʜᴀᴄᴋ665\n┗[💛]CᴏʟᴏᴜʀYᴇʟʟᴏᴡ",
"┏Wᴀʟʟʜᴀᴄᴋ665\n┗[💚]CᴏʟᴏᴜʀGʀᴇᴇɴ",
"➥BᴀᴄᴋTᴏMᴇɴᴜ"
},nil,"🔑𝐔𝐒𝐄 𝐋𝐎𝐁𝐁𝐘 / 𝐆𝐀𝐌𝐄\n🔑𝐌𝐔𝐒𝐓 𝐔𝐒𝐄 𝐁𝐀𝐋𝐀𝐍𝐂𝐄𝐃 𝐆𝐑𝐀𝐅𝐈𝐂")
if SPRING == nil then
else
if SPRING[1] == true then
WH665RED()
end
if SPRING[2] == true then
WH665YELLOW()
end
if SPRING[3] == true then
WH665GREEN()
end
if SPRING[4] == true then
wallhackmenu()
end
end
MP=-1
end
function WH665RED()
gg.clearResults()
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "Wallhack665"},
{["value"] = 112206307355, ["type"] = 32},
{["lv"] = 4611686018965373172, ["offset"] = 8, ["type"] = 32},
{["lv"] = 2325053797707022336, ["offset"] = 12, ["type"] = 32},
{["lv"] = 6755438637105180, ["offset"] = 16, ["type"] = 32},
}

qmxg = {
{["value"] = 2325053797756305408, ["offset"] = 12, ["type"] = 32},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "Wallhack665"},
{["value"] = -9223372035845794038, ["type"] = 32},
{["lv"] = 4333543705470399000, ["offset"] = -4, ["type"] = 32},
{["lv"] = 4553546146700983792, ["offset"] = -8, ["type"] = 32},
{["lv"] = 4500782613132083200, ["offset"] = -12, ["type"] = 32},
{["lv"] = -4647714814372610048, ["offset"] = -28, ["type"] = 32},
}

qmxg = {
{["value"] = -4647714814323326976, ["offset"] = -28, ["type"] = 32},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "Wallhack665"},
{["value"] = 1170939904, ["type"] = 32},
{["lv"] = 5029148594287140864, ["offset"] = -4, ["type"] = 32},
{["lv"] = 4405611152153899539, ["offset"] = -8, ["type"] = 32},
{["lv"] = 4513154466059763712, ["offset"] = -12, ["type"] = 32},
{["lv"] = -4647714814372610048, ["offset"] = -28, ["type"] = 32},
}

qmxg = {
{["value"] = -4647714814323326976, ["offset"] = -28, ["type"] = 32},

}
xqmnb(qmnb)
gg.toast("WᴀʟʟHᴀᴄᴋ665✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200D;8203D:17",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("7;8",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Red✓")
end
function WH665YELLOW()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("24581.546875F;2.0F;2.663242e-39F:501",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("150",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("11264.0F;24580.5F;3.375F;2.0F;1.0F:2401",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("150",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WᴀʟʟHᴀᴄᴋ665✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200D;8203D:17",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("14;8",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Yellow✓")
end
function WH665GREEN()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("24581.546875F;2.0F;2.663242e-39F:501",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("150",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("11264.0F;24580.5F;3.375F;2.0F;1.0F:2401",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("150",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WᴀʟʟHᴀᴄᴋ665✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200D;8203D:17",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("10;8",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Green✓")
end

function wh675()
SPRING1 = gg.multiChoice({
"┏Wᴀʟʟʜᴀᴄᴋ675\n┗[❤️]CᴏʟᴏᴜʀRᴇᴅ",
"┏Wᴀʟʟʜᴀᴄᴋ675\n┗[💛]CᴏʟᴏᴜʀYᴇʟʟᴏᴡ",
"┏Wᴀʟʟʜᴀᴄᴋ675\n┗[💚]CᴏʟᴏᴜʀGʀᴇᴇɴ",
"➥BᴀᴄᴋTᴏMᴇɴᴜ"
},nil,"🔑𝐔𝐒𝐄 𝐋𝐎𝐁𝐁𝐘 / 𝐆𝐀𝐌𝐄\n🔑𝐌𝐔𝐒𝐓 𝐔𝐒𝐄 𝐁𝐀𝐋𝐀𝐍𝐂𝐄𝐃 𝐆𝐑𝐀𝐅𝐈𝐂")
if SPRING1 == nil then
else
if SPRING1[1] == true then
WH665RED()
end
if SPRING1[2] == true then
WH665YELLOW()
end
if SPRING[3] == true then
WH665GREEN()
end
if SPRING1[4] == true then
wallhackmenu()
end
end
MP=-1
end



function wh710()
DARLINGb= gg.multiChoice({
"┏Wᴀʟʟʜᴀᴄᴋ710\n┗[❤️]CᴏʟᴏᴜʀRᴇᴅʜᴅʀ",
"┏Wᴀʟʟʜᴀᴄᴋ710\n┗[💛]CᴏʟᴏᴜʀYᴇʟʟᴏᴡʜᴅʀ",
"┏Wᴀʟʟʜᴀᴄᴋ710\n┗[💛]CᴏʟᴏᴜʀYᴇʟʟᴏᴡʙᴀʟᴀɴᴄᴇᴅ",
"┏Wᴀʟʟʜᴀᴄᴋ710\n┗[💚]CᴏʟᴏᴜʀGʀᴇᴇɴʙᴀʟᴀɴᴄᴇᴅ",
"➥BᴀᴄᴋTᴏMᴇɴᴜ"
},nil,"🔂ᴜsᴇᴛʜᴇsᴇɪɴᴇᴠᴇʀʏ\n🔂ᴍᴀᴛᴄʜᴀᴛHDRɢʀᴀᴘʜɪᴄ")
if DARLING == nil then
else
if DARLING[1] == true then
WH710RED()
end
if DARLING[2] == true then
WH710YELLOW()
end
if DARLING[3] == true then
WH710YC1()
end
if DARLING[4] == true then
WH710GREEN()
end
if DARLING[5] == true then
wallhackmenu()
end
end
MP=-1
end
function WH710RED()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("3.643376e-44;1.2282293e-19;2.0F:9",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.searchNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30",16,false,536870912,0,-1)
gg.searchNumber("2",16,false,536870912,0,-1)
gg.getResults(20)
gg.editAll("120",16)
gg.clearResults()
gg.toast("WᴀʟʟHᴀᴄᴋ710✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("7D;13D;68D;8200D:193",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("8200",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("7",gg.TYPE_DWORD)
gg.toast("RedHDR✓")
end
function WH710YELLOW()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("3.643376e-44;1.2282293e-19;2.0F:9",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.searchNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30",16,false,536870912,0,-1)
gg.searchNumber("2",16,false,536870912,0,-1)
gg.getResults(20)
gg.editAll("120",16)
gg.clearResults()
gg.toast("WᴀʟʟHᴀᴄᴋ710✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("7D;13D;68D;8200D:193",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1)
gg.refineNumber("8200",gg.TYPE_DWORDfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("YellowHDR✓")
end
function WH710YC1()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("3.643376e-44;1.2282293e-19;2.0F:9",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.searchNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30",16,false,536870912,0,-1)
gg.searchNumber("2",16,false,536870912,0,-1)
gg.getResults(20)
gg.editAll("120",16)
gg.clearResults()
gg.toast("WᴀʟʟHᴀᴄᴋ710✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8201;8200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(15)
gg.editAll("7",gg.TYPE_DWORD)
gg.toast("💛Activated by @babamodz")
gg.clearResults()
end
function WH710GREEN()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("3.643376e-44;1.2282293e-19;2.0F:9",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.searchNumber("2",gg.TYPE_FLOATfalse,gg.SIGN_EQUAL0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30",16,false,536870912,0,-1)
gg.searchNumber("2",16,false,536870912,0,-1)
gg.getResults(20)
gg.editAll("120",16)
gg.clearResults()
gg.toast("WᴀʟʟHᴀᴄᴋ710✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8201",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("8199",gg.TYPE_DWORD)
gg.toast("💚")
gg.clearResults()
end
function wh845()
land = gg.multiChoice({
"┏Wᴀʟʟʜᴀᴄᴋ845\n┗[💛]CᴏʟᴏᴜʀYᴇʟʟᴏᴡ",
"┏Wᴀʟʟʜᴀᴄᴋ845\n┗[💚]CᴏʟᴏᴜʀGʀᴇᴇɴ",
"➥BᴀᴄᴋTᴏMᴇɴᴜ"
},nil,"🔑𝐔𝐒𝐄 𝐋𝐎𝐁𝐁𝐘 / 𝐆𝐀𝐌𝐄\n🔑𝐌𝐔𝐒𝐓 𝐔𝐒𝐄 𝐁𝐀𝐋𝐀𝐍𝐂𝐄𝐃 𝐆𝐑𝐀𝐅𝐈𝐂")
if land == nil then
else
if land[1] == true then
WH845YELLOW()
end
if land[2] == true then
WH845GREEN()
end
if land[3] == true then
wallhackmenu()
end
end
MP=-1
end
function WH845YELLOW()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.07286532e21;2.37555265427;2.0:61",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1,0)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1,0)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.00700598e22;4.81460921e21;2.0:189",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1,0)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1,0)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("WᴀʟʟHᴀᴄᴋ845✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8201;8200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(15)
gg.editAll("7",gg.TYPE_DWORD)
gg.toast("💛Activated by @babamodz")
gg.clearResults()
end
function WH845GREEN()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.07286532e21;2.37555265427;2.0:61",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1,0)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1,0)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.00700598e22;4.81460921e21;2.0:189",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1,0)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1,0)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("WᴀʟʟHᴀᴄᴋ845✓")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8201",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("8199",gg.TYPE_DWORD)
gg.toast("💚Activated by @babamodz")
gg.clearResults()
end
aaaa=1
function aimbot180()
  if aaaa==1 then
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x193B220
  setvalue(so+py,16,99)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x193B0EC
  setvalue(so+py,16,-199)
  gg.toast("✔️ Aimbot Activated By @babamodz")
  aaaa=2
  ak2=on
  else
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x193B220
  setvalue(so+py,16,0.0001)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x193B0EC
  setvalue(so+py,16,2015175168)
  gg.toast("✔️ Aimbot DeActivated By @babamodz")
  aaaa=1
  ak2=off
  end
end
xaaa=1
function aimbot360()
  if xaaa==1 then
so=gg.getRangesList('libUE4.so')[1].start
  py=0x193B220
  setvalue(so+py,16,999)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x193B0EC
  setvalue(so+py,16,-999)
  gg.toast("✔️ Aimbot Activated ")
  xaaa=2
  ak3=on
  else
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x193B220
  setvalue(so+py,16,0.0001)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x193B0EC
  setvalue(so+py,16,2015175168)
  gg.toast("✔️ Aimbot Deactivated ")
  xaaa=1
  ak3=off
  end
end
yaaa=1
function Aimlock()
  if yaaa==1 then
  
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x193B0EC
  setvalue(so+py,16,-999)
  gg.toast("✔️ Aimbot Activated By @babamodz")
  yaaa=2
  ak4=on
  else
  
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x193B0EC
  setvalue(so+py,16,2015175168)
  gg.toast("✔️ Aimbot DeActivated By @babamodz")
  yaaa=1
  ak4=off
  end
end
gaaa=1
function antenapro()
  if gaaa==1 then
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4474162201761755023", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(101)
gg.editAll("4474162201872841728", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4474162188876853136", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(101)
gg.editAll("4474162188987939840", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4474162090092605332", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(101)
gg.editAll("4474162090203692032", gg.TYPE_QWORD)
gg.toast("☬ Antena Ghillie Suit ☬")
  gg.clearResults()
  gaaa=2
  ak5=on
  else
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4474162201872841728", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(101)
gg.editAll("4474162201761755023", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4474162188987939840", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(101)
gg.editAll("4474162188876853136", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4474162090203692032", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(101)
gg.editAll("4474162090092605332", gg.TYPE_QWORD)
  gg.toast("✔️ Antena Pro DeActivated By @babamodz")
  gaaa=1
  ak5=off
  end
end
baaa=1
function recoil()
  if baaa==1 then
  so=gg.getRangesList('libUE4.so')[1].start
  py=0xDA5D54
  setvalue(so+py,16,0)
  gg.toast("✔️ Recoil Activated By @babamodz")
  baaa=2
  ak6=on
  else
  so=gg.getRangesList('libUE4.so')[1].start
  py=0xDA5D54
  setvalue(so+py,16,-3.74440972e28)
  gg.toast("✔️ Recoil DeActivated By @babamodz")
  baaa=1
  ak6=off
  end
end
local caaa=1
function antishake()
  if caaa==1 then
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x26107E8
  setvalue(so+py,16,0)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x26107E8
  setvalue(so+py,16,0)
  gg.toast("✔️ Anti Shake Activated By @babamodz")  
  caaa=2
  ak7=on
  else 
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x26107E8
  setvalue(so+py,16,-1.54746157e26)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x26107E8
  setvalue(so+py,16,-1.54746157e26)
  gg.toast("✔️ Anti Shake DeActivated By @babamodz")
  caaa=1
  ak7=off
  end
end
local daaa=1
function magic()
  if daaa==1 then
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x27573D4
  setvalue(so+py,16,40)
  so=gg.getRangesList('libUE4.so')[1].start
  qmnb = {
  {["memory"] = 32 },
  {["name"] = "Falsh"},
  {["value"] = 9.20161819458, ["type"] = 16},
  {["lv"] = 1.0, ["offset"] = -4, ["type"] = 16},
  {["lv"] = 25.0, ["offset"] = 28, ["type"] = 16},
  {["lv"] = 30.5, ["offset"] = 32, ["type"] = 16},
  }
  qmxg = {
  {["value"] = -300, ["offset"] = -4, ["type"] = 16},
  {["value"] = 250, ["offset"] = 28, ["type"] = 16},
  {["value"] = 250, ["offset"] = 32, ["type"] = 16},
  }
  xqmnb(qmnb)
  gg.toast("✔️ Magic Bullet Activated ")
  daaa=2
  ak8=on
  else 
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x27573D4
  setvalue(so+py,16,0.10000000149)
  qmnb = {
  {["memory"] = 32 },
  {["name"] = "Falsh"},
  {["value"] = 9.20161819458, ["type"] = 16},
  {["lv"] = -300, ["offset"] = -4, ["type"] = 16},
  {["lv"] = 250, ["offset"] = 28, ["type"] = 16},
  {["lv"] = 305, ["offset"] = 32, ["type"] = 16},
  }
  qmxg = {
  {["value"] = 1.0, ["offset"] = -4, ["type"] = 16},
  {["value"] = 25.0, ["offset"] = 28, ["type"] = 16},
  {["value"] = 30.5, ["offset"] = 32, ["type"] = 16},
  }
  xqmnb(qmnb)
  gg.toast("✔️ Magic Bullet DeActivated By @babamodz")
  daaa=1
  ak8=off
  end
end
local jaaa=1
function smallespstable()
  if jaaa==1 then
  so=gg.getRangesList('libUE4.so')[1].start
  py=0xBD072C
  setvalue(so+py,16,0)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0xBD125C
  setvalue(so+py,16,1.66153519e35)
  gg.toast("✔️ Small Esp Cirlce Activated By @babamodz")    
  jaaa=2
  ak9=on  
  else 
  so=gg.getRangesList('libUE4.so')[1].start
  py=0xBD072C
  setvalue(so+py,16,6.1629795e-33)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0xBD125C
  setvalue(so+py,16,1.66153539e35)
  gg.toast("✔️ Small Esp Circle DeActivated By @babamodz")
  jaaa=1
  ak9=off  
  end
end
local laaa=1
function smallespm()
  if laaa==1 then
  so=gg.getRangesList('libUE4.so')[1].start
  py=0xBD072C
  setvalue(so+py,16,0)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0xBD125C
  setvalue(so+py,16,1.66153519e35)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0xBCEE18
  setvalue(so+py,16,-5.90295867e21)  
  gg.toast("✔️ Small Esp Cirlce Activated By @babamodz")    
  laaa=2
  ak10=on
  else 
  so=gg.getRangesList('libUE4.so')[1].start
  py=0xBD072C
  setvalue(so+py,16,6.1629795e-33)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0xBD125C
  setvalue(so+py,16,1.66153539e35)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0xBCEE18
  setvalue(so+py,16,-5.9029581e21)
  gg.toast("✔️ Small Esp Circle DeActivated By @babamodz")  
  laaa=1
  ak10=off
  end
end
local zzba=1
function high()
  if zzba==1 then
  qmnb = {
  {["memory"] = 32},
  {["name"] = "MediuaM Speed"},
  {["value"] = 0.00050000002, ["type"] = 16},
  {["lv"] = 1.0, ["offset"] = -20, ["type"] = 16},
  {["lv"] = 1.0, ["offset"] = -16, ["type"] = 16},
  {["lv"] = 1.0, ["offset"] = -12, ["type"] = 16},
  {["lv"] = 9.999999747378752E-5, ["offset"] = -8, ["type"] = 16},
  }
  qmxg = {
  {["value"] = 0.05, ["offset"] = 0, ["type"] = 16},
  }
  xqmnb(qmnb)
  gg.clearResults()
  gg.toast('MediUm SpeedActivated By @babamodz ✓')
  gg.toast("✔️ Flash Activated By @babamodz") 
  zzba=2
  ak11=on  
  else 
  qmnb = {
  {["memory"] = 32},
  {["name"] = "MediuaM Speed"},
  {["value"] = 0.05, ["type"] = 16},
  {["lv"] = 1.0, ["offset"] = -20, ["type"] = 16},
  {["lv"] = 1.0, ["offset"] = -16, ["type"] = 16},
  {["lv"] = 1.0, ["offset"] = -12, ["type"] = 16},
  {["lv"] = 9.999999747378752E-5, ["offset"] = -8, ["type"] = 16},
  }
  qmxg = {
  {["value"] = 0.00050000002, ["offset"] = 0, ["type"] = 16},
  }
  xqmnb(qmnb)
  gg.toast("✔️ Flash DeActivated By @babamodz")
  ak11=off
  zzba=1
  end
end
local eaaa=1
function blackbody()
  if eaaa==1 then
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x204CF58
  setvalue(so+py,16,40)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x2A91E0C
  setvalue(so+py,16,0)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x2A91E1C
  setvalue(so+py,16,0)
  gg.toast("✔️ Black Body Activated By @babamodz")  
  eaaa=2
  ak12=on
  else 
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x204CF58
  setvalue(so+py,16,0.0001)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x2A91E0C
  setvalue(so+py,16,-5.4827885e27)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x2A91E1C
  setvalue(so+py,16,-5.47553376e27)
  gg.toast("✔️ Black Body DeActivated By @babamodz")  
  eaaa=1
  ak12=off
  end
end
local ip=1
function ipadv1()
  if ip==1 then
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x26A6770
  setvalue(so+py,16,290)
  gg.toast("✔️ Ipad View Activated By @babamodz")
  ip=2
  ak13=on
else
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x26A6770
  setvalue(so+py,16,360)
  gg.toast("✔️ Ipad View DeActivated By @babamodz")
  ip=1
  ak13=off
  end
end
local ipff=1
function FixspdD()
  if ipff==1 then
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x2CEF3B0
  setvalue(so+py,16,0)
  gg.toast("✔️ Fix Speed Vhicle Glich  Activated By @babamodz")
  ipff=2
  ak21=on
else
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x2CEF3B0
  setvalue(so+py,16,-6.15262313e27)
  gg.toast("✔️ Fix Speed Vhicle Glich DeActivated By @babamodz")
  ipff=1
  ak21=off
  end
end
local itp=1
function Allcarspd()
  if itp==1 then
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1000;10;4D;4D;50;5;2;0.01::", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL,0,-1)
  gg.refineNumber( "0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.99", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("✔️ Vhicle Speed Activated By @babamodz")
  itp=2
  ak14=on
else
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1000;10;4D;4D;50;5;2;-0.99::", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL,0,-1)
  gg.refineNumber( "-0.99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("✔️ Vhicle Speed DeActivated By @babamodz")
  itp=1
  ak14=off
  end
end
local oaaa=1
function jumpcar()
  if oaaa==1 then
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x3347990
  setvalue(so+py,16,0)
  ak19=on
  gg.sleep("2500")
  py=0x3347990
  setvalue(so+py,16,-2.84012943e28)
  gg.toast("✔️ Car Jump Activated By @babamodz")
  oaaa=2
  ak14=off
  else 
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x3347990
  setvalue(so+py,16,0)
  ak19=on
  gg.sleep("2500")
  py=0x3347990
  setvalue(so+py,16,-2.84012943e28)
  gg.toast("✔️ Car Jump DeActivated By @babamodz")
  oaaa=1
  ak14=off
  end
end
local affa=1
function Spdlanding()
  if affa==1 then
  qmnb = {
  {["memory"] = 32},
  {["name"] = "Antena Pro"},
  {["value"] = 3000.0, ["type"] = 16},
  {["lv"] = 5000.0, ["offset"] = 4, ["type"] = 16},
  {["lv"] = 1024.0, ["offset"] = 8, ["type"] = 16},
  {["lv"] = 89.0, ["offset"] = 36, ["type"] = 16},
  }
  qmxg = {
  {["value"] = 20000.0, ["offset"] = 0, ["type"] = 16},
  {["value"] = 20000.0, ["offset"] = 4, ["type"] = 16},
  {["value"] = 20000.0, ["offset"] = 8, ["type"] = 16},
  }
  xqmnb(qmnb)
  gg.toast("✔️ Fast Landing Activated By @babamodz")
  affa=2
  ak16=off
  else 
  qmnb = {
  {["memory"] = 32},
  {["name"] = "Antena Pro"},
  {["value"] = 20000.0, ["type"] = 16},
  {["lv"] = 20000.0, ["offset"] = 4, ["type"] = 16},
  {["lv"] = 20000.0, ["offset"] = 8, ["type"] = 16},
  {["lv"] = 89.0, ["offset"] = 36, ["type"] = 16},
  }
  qmxg = {
  {["value"] = 3000.0, ["offset"] = 0, ["type"] = 16},
  {["value"] = 5000.0, ["offset"] = 4, ["type"] = 16},
  {["value"] = 1024.0, ["offset"] = 8, ["type"] = 16},
  }
  xqmnb(qmnb)
  gg.toast("✔️ Fast Landing DeActivated By @babamodz")
  affa=1
  ak16=off
  end
end

local ippPfDff=1
function blacksky()
  if ipfff==1 then
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x28E67BC
  setvalue(so+py,16,-0.00001000024)
  gg.toast("✔️Black Sky Activated By @babamodz")
  ippPfDff=2
  ak16=on
else
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x2AAEDC0
  setvalue(so+py,16,0.0)
  gg.toast("✔️ Black Sky ️DeActivated By @babamodz")
  ippPfDff=1
  ak16=off
  end
end
local ippfff=1
function Ngrasstree()
  if ipfff==1 then
  so=gg.getRangesList('libUE4.so')[1].start
 py=0x2164240
  setvalue(so+py,16,0)
  gg.toast("✔️ Remove Tree & grass Activated By @babamodz")
  ippfff=2
  ak18=on
else
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x2164240
  setvalue(so+py,16,-3.74440972e28)
  gg.toast("✔️ Remove Tree & grass DeActivated By @babamodz")
  ippfff=1
  ak18=off
  end
end
local ipfff=1
function Nofog()
  if ipfff==1 then
  so=gg.getRangesList('libUE4.so')[1].start
 py=0x206B360
  setvalue(so+py,16,0)
  gg.toast("✔️ RemoveFog Activated By @babamodz")
  ipfff=2
  ak19=on
else
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x206B360
  setvalue(so+py,16,-1.36204395e28)
  gg.toast("✔️ RemoveFog DeActivated By @babamodz")
  ipfff=1
  ak19=off
  end
end
local ippPfff=1
function Smallcross()
  if ipfff==1 then
  so=gg.getRangesList('libUE4.so')[1].start
  py=0xDA6240
  setvalue(so+py,16,40)
  gg.toast("✔️Small CrosshaiR Activated By @babamodz")
  ippPfff=2
  ak20=on
else
  so=gg.getRangesList('libUE4.so')[1].start
  py=0xDA6240
  setvalue(so+py,16,-1.11445016e28)
  gg.toast("✔️ ️Small CrosshaiR DeActivated By @babamodz")
  ippPfff=1
  ak20=off
  end
end







function EXIT()
  print("𝟷𝟶𝟶% 𝙰𝙽𝚃𝙸𝙱𝙰𝙽 𝙷𝙰𝙲𝙺👉(𝙿𝚁𝙸𝙲𝙴 𝙻𝙸𝚂𝚃)")
  print("𝙰𝙽𝙳𝚁𝙾𝙸𝙳 𝚅-10,9,8,7,6 = 500/For Month")
  print("𝙵𝚄𝙻𝙻 𝚂𝙴𝙰𝚂𝙾𝙽 = 800/-")
  print("ᴛᴇʟᴇɢʀᴀᴍ:-@baba_modz ᴄᴏɴᴛᴀᴄᴛ ꜰᴏʀ ᴩᴀɪᴅ ʜᴀᴄᴋ")
  print("Telegram = @babamodz")
  gg.skipRestoreState()
  gg.setVisible(true)
  os.exit()
end
function EX()
  HOME()
end
function EXOP()
end
while true do
  if gg.isVisible(true) then
    PUBGMH = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if PUBGMH == 1 then
    HOME()
  end
end
