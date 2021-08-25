"""Translator api for converting text from one language to another language;
Uses https://pypi.org/project/translate/ in the backend

Different translation providers available:
    'mymemory': MyMemoryProvider,
    'microsoft': MicrosoftProvider,
    'deepl': DeeplProvider,
    'libre': LibreProvider,
"""

from translate import Translator


class TextTranslator:
    """custom translator api"""

    def __init__(self, src_lang='autodetect', dst_lang='en', provider='mymemory', key=None, base_url=None):
        self.source_language = src_lang
        self.destination_language = dst_lang
        self.translate_provider = provider
        self.secret_access_key = key
        self.base_url = base_url

    def translate(self, source_text):
        """method that translates given text"""

        translator = Translator(from_lang=self.source_language,
                                to_lang=self.destination_language,
                                provider=self.translate_provider,
                                secret_access_key=self.secret_access_key,
                                base_url=self.base_url)

        destination_text = translator.translate(source_text)
        return destination_text


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
