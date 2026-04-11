# SAA-C03 Machine Learning And Media Services
> Sources: AWS Documentation (Per-Service Docs Corpus), 2026-04-09; AWS Documentation (In-Scope Services), 2026-04-09
> Raw: [Amazon Comprehend](amazon-comprehend.md); [Amazon Kendra](amazon-kendra.md); [Amazon Lex](amazon-lex.md); [Amazon Polly](amazon-polly.md); [Amazon Rekognition](amazon-rekognition.md); [Amazon SageMaker AI](amazon-sagemaker-ai.md); [Amazon Textract](amazon-textract.md); [Amazon Transcribe](amazon-transcribe.md); [Amazon Translate](amazon-translate.md); [Amazon Elastic Transcoder](amazon-elastic-transcoder.md); [Amazon Kinesis Video Streams](amazon-kinesis-video-streams.md); [In-Scope Services](../../raw/aws-certification/2026-04-09-saa-c03-in-scope-services.md)
> Updated: 2026-04-09

## Overview

These services are generally lower-yield than core compute, storage, networking, or database choices, but AWS still expects recognition-level familiarity. The exam usually tests what capability each service provides and how it fits into a broader architecture rather than deep model or media-pipeline details.

## Machine Learning Capability Services

- Amazon Comprehend: text analysis such as sentiment, entities, and classification.
- Amazon Kendra: enterprise search over indexed content.
- Amazon Lex: chatbot and conversational interface service.
- Amazon Polly: text-to-speech.
- Amazon Rekognition: image and video analysis.
- Amazon SageMaker AI: managed platform for building, training, and deploying ML models.
- Amazon Textract: OCR plus structured extraction from forms and tables.
- Amazon Transcribe: speech-to-text.
- Amazon Translate: machine translation.

## Media Services

- Amazon Elastic Transcoder: managed media transcoding between formats.
- Amazon Kinesis Video Streams: ingestion and storage of video streams for analytics, ML, or playback.

## Exam Heuristics

- Treat these services as capability matches. The question usually gives a clue such as "extract text from forms," "convert text to speech," "analyze images," or "build a chatbot."
- If the prompt is mostly about infrastructure and only one step involves ML or media, choose the service that provides that capability while keeping the rest of the architecture simple.

## See Also

- [SAA-C03 In-Scope Service Catalog](saa-c03-in-scope-service-catalog.md)
- [AWS Analytics Cheat Sheet](aws-analytics-cheat-sheet.md)
