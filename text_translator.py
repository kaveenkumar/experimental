"""Translator api for converting text from one language to another language;
Uses https://pypi.org/project/translate/ in the backend

Different translation providers available:
    'mymemory': MyMemoryProvider,
    'microsoft': MicrosoftProvider,
    'deepl': DeeplProvider,
    'libre': LibreProvider,
"""

from translate import Translator

def main():
    """main function for translation"""
    source_text = "Guten Morgen"  # input text to be translated
    source_language = ''  # input text language
    destination_language = 'en'  # output text language
    translation_provider = 'mymemory'  # refer to docstring for all available providers
    base_url = """https://translate.astian.org/"""  # necessary if the provider is libre

    translator = TextTranslator(src_lang=source_language, dst_lang=destination_language, provider=translation_provider, base_url=base_url)
    destination_text = translator.translate(source_text)

    print(destination_text)
    

if __name__ == '__main__':
    main()
