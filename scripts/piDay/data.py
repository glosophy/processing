import urllib
import pandas as pd

gist = 'https://raw.githubusercontent.com/eneko/Pi/master/Pi10KDP.txt'
file = urllib.request.urlopen(gist)

text = []
for line in file:
    text.append(line.decode('utf-8'))

# create a list with each decimal as element
decimals = []
for i in text:
    for j in i:
        decimals.append(j)

# create csv from list
dicts = {'decimals': decimals}
df = pd.DataFrame(dicts)
df.to_csv('decimals.csv', index=False)