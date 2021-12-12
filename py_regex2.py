import re

emails = '''
kaveenkumar@gmail.com
kaveen.kumar@university.edu
kaveen-123-kumar@my-work.net
'''

pattern = re.compile(r'[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+')

matches = pattern.finditer(emails)

for match in matches:
    print(match)
