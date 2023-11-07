#!/usr/bin/python3
"""
Script to fetch data from reddit
"""
import requests
import json

def number_of_subscribers(subreddit):
    """ returns subscribers based on subreddit """
    url = f"https://www.reddit.com/r/{subreddit}/about"
    response = requests.get(url)
    if response.status_code == 200:
        return json.dumps(response)
    else:
        return None
