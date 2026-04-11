# Amazon Transcribe
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/machine-learning.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Transcribe is an automatic speech recognition (ASR)
   service that makes it easy for customers to automatically convert speech to text. The service can
   transcribe audio files stored in common formats, like WAV and MP3, with time stamps for every
   word so that you can easily locate the audio in the original source by searching for the text.
   You can also send a live audio stream to Amazon Transcribe and receive a stream of transcripts in real time.
   Amazon Transcribe is designed to handle a wide range of speech and acoustic characteristics, including
   variations in volume, pitch, and speaking rate. The quality and content of the audio signal
   (including but not limited to factors such as background noise, overlapping speakers, accented
   speech, or switches between languages within a single audio file) may affect the accuracy of
   service output. Customers can choose to use Amazon Transcribe for a variety of business applications,
   including transcription of voice-based customer service calls, generation of subtitles on
   audio/video content, and conduct (text based) content analysis on audio/video content.

  Two very important services derived from Amazon Transcribe include Amazon Transcribe Medical and Amazon Transcribe Call Analytics.

  Amazon Transcribe Medical uses advanced ML models to accurately transcribe medical speech into text.
   Amazon Transcribe Medical can generate text transcripts that can be used to support a variety of use cases,
   spanning clinical documentation workflow and drug safety monitoring (pharmacovigilance) to
   subtitling for telemedicine and even contact center analytics in the healthcare and life sciences
   domains.

  Amazon Transcribe Call Analytics is an AI-powered API that provides rich call transcripts and actionable
   conversation insights that you can add into their call applications to improve customer
   experience and agent productivity. It combines powerful speech-to-text and custom natural
   language processing (NLP) models that are trained specifically to understand customer care and
   outbound sales calls. As a part of AWS
    Contact Center Intelligence (CCI) solutions, this API is contact center agnostic and
   makes it easy for customers and ISVs to add call analytics capabilities into their
   applications.

  The easiest way to get started with Amazon Transcribe is to submit a job using the console to transcribe
   an audio file. You can also call the service directly from the AWS Command Line Interface, or use one of the
   supported SDKs of your choice to integrate with your applications.

