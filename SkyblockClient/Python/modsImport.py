def returnMods():
    print('importing mods from repo...')
    import requests
    url = "https://raw.githubusercontent.com/nacrt/SkyblockClient-REPO/main/files/mods.json"
    f = requests.get(url)
    print(f.content)
    return f.content