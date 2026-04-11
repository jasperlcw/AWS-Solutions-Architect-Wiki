# Amazon SageMaker AI
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/machine-learning.html
> Collected: 2026-04-09
> Published: Unknown

With Amazon SageMaker AI,  you can build, train, and
   deploy ML models for any use case with fully managed infrastructure, tools, and workflows. SageMaker AI
   removes the heavy lifting from each step of the ML process to make it easier to develop
   high-quality models. SageMaker AI provides all of the components used for ML in a single toolset so
   models get to production faster with much less effort and at lower cost.

    Amazon SageMaker AI Autopilot

     Amazon SageMaker AI Autopilot
    automatically builds, trains, and tunes the best ML models based on your data, while allowing
    you to maintain full control and visibility. With SageMaker AI Autopilot, you simply provide a tabular
    dataset and select the target column to predict, which can be a number (such as a house price,
    called regression), or a category (such as spam/not spam, called classification). SageMaker AI Autopilot
    will automatically explore different solutions to find the best model. You then can directly
    deploy the model to production with just one click, or iterate on the recommended solutions with
    Amazon SageMaker AI Studio to further improve the model quality.

    Amazon SageMaker AI Canvas

    Amazon SageMaker AI Canvas expands
    access to ML by providing business analysts with a visual point-and-click interface that allows
    them to generate accurate ML predictions on their own - without requiring any ML experience or
    having to write a single line of code.

    Amazon SageMaker AI Clarify

    Amazon SageMaker AI Clarify provides
    machine learning developers with greater visibility into their training data and models so they
    can identify and limit bias and explain predictions. Amazon SageMaker AI Clarify detects potential bias
    during data preparation, after model training, and in your deployed model by examining
    attributes you specify. SageMaker AI Clarify also includes feature importance graphs that help you
    explain model predictions and produces reports which can be used to support internal
    presentations or to identify issues with your model that you can take steps to correct.

    Amazon SageMaker AI Data Labeling

    Amazon SageMaker AI provides data
     labeling offerings to identify raw data, such as images, text files, and videos, and
    add informative labels to create high-quality training datasets for your ML models.

    Amazon SageMaker AI Data Wrangler

    Amazon SageMaker AI Data Wrangler
    reduces the time it takes to aggregate and prepare data for ML from weeks to minutes. With SageMaker AI
    Data Wrangler, you can simplify the process of data preparation and feature engineering, and
    complete each step of the data preparation workflow, including data selection, cleansing,
    exploration, and visualization from a single visual interface.

    Amazon SageMaker AI Edge

    Amazon SageMaker AI Edge enables machine
    learning on edge devices by optimizing, securing, and deploying models to the edge, and then
    monitoring these models on your fleet of devices, such as smart cameras, robots, and other
    smart-electronics, to reduce ongoing operational costs. SageMaker AI Edge Compiler optimizes the trained
    model to be runnable on an edge device. SageMaker AI Edge includes an over-the-air (OTA) deployment
    mechanism that helps you deploy models on the fleet independent of the application or device
    firmware. SageMaker AI Edge Agent allows you to run multiple models on the same device. The Agent
    collects prediction data based on the logic that you control, such as intervals, and uploads it
    to the cloud so that you can periodically retrain your models over time.

    Amazon SageMaker AI Feature Store

    Amazon SageMaker AI Feature Store
    is a purpose-built repository where you can store and access features so it's much easier to
    name, organize, and reuse them across teams. SageMaker AI Feature Store provides a unified store for
    features during training and real-time inference without the need to write additional code or
    create manual processes to keep features consistent. SageMaker AI Feature Store keeps track of the
    metadata of stored features (such as feature name or version number) so that you can query the
    features for the right attributes in batches or in real time using Amazon Athena, an interactive
    query service. SageMaker AI Feature Store also keeps features updated, because as new data is generated
    during inference, the single repository is updated so new features are always available for
    models to use during training and inference.

    Amazon SageMaker AI geospatial capabilities

    Amazon SageMaker AI geospatial
     capabilities make it easier for data scientists and machine learning (ML) engineers to
    build, train, and deploy ML models faster using geospatial data. You have access to data
    (open-source and third-party), processing, and visualization tools to make it more efficient to
    prepare geospatial data for ML. You can increase your productivity by using purpose-built
    algorithms and pre-trained ML models to speed up model building and training, and use built-in
    visualization tools to explore prediction outputs on an interactive map and then collaborate
    across teams on insights and results.

    Amazon SageMaker AI HyperPod

    Amazon SageMaker AI HyperPod removes the
    undifferentiated heavy lifting involved in building and optimizing machine learning (ML)
    infrastructure for large language models (LLMs), diffusion models, and foundation models (FMs).
    SageMaker AI HyperPod is pre-configured with distributed training libraries that enable customers to
    automatically split training workloads across thousands of accelerators, such as AWS Trainium, and
    NVIDIA A100 and H100 Graphical Processing Units (GPUs).

    SageMaker AI HyperPod also helps ensure that you can continue training uninterrupted by
    periodically saving checkpoints. When a hardware failure occurs, self-healing clusters
    automatically detect the failure, repair or replace the faulty instance, and resume the training
    from the last saved checkpoint, removing the need for you to manually manage this process and
    helping you train for weeks or months in a distributed setting without disruption. You can
    customize your computing environment to best suit your needs and configure it with the Amazon SageMaker AI
    distributed training libraries to achieve optimal performance on AWS.

    Amazon SageMaker AI JumpStart

    Amazon SageMaker AI JumpStart helps
    you quickly and easily get started with ML. To make it easier to get started, SageMaker AI JumpStart
    provides a set of solutions for the most common use cases that can be deployed readily with just
    a few clicks. The solutions are fully customizable and showcase the use of AWS CloudFormation templates
    and reference architectures so you can accelerate your ML journey. Amazon SageMaker AI JumpStart also
    supports one-click deployment and fine-tuning of more than 150 popular open-source models such
    as natural language processing, object detection, and image classification models.

    Amazon SageMaker AI Model Building

    Amazon SageMaker AI provides all the tools and libraries you need to build ML models, the process of iteratively trying different
    algorithms and evaluating their accuracy to find the best one for your use case. In Amazon SageMaker AI you
    can pick different algorithms, including over 15 that are built-in and optimized for SageMaker AI, and
    use over 750 pre-built models from popular model zoos available with a few clicks. SageMaker AI also
    offers a variety of model building tools, including Amazon SageMaker AI Studio Notebooks, JupyterLab,
    RStudio, and Code Editor based on Code-OSS (Virtual Studio Code Open Source), where you can run
    ML models on a small scale to see results and view reports on their performance so you can come
    up with high-quality working prototypes.

    Amazon SageMaker AI Model Training

    Amazon SageMaker AI reduces the time and cost to train and tune ML models at scale without the need to manage infrastructure. You can
    take advantage of the highest-performing ML compute infrastructure currently available, and SageMaker AI
    can automatically scale infrastructure up or down, from one to thousands of GPUs. Since you pay
    only for what you use, you can manage your training costs more effectively. To train deep
    learning models faster, you can use the Amazon SageMaker AI distributed training libraries for better
    performance or use third-party libraries such as DeepSpeed, Horovod, or Megatron.

    Amazon SageMaker AI Model Deployment

    Amazon SageMaker AI makes it easy to deploy ML
     models to make predictions (also known as inference) at the best price-performance for
    any use case. It provides a broad selection of ML infrastructure and model deployment options to
    help meet all your ML inference needs. It is a fully managed service and integrates with MLOps
    tools, so you can scale your model deployment, reduce inference costs, manage models more
    effectively in production, and reduce operational burden.

    Amazon SageMaker AI Pipelines

    Amazon SageMaker AI Pipelines is the
    first purpose-built, easy-to-use continuous integration and continuous delivery (CI/CD) service
    for ML. With SageMaker AI Pipelines, you can create, automate, and manage end-to-end ML workflows at
    scale.

    Amazon SageMaker AI Studio Lab

    Amazon SageMaker AI Studio Lab is a
    free ML development environment that provides the compute, storage (up to 15GB), and
    security-all at no cost-for anyone to learn and experiment with ML. All you need to get started
    is a valid email address-you don't need to configure infrastructure or manage identity and
    access or even sign up for an AWS account. SageMaker AI Studio Lab accelerates model building through
    GitHub integration, and it comes preconfigured with the most popular ML tools, frameworks, and
    libraries to get you started immediately. SageMaker AI Studio Lab automatically saves your work so you
    don't need to restart in between sessions. It's as easy as closing your laptop and coming back
    later.

    Apache MXNet on AWS

    Apache MXNet is a fast and
    scalable training and inference framework with an easy-to-use, concise API for ML. MXNet includes the Gluon interface that allows developers of all skill levels to get started with deep
    learning on the cloud, on edge devices, and on mobile apps. In just a few lines of Gluon code,
    you can build linear regression, convolutional networks and recurrent LSTMs for object
    detection, speech recognition, recommendation, and personalization. You can get started with
    MxNet on AWS with a fully managed experience using Amazon SageMaker AI, a platform to build, train, and deploy
    ML models at scale. Or, you can use the AWS Deep Learning AMIs to build custom
    environments and workflows with MxNet as well as other frameworks including TensorFlow, PyTorch, Chainer, Keras, Caffe,
    Caffe2, and Microsoft Cognitive Toolkit.

    AWS Deep Learning AMIs

    The AWS Deep Learning AMIs provide ML
    practitioners and researchers with the infrastructure and tools to accelerate deep learning in
    the cloud, at any scale. You can quickly launch Amazon EC2 instances pre-installed with popular
    deep learning frameworks and interfaces such as TensorFlow, PyTorch, Apache MXNet, Chainer,
    Gluon, Horovod, and Keras to train sophisticated, custom AI models, experiment with new
    algorithms, or to learn new skills and techniques. Whether you need Amazon EC2 GPU or CPU
    instances, there is no additional charge for the Deep Learning AMIs - you only pay for the AWS resources
    needed to store and run your applications.

    AWS Deep Learning Containers

    AWS Deep Learning
     Containers (AWS DL Containers) are Docker images pre-installed with deep learning
    frameworks to make it easy to deploy custom machine learning (ML) environments quickly by
    letting you skip the complicated process of building and optimizing your environments from
    scratch. AWS DL Containers support TensorFlow, PyTorch, Apache MXNet. You can deploy AWS DL
    Containers on Amazon SageMaker AI, Amazon Elastic Kubernetes Service (Amazon EKS), self-managed Kubernetes on Amazon EC2, Amazon Elastic Container Service (Amazon ECS).
    The containers are available through Amazon Elastic Container Registry (Amazon ECR) and AWS Marketplace at no cost-you pay only for the resources that you use.

    Geospatial ML with Amazon SageMaker AI

    Amazon SageMaker AI geospatial
     capabilities allow data scientists and ML engineers to build, train, and deploy ML
    models using geospatial data faster and at scale. You can access readily available geospatial
    data sources, efficiently transform or enrich large-scale geospatial datasets with purpose-built
    operations, and accelerate model building by selecting pretrained ML models. You can also
    analyze geospatial data and explore model predictions on an interactive map using 3D accelerated
    graphics with built-in visualization tools. SageMaker Runtime geospatial capabilities can be used for
    a wide range of use cases, such as maximizing harvest yield and food security, assessing risk
    and insurance claims, supporting sustainable urban development, and forecasting retail site
    utilization.

    Hugging Face on AWS

    With Hugging Face on
    Amazon SageMaker AI, you can deploy and fine-tune pre-trained models from Hugging Face, an
    open-source provider of natural language processing (NLP) models known as Transformers, reducing
    the time it takes to set up and use these NLP models from weeks to minutes. NLP refers to ML
    algorithms that help computers understand human language. They help with translation,
    intelligent search, text analysis, and more. However, NLP models can be large and complex
    (sometimes consisting of hundreds of millions of model parameters), and training and optimizing
    them requires time, resources, and skill. AWS collaborated with Hugging Face to create Hugging
    Face AWS Deep Learning Containers (DLCs), which provide data scientists and ML developers a
    fully managed experience for building, training, and deploying state-of-the-art NLP models on
    Amazon SageMaker AI.

    PyTorch on AWS

    PyTorch is an open-source deep
    learning framework that makes it easy to develop machine learning models and deploy them to
    production. Using TorchServe, PyTorch's model serving library built and maintained by AWS in
    partnership with Facebook, PyTorch developers can quickly and easily deploy models to
    production. PyTorch also provides dynamic computation graphs and libraries for distributed
    training, which are tuned for high performance on AWS. You can get started with PyTorch on
    AWS using Amazon SageMaker, a fully
    managed ML service that makes it easy and cost-effective to build, train, and deploy PyTorch
    models at scale. If you prefer to manage the infrastructure yourself, you can use the AWS Deep Learning AMIs or the AWS Deep Learning
      Containers, which come built from source and optimized for performance with the latest
    version of PyTorch to quickly deploy custom machine learning environments.

    TensorFlow on AWS

    TensorFlow is one of many deep
    learning frameworks available to researchers and developers to enhance their applications with
    machine learning. AWS provides broad support for TensorFlow, enabling customers to develop and
    serve their own models across computer vision, natural language processing, speech translation,
    and more. You can get started with TensorFlow on AWS using Amazon SageMaker AI, a fully managed ML service that makes
    it easy and cost-effective to build, train, and deploy TensorFlow models at scale. If you prefer
    to manage the infrastructure yourself, you can use the AWS Deep Learning AMIs or the AWS Deep Learning
     Containers, which come built from source and optimized for performance with the latest
    version of TensorFlow to quickly deploy custom ML environments.

