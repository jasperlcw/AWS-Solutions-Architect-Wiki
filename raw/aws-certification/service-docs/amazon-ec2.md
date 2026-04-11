# Amazon EC2
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/compute-services.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Elastic Compute Cloud (Amazon EC2) is a web service that provides
      secure, resizable compute capacity in the cloud. It is designed to make web-scale computing
      easier for developers.

   The simple web interface of Amazon EC2 allows you to obtain and configure capacity with
      minimal friction. It provides you with complete control of your computing resources and lets
      you run on Amazon's proven computing environment. Amazon EC2 reduces the time required to obtain
      and boot new server instances (called Amazon EC2 instances) to minutes, allowing you to quickly
      scale capacity, both up and down, as your computing requirements change. Amazon EC2 changes the
      economics of computing by allowing you to pay only for capacity that you actually use. Amazon EC2
      provides developers and system administrators the tools to build failure resilient
      applications and isolate themselves from common failure scenarios.

    Instance types

    Amazon EC2 passes on to you the financial benefits of Amazon scale. You pay a very low rate
        for the compute capacity you actually consume. For a more detailed description, refer to
          Amazon EC2 pricing.

    Amazon EC2
          instance types are named based on their family, generation, processor family,
        additional capabilities, and size.

    -
        On-Demand Instances - With On-Demand Instances, you pay
            for compute capacity by the hour or the second depending on which instances you run. No
            longer-term commitments or upfront payments are needed. You can increase or decrease
            your compute capacity depending on the demands of your application and only pay the
            specified per hourly rates for the instance you use. On-Demand Instances are recommended
            for:

        -
            Users that prefer the low cost and flexibility of Amazon EC2 without any up-front
                payment or long-term commitment

-
            Applications with short-term, spiky, or unpredictable workloads that cannot be
                interrupted

-
            Applications being developed or tested on Amazon EC2 for the first time

-
        Spot Instances -Spot Instances
            are available at up to a 90% discount compared to On-Demand prices and let you take
            advantage of unused Amazon EC2 capacity in the AWS Cloud. You can significantly reduce the
            cost of running your applications, grow your application's compute capacity and
            throughput for the same budget, and enable new types of cloud computing applications.
            Spot Instances are recommended for:

        -
            Applications that have flexible start and end times

-
            Applications that are only feasible at very low compute prices

-
            Users with urgent computing needs for large amounts of additional
                capacity

-
        Reserved Instances - Reserved Instances provide
            you with a significant discount (up to 72%) compared to On-Demand Instance pricing. You
            have the flexibility to change families, operating system types, and tenancies while
            benefiting from Reserved Instance pricing when you use Convertible Reserved Instances.

-
        C7g Instances - C7g Instances, powered by
            the latest generation AWS Graviton3 processors, provide the best price performance in
            Amazon EC2 for compute-intensive workloads. C7g instances are ideal for high performance
            computing (HPC), batch processing, electronic design automation (EDA), gaming, video
            encoding, scientific modeling, distributed analytics, CPU-based ML inference, and ad
            serving.

-
        Inf2 Instances - Inf2 Instances are
            purpose--built for deep learning inference. They deliver high performance at the lowest
            cost in Amazon EC2 for generative AI models, including large language models (LLMs) and
            vision transformers. Inf2 instances are powered by AWS Inferentia2, the
            second-generation AWS Inferentia accelerator.

-
        M7g Instances -  M7g instances, powered by
            the latest generation AWS Graviton3 processors, provide the best price performance in
            Amazon EC2 for general purpose workloads. M7g instances are ideal for applications built on
            open-source software such as application servers, microservices, gaming servers,
            mid-size data stores, and caching fleets.

-
        R7g Instances - R7g Instances, powered by
            the latest generation AWS Graviton3 processors, provide the best price performance in
            Amazon EC2 for memory-intensive workloads. R7g instances are ideal for memory-intensive
            workloads such as open-source databases, in-memory caches, and near real-time big data
            analytics.

-
        Trn1 Instances - Trn1 Instances, powered
            by AWS Trainium
            accelerators, are purpose-built for high-performance deep learning training of
            generative AI models, including LLMs and latent diffusion models. Trn1 instances offer
            up to 50% cost-to-train savings over other comparable Amazon EC2 instances.

-
        Savings Plans - Savings Plans are a flexible pricing model that offer low prices on EC2 and Fargate
            usage, in exchange for a commitment to a consistent amount of usage (measured in $/hour)
            for a one or three year term.

-
        Dedicated Hosts - A Dedicated Host is a physical EC2 server
            dedicated for your use. Dedicated Hosts can help you reduce costs by allowing you to use
            your existing server-bound software licenses, including Windows Server, Microsoft SQL
            Server, and SUSE Linux Enterprise Server (subject to your license terms), and can also
            help you meet compliance requirements.

