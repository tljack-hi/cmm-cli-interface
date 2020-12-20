#!/usr/bin/env python
# This is my btc.py script.
import requests
response = requests.get('https://api.crex24.com/v2/public/tickers?instrument=CMM-BTC')
data = response.json()
#print(data[0]["bid"])

print('%10.8f' %(data[0]["last"]))
