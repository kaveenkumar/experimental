"""Translator api for converting text from one language to another language;
Uses https://pypi.org/project/translate/ in the backend

Different translation providers available:
    'mymemory': MyMemoryProvider,
    'microsoft': MicrosoftProvider,
    'deepl': DeeplProvider,
    'libre': LibreProvider,
"""

from translate import Translator

if __name__ == '__main__':
    main()
