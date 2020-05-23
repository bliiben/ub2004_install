import os
import re

os.system('./articles/run.sh')
with open('index.html.template') as indexfile:
    index = indexfile.read()

html_files = []
for _, _, filenames in os.walk('./articles'):
    for filename in filenames:
        if re.match(r'.*\.html$', filename):
            html_files.append(filename)

html_files = sorted(html_files, reverse=True)
articles = ''
articles_links = '<ul>'
for i in range (min(len(html_files),5)):
    with open('./articles/'+html_files[i]) as article:
        articles += '<article>\n' + article.read() + '</article>\n' 

for html_file in html_files:
    link_value = html_file[8:].replace('_', ' ')
    link_value = link_value.replace('.html','')
    articles_links += '<li><a href="./articles/{}">{}</a> '.format(html_file,
            link_value)

articles_links += '</ul>'
with open('index.html','w') as indexfile:
    indexfile.write(index.format(articles=articles, articles_links=articles_links))

