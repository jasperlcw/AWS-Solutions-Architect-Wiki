# What is AWS Lambda?
> Source: https://docs.aws.amazon.com/lambda/latest/dg/welcome.html
> Collected: 2026-04-09
> Published: Unknown

AWS Lambda is a compute service that runs code without the need to manage servers. Your code runs, scaling up and down automatically, with pay-per-use pricing.

You can use Lambda for:

- File processing, such as processing files automatically when uploaded to Amazon S3.
- Long-running workflows using durable Lambda functions for stateful, multi-step workflows that can run for up to one year.
- Database operations and integration examples that respond to database changes and automate data workflows.
- Scheduled and periodic tasks using EventBridge.
- Stream processing for real-time data streams.
- Web applications.
- Mobile backends.
- IoT backends.

## How Lambda works

When using Lambda, you are responsible only for your code. Lambda runs your code on a high-availability compute infrastructure and manages all the computing resources, including server and operating system maintenance, capacity provisioning, automatic scaling, and logging.

Because Lambda is a serverless, event-driven compute service, it uses a different programming paradigm than traditional web applications:

1. You write and organize your code in Lambda functions.
2. You control security and access through Lambda permissions, using execution roles to manage what AWS services your functions can interact with and what resource policies can interact with your code.
3. Event sources and AWS services trigger your Lambda functions, passing event data in JSON format.
4. Lambda runs your code with language-specific runtimes in execution environments that package your runtime, layers, and extensions.

## Key features

Configure, control, and deploy secure applications:

- Environment variables
- Versions
- Lambda layers
- Code signing

Scale and perform reliably:

- Concurrency and scaling controls
- Lambda SnapStart
- Response streaming
- Container images

Connect and integrate seamlessly:

- VPC networks
- File system integration
- Function URLs
- Lambda extensions
