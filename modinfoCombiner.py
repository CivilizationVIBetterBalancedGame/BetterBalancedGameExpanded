from bs4 import BeautifulSoup
import xml.etree.ElementTree as ET
import os
import re

def get_mod_folders():
    """
    Returns a list of all folders in the current directory whose names start with 'Mod'.
    """
    # return [
    #     name for name in os.listdir('.')
    #     if os.path.isdir(name)
    # ]
    return [
        'DistrictIcons',
        'NorthAmerica/ThuleKiviuq',
        'Europe/GaulVercingetorix'
    ]

def combine_modinfo_files():
    new_mod_dict = {}
    mod_cnt = 0
    author_dict = {}
    author_dict['Calcifer'] = 1
    author_dict['Apeul'] = 1
    for mod in get_mod_folders():
        modinfo_path = os.path.join(mod, "files.xml")
        if os.path.exists(modinfo_path):
            with open(modinfo_path, 'r', encoding='utf-8') as file:
                data = file.read()

            Bs_data = BeautifulSoup(data, "xml")
            
            file_tags = Bs_data.find_all("File")
            # Append the string in each File tag with the mod folder name
            for b in file_tags:
                b.string = f'{mod}/{b.string}'
            
            lua_replace_tags = Bs_data.find_all("LuaReplace")
            for b in lua_replace_tags:
                print(f'LuaReplace tag: {b}')
                b.string = f'{mod}/{b.string}'
            
            load_order_tags = Bs_data.find_all("LoadOrder")
            # Append the string in each File tag with the mod folder name
            for b in load_order_tags:
                b.string = f'{999-mod_cnt}{b.string}'
                
            author_tags = Bs_data.find_all("Authors")
            for tag in author_tags:
                delimiters = r'[;,\s]+'
                for author in re.split(delimiters, tag.string):
                    author_dict[author] = 1

            for b in Bs_data.find('Mod'):
                if b.name == 'Properties' or b.name == None:
                    continue
                if b.name not in new_mod_dict:
                    new_mod_dict[b.name] = ''
                new_mod_dict[b.name] = new_mod_dict[b.name] + str(b) + '\n'
            # break
        mod_cnt = mod_cnt + 1
    newFileStr = f'''<?xml version="1.0" encoding="UTF-8"?>
<Mod id="2a0aa96a-a31c-4ce2-87ec-09152f6f3e00" version="1">
  <Properties>
    <Name>BBG Expanded</Name>
    <Description>Expansion of new civs</Description>
    <Authors>{', '.join(author_dict)}</Authors>
    <CompatibleVersions>1.2,2.0</CompatibleVersions>
  </Properties>'''
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