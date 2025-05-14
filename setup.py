import base64
import json
import os
import sys
import yaml
import requests
import time
from requests.auth import HTTPBasicAuth
from typing import Tuple, Optional, Dict, Union, Any

from yaml import Dumper


def generate_basic_auth_header(username, password):
    value_to_encode = f"{username}:{password}"
    encoded_value = base64.b64encode(value_to_encode.encode()).decode()
    return f"Basic {encoded_value}"

def push_app(app_path):
    #return "bs://da7dff5e49f56eded3932b2ffaedade0746e25b0" #  temporary
    username = os.environ["BS_USER"]
    token = os.environ["BS_TOKEN"]
    url = "https://api-cloud.browserstack.com/app-automate/upload"

    payload = {}
    files = [
        ('file', (app_path, open(app_path, 'rb'), 'application/octet-stream'))
    ]
    headers = {
        'Authorization': generate_basic_auth_header(username,token)
    }

    response = requests.request("POST", url, headers=headers, data=payload, files=files)
    print(response)
    data = json.loads(response.text)
    app_url=data['app_url']
    print(app_url)
    return app_url






    #
    # body = {
    #     "networkProfile": "no-network" if offline else "4g-lte-good"
    # }
    #
    # url = f"https://api-cloud.browserstack.com/app-live/upload"
    # headers = {
    #     "Content-Type": "application/json"
    # }
    #
    # try:
    #     # Send the PUT request
    #     response = requests.put(
    #         url,
    #         json=body,
    #         headers=headers,
    #         auth=HTTPBasicAuth(username, token)
    #     )
    #     print(response.text)


def create_yaml(mobile_os,cycle_name,app_path) -> None:
    if mobile_os.lower() == "android":
        print("creating yaml for Android")
        # push_app("20.apk")
        get_bs_yaml(cycle_name,create_platform("Android", "Samsung Galaxy S23", "13.0", ""),push_app(app_path))
    elif mobile_os.lower() == "ios":
        print("creating yaml for ios")
        get_bs_yaml(cycle_name,create_platform("iOS", "iPhone 12", "","17"),push_app(app_path))
    else:
        print(f"Mobile OS not supported: {mobile_os}")


def create_platform(mobile_os: str, device_name: str, os_version: str, platform_version: str = "") -> dict[
    Union[str, Any], str]:
    return {
        "os": mobile_os,
        "osVersion": os_version,
        "deviceName": device_name,
        "browserName": "",
        "platformVersion": platform_version
    }


def get_bs_yaml(cycle_name, platform,app_url):
    username = os.environ["BS_USER"]
    token = os.environ["BS_TOKEN"]
    bs_json = {
        "userName": username,
        "accessKey": token,
        "projectName": "SIAE QA",
        "buildName": "Cycle Name: "+ cycle_name,
        "buildIdentifier": "1",
        "app": app_url,
        "framework": "cucumber-testng",
        "platforms": [platform],
        "parallelsPerPlatform": 1,
        "browserstackLocal": False,
        "browserStackLocalOptions": {"forceLocal": False},
        "debug": True,
        "networkLogs": False,
        "consoleLogs": "errors",
        "idleTimeout": 300
    }
    print(bs_json)

    bs_file_name = f'browserstack.yml'
    # yaml.add_representer(str, Dumper.represent_scalar(self="",tag='tag:yaml.org,2002:str', value="SIAE QA", style="'"))
    with open(bs_file_name, 'w') as f:
        yaml.dump(bs_json, f, default_flow_style=False,sort_keys=False)
    return bs_file_name


create_yaml(os.environ["MOBILE_OS"],os.environ["CYCLE_NAME"],os.environ["APP_PATH"])
