from dotenv import load_dotenv
from datetime import datetime
import os

# Import namespaces
import azure.cognitiveservices.speech as speech_sdk

def main():
    try:
        global speech_config #region and key
        global translation_config #

        # Get Configuration Settings
        load_dotenv(dotenv_path='./.env')
        cog_key = os.getenv('COG_SERVICE_KEY')
        cog_region = os.getenv('COG_SERVICE_REGION')

         # Configure translation
        translation_config = speech_sdk.translation.SpeechTranslationConfig(cog_key, cog_region)
        translation_config.speech_recognition_language = 'en-US'
        translation_config.add_target_language('fr')
        translation_config.add_target_language('es')
        translation_config.add_target_language('hi')
        print('Ready to translate from',translation_config.speech_recognition_language)

         # Configure speech
        speech_config = speech_sdk.SpeechConfig(cog_key, cog_region)

        # Get user input
        targetLanguage = ''
        while targetLanguage != 'quit':
            targetLanguage = input('\nEnter a target language\n fr = French\n es = Spanish\n hi = Hindi\n Enter anything else to stop\n').lower()
            if targetLanguage in translation_config.target_languages:               
                Translate(targetLanguage)
            else:
                targetLanguage = 'quit'
                

    except Exception as ex:
        print(ex)

def Translate(targetLanguage):
    translation = ''
       
    # Translate speech
    #from playsound import playsound
    #audioFile = 'station.wav'
    #playsound(audioFile)

    #Implement Speech Translation

    #audio_config = speech_sdk.AudioConfig(filename=audioFile)
    audio_config = speech_sdk.AudioConfig(use_default_microphone=True)
    translator = speech_sdk.translation.TranslationRecognizer(translation_config, audio_config)
    print("Getting speech from file...")

    #take input from speech and translate
    result = translator.recognize_once_async().get() 
    print('Translating "{}"'.format(result.text))
    translation = result.translations[targetLanguage]
    print(translation)


     # Synthesize translation - which voice to use for each specified language
    voices = {
            "fr": "fr-FR-HenriNeural",
            "es": "es-ES-ElviraNeural",
            "hi": "hi-IN-MadhurNeural"
    }

    # Standard voices are no longer supported for new users as of Sep 1, 2021
    # voices = {
    #         "fr": "fr-FR-Julie",
    #         "es": "es-ES-Laura",
    #         "hi": "hi-IN-Hemant"
    # }
    speech_config.speech_synthesis_voice_name = voices.get(targetLanguage)
    speech_synthesizer = speech_sdk.SpeechSynthesizer(speech_config)
    speak = speech_synthesizer.speak_text_async(translation).get()
    if speak.reason != speech_sdk.ResultReason.SynthesizingAudioCompleted:
        print(speak.reason)




if __name__ == "__main__":
    main()