from bs4 import BeautifulSoup
import xml.etree.ElementTree as ET
import os
import re

def get_mod_folders():
    """
    Returns a list of all folders in the current directory whose names start with 'Mod'.
    """
    return [
        'Africa/SwahiliAlHasanibn',
        'Asia/TibetTrisongDetsen',
        'CIVITASResources',
        'DistrictIcons',
        'Europe/GaulVercingetorix',
        'Mediterranean/MacedonOlympias',
        'Mediterranean/PhoeniciaAhiram',
        'Meso/MayaTeKinichII',
        'Meso/TheoticuanasTeotihuacan',
        'NorthAmerica/ThuleKiviuq',
    ]

def combine_modinfo_files():
    new_mod_dict = {}
    mod_cnt = 0
    author_dict = {}
    special_thanks_dict = {}
    author_dict['Calcifer'] = 1
    author_dict['Apeul'] = 1
    files_dict = {}
    for mod in get_mod_folders():
        modinfo_path = os.path.join(mod, "files.xml")
        if os.path.exists(modinfo_path):
            with open(modinfo_path, 'r', encoding='utf-8') as file:
                data = file.read()

            Bs_data = BeautifulSoup(data, "xml")

            file_tags = Bs_data.find_all("File")
            # Append the string in each File tag with the mod folder name
            for b in file_tags:
                if b.string in files_dict:
                    print(f'same file name used in {mod} and {files_dict[b.string]}: {b.string}')
                b.string = f'{mod}/{b.string}'

            lua_replace_tags = Bs_data.find_all("LuaReplace")
            for b in lua_replace_tags:
                print(f'LuaReplace tag: {b}')
                b.string = f'{mod}/{b.string}'

            for b in file_tags:
                files_dict[b.string] = mod
            for b in lua_replace_tags:
                files_dict[b.string] = mod

            load_order_tags = Bs_data.find_all("LoadOrder")
            # Append the string in each File tag with the mod folder name
            for b in load_order_tags:
                b.string = f'{999-mod_cnt}{b.string}'
                
            author_tags = Bs_data.find_all("Authors")
            for tag in author_tags:
                delimiters = r'[;,\s]+'
                for author in re.split(delimiters, tag.string):
                    author_dict[author] = 1
                    
            special_thanks_tags = Bs_data.find_all("SpecialThanks")
            for tag in special_thanks_tags:
                delimiters = r'[;,\s]+'
                for author in re.split(delimiters, tag.string):
                    special_thanks_dict[author] = 1

            for b in Bs_data.find('Mod'):
                if b.name == 'Properties' or b.name == 'Dependencies' or b.name == None:
                    continue
                if b.name not in new_mod_dict:
                    new_mod_dict[b.name] = ''
                new_mod_dict[b.name] = new_mod_dict[b.name] + str(b) + '\n'
            # break
        mod_cnt = mod_cnt + 1
    sorted_authors = sorted(author_dict.keys(), key=lambda item: item)
    sorted_special_thanks = sorted(special_thanks_dict.keys(), key=lambda item: item)
    extraDependencies = {}
    extraDependencies["02A8BDDE-67EA-4D38-9540-26E685E3156E"] = "LOC_AZTEC_MONTEZUMA_MOD_TITLE"
    extraDependencies["113D9459-0A3B-4FCB-A49C-483F40303575"] = "LOC_TEDDY_ROOSEVELT_MOD_TITLE"
    extraDependencies["1B28771A-C749-434B-9053-D1380C553DE9"] = "LOC_EXPANSION1_MOD_TITLE"
    extraDependencies["1B394FE9-23DC-4868-8F0A-5220CB8FB427"] = "LOC_ETHIOPIA_MOD_TITLE"
    extraDependencies["1F367231-A040-4793-BDBB-088816853683"] = "LOC_INDONESIA_KHMER_MOD_TITLE"
    extraDependencies["249D9276-0832-48E4-B370-14531FA4E33C"] = "LOC_GREAT_BUILDERS_MOD_TITLE"
    extraDependencies["258EF3CA-890B-4863-8A52-982822EFF7BD"] = "LOC_RULERS_OF_ENGLAND_MOD_TITLE"
    extraDependencies["2F6E858A-28EF-46B3-BEAC-B985E52E9BC1"] = "LOC_MOD_VIKINGSLANDMARKS_TITLE"
    extraDependencies["3809975F-263F-40A2-A747-8BFB171D821A"] = "LOC_POLAND_JADWIGA_MOD_TITLE"
    extraDependencies["4873eb62-8ccc-4574-b784-dda455e74e68"] = "LOC_EXPANSION2_MOD_TITLE"
    extraDependencies["643EA320-8E1A-4CF1-A01C-00D88DDD131A"] = "LOC_NUBIA_MOD_TITLE"
    extraDependencies["7A66DB58-B354-4061-8C80-95B638DD6F6C"] = "LOC_GREAT_NEGOTIATORS_MOD_TITLE"
    extraDependencies["7D27831B-BAA6-4A8B-A39C-94243BAD3F47"] = "LOC_RULERS_OF_CHINA_MOD_TITLE"
    extraDependencies["82AE6F24-930F-4640-833C-FCDFD4845757"] = "LOC_RULERS_OF_THE_SAHARA_MOD_TITLE"
    extraDependencies["8424840C-92EF-4426-A9B4-B4E0CB818049"] = "Babylon Pack"
    extraDependencies["9DE86512-DE1A-400D-8C0A-AB46EBBF76B9"] = "LOC_GRANCOLOMBIA_MAYA_MOD_TITLE"
    extraDependencies["9ED63236-617C-45A6-BB70-8CB6B0BE8ED2"] = "LOC_JULIUS_CAESAR_MOD_TITLE"
    extraDependencies["A1100FC4-70F2-4129-AC27-2A65A685ED08"] = "LOC_BYZANTIUM_GAUL_MOD_TITLE"
    extraDependencies["A3F42CD4-6C3E-4F5A-BC81-BE29E0C0B87C"] = "LOC_KUBLAIKHAN_VIETNAM_MOD_TITLE"
    extraDependencies["CE5876CD-6900-46D1-9C9C-8DBA1F28872E"] = "LOC_CATHERINE_DE_MEDICI_MOD_TITLE"
    extraDependencies["E2749E9A-8056-45CD-901B-C368C8E83DEB"] = "LOC_MACEDONIA_PERSIA_MOD_TITLE"
    extraDependencies["E3F53C61-371C-440B-96CE-077D318B36C0"] = "LOC_AUSTRALIA_MOD_TITLE"
    extraDependencies["F48213B4-56F5-45DD-92F7-AC78E49BDA49"] = "LOC_GREAT_WARLORDS_MOD_TITLE"
    extraDependencies["FFDF4E79-DEE2-47BB-919B-F5739106627A"] = "LOC_PORTUGAL_MOD_TITLE"
    dependenciesStr = ''
    for key, value in extraDependencies.items():
        dependenciesStr += f'    <Mod id="{key}" title="{value}"/>\n'
    newFileStr = f'''<?xml version="1.0" encoding="UTF-8"?>
<!-- Release ModID-->
<!-- <Mod id="2a0aa96a-a31c-4ce2-87ec-09152f6f3e00" version="1"> -->
<!-- WIP ModID-->
<Mod id="2a0aa96a-a31c-4ce2-87ec-09144f6f3e00" version="1">
  <Properties>
    <Name>BBG Expanded</Name>
    <Description>Expansion of new civs</Description>
    <Authors>{', '.join(sorted_authors)} (alphabetical order)</Authors>
    <SpecialThanks>{', '.join(sorted_special_thanks)} (alphabetical order)</SpecialThanks>
    <CompatibleVersions>1.2,2.0</CompatibleVersions>
  </Properties>\n'''
    newFileStr += f'<Dependencies>\n{dependenciesStr}</Dependencies>\n'
    for key, value in new_mod_dict.items():
        print(key)
        newFileStr += ''.join(value).replace(f'</{key}>\n<{key}>', '')
        # for v in value:
        #     for item in v:
        #         newFileStr += f'item'
        # newFileStr += f'</{key}>\n'
    newFileStr += '</Mod>'
    with open('BBGExpanded.modinfo', 'w') as file:
        file.write(newFileStr)

combine_modinfo_files()