import requests
from bs4 import BeautifulSoup
headers = {
    'origin': 'https://www.athletic.net',
    'accept-encoding': 'gzip, deflate, br',
    'accept-language': 'en-US,en;q=0.9',
    'user-agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36',
    'content-type': 'application/json;charset=UTF-8',
    'accept': 'application/json, text/plain, */*',
    'referer': 'https://www.athletic.net/account/login/?ReturnUrl=%2FTrackAndField%2FAthlete.aspx%3FAID%3D8647967',
    'authority': 'www.athletic.net',
    'cookie': '__cfduid=d1f6d61721f86b3d40f072e956caca3481557505061; __qca=P0-2130554405-1557505075683; _ga=GA1.2.272546423.1557505109; ANETSettings=guid=d3702713-1697-4e0d-a834-1244140540f6&Team=1973&Sport=TF; __gads=ID=d305091214db1722:T=1557505384:S=ALNI_MY1KRq12mH1GwXMoWi9nUQCsdJZ7Q; _gid=GA1.2.606121657.1558819811; _gat_gtag_UA_297644_1=1; ASP.NET_SessionId=ma0mebef14ds5lt2fb2god5i; __atuvc=2%7C19%2C0%7C20%2C1%7C21; __atuvs=5ce9b3f0b74f27a4000; vg=cc3bc2e8-5c19-4732-a700-e88a2ade8a3b; vl=1:5:00|2:US|3:CALIFORNIA|4:807|5:CALIFORNIA/SONOMA|6:CALIFORNIA/SANTA ROSA|7:95407|!0; vd=sonic.net; GED_PLAYLIST_ACTIVITY=W3sidSI6InEwcTkiLCJ0c2wiOjE1NTg4MTk4MzgsIm52IjoxLCJ1cHQiOjE1NTg4MTk4MzMsImx0IjoxNTU4ODE5ODM3fV0.',
    'dnt': '1',
}

data = '{"e":"nathan.l.lee123@gmail.com","pw":"Rose!234","grecaptcha":"03AOLTBLTSkV9JrfYc_tBq74LoMtqnohZCrQRdcKrvvDH2iX9zL2OBTmWgH_m9Mtv1-BbLjGbmgVdwgmCQ3hZMnkm4JVlGjUVvL7qF3r4lYo48c8NBcODKC7HVTjscUD6Nd-MjwTLfXwtDdj44EkuumLGn6ii1ZHJt_ClqhPMTMyE0ufxoLxo88oFfT1N-UgwjUtJp7fDlgqQbJyT2bKdTRTv7biNO7umk7vbeaL7Jdvgk4CYXT5mUCbm8-m6qkMhsXOsSTC_OrKK-ucT3OFz7bGJDW-dScTJCK_vb053HV3O0Z7WUOE7hwWicbTRHIcoHOD-_rGi4NMG-S9njjUqNjuD2eHaJteVG8g"}'
s = requests.Session()
response = s.post('https://www.athletic.net/api/v1/Account/Login', headers=headers, data=data)
print(response)


athleteResults = s.get("https://www.athletic.net/TrackAndField/Athlete.aspx?AID=8647967").text
page = BeautifulSoup(athleteResults, features='html.parser')

#print(page.prettify())

nameLine = str(page.find("title").text)
print(nameLine.replace(" - CA Track and Field Bio", ""))
