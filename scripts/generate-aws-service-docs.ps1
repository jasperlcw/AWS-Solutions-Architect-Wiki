Add-Type -AssemblyName System.Web

$root = 'C:\Users\mythinkpad\Documents\AWS-Solutions-Architect'
$docsDir = Join-Path $root 'raw\aws-doc-pages'
$outDir = Join-Path $root 'raw\aws-certification\service-docs'
New-Item -ItemType Directory -Force -Path $outDir | Out-Null

function Normalize-Text([string]$text) {
    if (-not $text) { return '' }
    $text = $text -replace '(?is)<script.*?</script>', ''
    $text = $text -replace '(?is)<style.*?</style>', ''
    $text = $text -replace '(?i)<br\s*/?>', "`n"
    $text = $text -replace '(?i)</p>', "`n`n"
    $text = $text -replace '(?i)</li>', "`n"
    $text = $text -replace '(?i)<li[^>]*>', '- '
    $text = $text -replace '(?i)</h\d>', "`n`n"
    $text = $text -replace '(?i)<h\d[^>]*>', ''
    $text = $text -replace '(?i)</?(ul|ol|div|section|span|a|awsui-icon|awsdocs[^>]*)[^>]*>', ''
    $text = $text -replace '<[^>]+>', ''
    $text = [System.Web.HttpUtility]::HtmlDecode($text)
    $text = $text -replace 'Â ', ' '
    $text = $text -replace 'Ã¢Â€Âœ', '"'
    $text = $text -replace 'Ã¢Â€Â', '"'
    $text = $text -replace 'â', '"'
    $text = $text -replace 'â', '"'
    $text = $text -replace 'â', "'"
    $text = $text -replace 'â', '-'
    $text = $text -replace 'â', '-'
    $text = $text -replace 'ï¬', 'fi'
    $text = $text -replace 'ï¬', 'fl'
    $text = $text -replace 'traÃ¯Â¬Âƒc', 'traffic'
    $text = $text -replace 'oÃ¯Â¬Â€ers', 'offers'
    $text = $text -replace '\bQuick\b', 'Amazon QuickSuite'
    $text = $text -replace 'QuickSight lets', 'Amazon QuickSuite lets'
    $text = $text -replace '\r', ''
    $text = ($text -split "`n").ForEach({ $_.TrimEnd() }) -join "`n"
    $text = $text -replace "`n{3,}", "`n`n"
    return $text.Trim()
}

function Extract-Section([string]$fileName, [string]$headingId) {
    $path = Join-Path $docsDir $fileName
    $html = Get-Content -Raw -Path $path
    $pattern = '(?is)<h2 id="' + [regex]::Escape($headingId) + '">.*?</h2>(.*?)(?=<h2 id="|</div></div></div></body>)'
    $match = [regex]::Match($html, $pattern)
    if (-not $match.Success) { throw "Could not extract heading '$headingId' from $fileName" }
    return Normalize-Text $match.Groups[1].Value
}

$manual = @{}
$manual['aws-budgets'] = @{ Title='AWS Budgets'; Source='https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-managing-costs.html'; Body=@"
You can use AWS Budgets to track and take action on your AWS costs and usage. You can use AWS Budgets to monitor your aggregate utilization and coverage metrics for your Reserved Instances (RIs) or Savings Plans.

You can use AWS Budgets to enable simple-to-complex cost and usage tracking. Some examples include:

- Setting a monthly cost budget with a fixed target amount to track all costs associated with your account. You can choose to be alerted for both actual (after accruing) and forecasted (before accruing) spends.
- Setting a monthly cost budget with a variable target amount, with each subsequent month growing the budget target by 5 percent.
- Setting a monthly usage budget with a fixed usage amount and forecasted notifications.
- Setting a daily utilization or coverage budget to track your RI or Savings Plans.
- Setting a custom period budget that aligns with your fiscal year, project duration, or grant period.

AWS Budgets information is updated up to three times a day.
"@ }

$manual['aws-cost-explorer'] = @{ Title='AWS Cost Explorer'; Source='https://docs.aws.amazon.com/cost-management/latest/userguide/ce-what-is.html'; Body=@"
AWS Cost Explorer is a tool that enables you to view and analyze your costs and usage. You can explore your usage and costs using the main graph, the Cost Explorer cost and usage reports, or the Cost Explorer RI reports.

You can view data for up to the last 13 months, forecast how much you're likely to spend for the next 18 months, and get recommendations for what Reserved Instances to purchase. You can use Cost Explorer to identify areas that need further inquiry and see trends that you can use to understand your costs.

You can view your costs and usage using the Cost Explorer user interface free of charge. You can also access your data programmatically using the Cost Explorer API.
"@ }

$manual['aws-cost-and-usage-report'] = @{ Title='AWS Cost and Usage Report'; Source='https://docs.aws.amazon.com/cur/latest/userguide/what-is-cur.html'; Body=@"
AWS Cost and Usage Reports (AWS CUR) contains the most comprehensive set of cost and usage data available. You can use Cost and Usage Reports to publish your AWS billing reports to an Amazon Simple Storage Service (Amazon S3) bucket that you own.

You can receive reports that break down your costs by the hour, day, or month, by product or product resource, or by tags that you define yourself. AWS updates the report in your bucket once a day in comma-separated value (CSV) format.

AWS Cost and Usage Reports tracks your AWS usage and provides estimated charges associated with your account. Each report contains line items for each unique combination of AWS products, usage type, and operation that you use in your AWS account.
"@ }

$manual['savings-plans'] = @{ Title='Savings Plans'; Source='https://docs.aws.amazon.com/savingsplans/latest/userguide/what-is-savings-plans.html'; Body=@"
Savings Plans provide savings beyond On-Demand rates in exchange for a commitment of using a specified amount of compute power (measured per hour) for a one or three year period.

Savings Plans offer a flexible pricing model that provides savings on AWS usage. You can save up to 72% on your AWS compute workloads.

Compute Savings Plans provide lower prices on Amazon EC2 instance usage regardless of instance family, instance size, OS, tenancy, or AWS Region. This also applies to AWS Fargate and AWS Lambda usage. SageMaker AI Savings Plans provide you with lower prices for your Amazon SageMaker AI instance usage, regardless of your instance family, instance size, component, or AWS Region.
"@ }
$manual['aws-cli'] = @{ Title='AWS CLI'; Source='https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html'; Body=@"
This chapter provides steps to get started with version 2 of the AWS Command Line Interface (AWS CLI) and provides links to the relevant instructions.

To access AWS services with the AWS CLI, you need at minimum an AWS account and IAM credentials. To increase the security of your AWS account, AWS recommends that you do not use your root account credentials.

After you have access to the AWS CLI, configure your AWS CLI with your IAM credentials for first time use.
"@ }

$manual['aws-management-console'] = @{ Title='AWS Management Console'; Source='https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/what-is.html'; Body=@"
The AWS Management Console is a web-based application that contains and provides centralized access to all individual AWS service consoles.

You can use Unified Navigation in the AWS Management Console to search for services, view notifications, access AWS CloudShell, access account and billing information, and customize your general console settings. The home page of the AWS Management Console is called AWS Console Home.

From AWS Console Home, you can manage your AWS applications and access all other individual service consoles. You can also customize AWS Console Home to show other helpful information about AWS and your resources by using widgets.
"@ }

$manual['aws-client-vpn'] = @{ Title='AWS Client VPN'; Source='https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/what-is.html'; Body=@"
AWS Client VPN is a managed client-based VPN service that enables you to securely access your AWS resources and resources in your on-premises network. With Client VPN, you can access your resources from any location using an OpenVPN-based VPN client.

Client VPN offers secure connections, complete AWS management, high availability and elasticity, multiple authentication methods, granular control, and deep integration with services including AWS Directory Service and Amazon VPC.

The Client VPN endpoint is the resource that you create and configure to enable and manage client VPN sessions. It is the termination point for all client VPN sessions.
"@ }

$manual['amazon-aurora-serverless'] = @{ Title='Amazon Aurora Serverless'; Source='https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html'; Body=@"
Amazon Aurora Serverless v1 is an on-demand autoscaling configuration for Amazon Aurora. An Aurora Serverless v1 DB cluster scales compute capacity up and down based on your application's needs.

Aurora Serverless v1 provides a relatively simple, cost-effective option for infrequent, intermittent, or unpredictable workloads. It is cost-effective because it automatically starts up, scales compute capacity to match your application's usage, and shuts down when it is not in use.

AWS has announced the end-of-life date for Aurora Serverless v1: March 31, 2025.
"@ }
$manual['amazon-ecs-anywhere'] = @{ Title='Amazon ECS Anywhere'; Source='https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-anywhere.html'; Body=@"
Amazon ECS Anywhere provides support for registering an external instance such as an on-premises server or virtual machine (VM), to your Amazon ECS cluster.

Amazon ECS added a new EXTERNAL launch type that you can use to create services or run tasks on your external instances. External instances are optimized for running applications that generate outbound traffic or process data.
"@ }

$manual['amazon-eks-anywhere'] = @{ Title='Amazon EKS Anywhere'; Source='https://aws.amazon.com/documentation-overview/eks-anywhere/'; Body=@"
Amazon EKS Anywhere lets you create and operate Kubernetes clusters on your own infrastructure.

Amazon EKS Anywhere is designed to provide open-source software that is up to date and patched so you can have an on-premises Kubernetes environment. It helps you connect your clusters to the Amazon EKS console and deploy the same Kubernetes distribution that powers Amazon Elastic Kubernetes Service (EKS) on AWS.
"@ }

$manual['amazon-eks-distro'] = @{ Title='Amazon EKS Distro'; Source='https://aws.amazon.com/documentation-overview/eks-distro/'; Body=@"
Amazon EKS Distro is an open-source distribution of Kubernetes from AWS that allows you to perform reproducible builds using the same open-source Kubernetes source code, tooling, and documentation as Amazon EKS.

You can deploy EKS Distro on your own self-provisioned hardware infrastructure, including bare-metal servers, VMware vSphere virtual machines, Amazon EC2 instances, or infrastructure on other clouds. You can update your builds with the latest security patches, plus extended support in alignment with Amazon EKS Version Lifecycle Policy.
"@ }

$manual['aws-serverless-application-repository'] = @{ Title='AWS Serverless Application Repository'; Source='https://docs.aws.amazon.com/serverlessrepo/latest/devguide/what-is-serverlessrepo.html'; Body=@"
The AWS Serverless Application Repository makes it easy for developers and enterprises to quickly find, deploy, and publish serverless applications in the AWS Cloud.

You can publish applications publicly with the community or privately within your team or across your organization. To publish a serverless application, you can use the AWS Management Console, the AWS SAM command line interface (AWS SAM CLI), or AWS SDKs to upload your code and an AWS SAM template.

The AWS Serverless Application Repository is deeply integrated with the AWS Lambda console.
"@ }

$manual['aws-x-ray'] = @{ Title='AWS X-Ray'; Source='https://docs.aws.amazon.com/xray/latest/devguide/aws-xray.html'; Body=@"
AWS X-Ray helps developers analyze and debug production, distributed applications, such as those built using a microservices architecture.

With X-Ray, you can understand how your application and its underlying services are performing to identify and troubleshoot the root cause of performance issues and errors.
"@ }
$services = @(
    @{ Slug='amazon-athena'; Title='Amazon Athena'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/analytics.html'; File='analytics.html'; Heading='amazon-athena' },
    @{ Slug='aws-data-exchange'; Title='AWS Data Exchange'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/analytics.html'; File='analytics.html'; Heading='aws-data-exchange' },
    @{ Slug='amazon-data-firehose'; Title='Amazon Data Firehose'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/analytics.html'; File='analytics.html'; Heading='amazon-kinesis-firehose' },
    @{ Slug='amazon-emr'; Title='Amazon EMR'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/analytics.html'; File='analytics.html'; Heading='amazon-emr' },
    @{ Slug='aws-glue'; Title='AWS Glue'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/analytics.html'; File='analytics.html'; Heading='aws-glue' },
    @{ Slug='amazon-kinesis'; Title='Amazon Kinesis'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/analytics.html'; File='analytics.html'; Heading='amazon-kinesis' },
    @{ Slug='aws-lake-formation'; Title='AWS Lake Formation'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/analytics.html'; File='analytics.html'; Heading='aws-lake-formation' },
    @{ Slug='amazon-msk'; Title='Amazon Managed Streaming for Apache Kafka (Amazon MSK)'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/analytics.html'; File='analytics.html'; Heading='amazon-managed-streaming' },
    @{ Slug='amazon-opensearch-service'; Title='Amazon OpenSearch Service'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/analytics.html'; File='analytics.html'; Heading='amazon-opensearch-service' },
    @{ Slug='amazon-quicksuite'; Title='Amazon QuickSuite'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/analytics.html'; File='analytics.html'; Heading='amazon-quicksight' },
    @{ Slug='amazon-redshift'; Title='Amazon Redshift'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/analytics.html'; File='analytics.html'; Heading='amazon-redshift' },
    @{ Slug='aws-budgets'; Manual=$true }, @{ Slug='aws-cost-and-usage-report'; Manual=$true }, @{ Slug='aws-cost-explorer'; Manual=$true }, @{ Slug='savings-plans'; Manual=$true },
    @{ Slug='aws-batch'; Title='AWS Batch'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/compute-services.html'; File='compute-services.html'; Heading='aws-batch' },
    @{ Slug='amazon-ec2'; Title='Amazon EC2'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/compute-services.html'; File='compute-services.html'; Heading='amazon-ec2' },
    @{ Slug='amazon-ec2-auto-scaling'; Title='Amazon EC2 Auto Scaling'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/compute-services.html'; File='compute-services.html'; Heading='auto-scaling' },
    @{ Slug='aws-elastic-beanstalk'; Title='AWS Elastic Beanstalk'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/compute-services.html'; File='compute-services.html'; Heading='aws-elastic-beanstalk' },
    @{ Slug='aws-outposts'; Title='AWS Outposts'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/compute-services.html'; File='compute-services.html'; Heading='aws-outposts' },
    @{ Slug='aws-serverless-application-repository'; Manual=$true },
    @{ Slug='vmware-cloud-on-aws'; Title='VMware Cloud on AWS'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/compute-services.html'; File='compute-services.html'; Heading='vmware' },
    @{ Slug='aws-wavelength'; Title='AWS Wavelength'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/compute-services.html'; File='compute-services.html'; Heading='aws-wavelength' },
    @{ Slug='amazon-ecr'; Title='Amazon ECR'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/containers.html'; File='containers.html'; Heading='amazon-elastic-container-registry' },
    @{ Slug='amazon-ecs'; Title='Amazon ECS'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/containers.html'; File='containers.html'; Heading='amazon-elastic-container-service' },
    @{ Slug='amazon-ecs-anywhere'; Manual=$true },
    @{ Slug='amazon-eks'; Title='Amazon EKS'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/containers.html'; File='containers.html'; Heading='amazon-eks' },
    @{ Slug='amazon-eks-anywhere'; Manual=$true }, @{ Slug='amazon-eks-distro'; Manual=$true },
    @{ Slug='amazon-aurora'; Title='Amazon Aurora'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/database.html'; File='database.html'; Heading='amazon-aurora' },
    @{ Slug='amazon-aurora-serverless'; Manual=$true },
    @{ Slug='amazon-documentdb'; Title='Amazon DocumentDB'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/database.html'; File='database.html'; Heading='amazon-documentdb' },
    @{ Slug='amazon-dynamodb'; Title='Amazon DynamoDB'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/database.html'; File='database.html'; Heading='amazon-dynamodb' },
    @{ Slug='amazon-elasticache'; Title='Amazon ElastiCache'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/database.html'; File='database.html'; Heading='amazon-elasticache' },
    @{ Slug='amazon-keyspaces'; Title='Amazon Keyspaces'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/database.html'; File='database.html'; Heading='amazon-keyspaces' },
    @{ Slug='amazon-neptune'; Title='Amazon Neptune'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/database.html'; File='database.html'; Heading='amazon-neptune' },
    @{ Slug='amazon-rds'; Title='Amazon RDS'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/database.html'; File='database.html'; Heading='amazon-rds' },
    @{ Slug='aws-x-ray'; Manual=$true },
    @{ Slug='aws-amplify'; Title='AWS Amplify'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/mobile-services.html'; File='mobile-services.html'; Heading='aws-amplify' },
    @{ Slug='amazon-api-gateway'; Title='Amazon API Gateway'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/networking-services.html'; File='networking-services.html'; Heading='amazon-api-gateway' },
    @{ Slug='aws-device-farm'; Title='AWS Device Farm'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/mobile-services.html'; File='mobile-services.html'; Heading='aws-device-farm' },
    @{ Slug='amazon-comprehend'; Title='Amazon Comprehend'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/machine-learning.html'; File='machine-learning.html'; Heading='amazon-comprehend' },
    @{ Slug='amazon-kendra'; Title='Amazon Kendra'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/machine-learning.html'; File='machine-learning.html'; Heading='amazon-kendra' },
    @{ Slug='amazon-lex'; Title='Amazon Lex'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/machine-learning.html'; File='machine-learning.html'; Heading='amazon-lex' },
    @{ Slug='amazon-polly'; Title='Amazon Polly'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/machine-learning.html'; File='machine-learning.html'; Heading='amazon-polly' },
    @{ Slug='amazon-rekognition'; Title='Amazon Rekognition'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/machine-learning.html'; File='machine-learning.html'; Heading='amazon-rekognition' },
    @{ Slug='amazon-sagemaker-ai'; Title='Amazon SageMaker AI'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/machine-learning.html'; File='machine-learning.html'; Heading='amazon-sagemaker' },
    @{ Slug='amazon-textract'; Title='Amazon Textract'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/machine-learning.html'; File='machine-learning.html'; Heading='amazon-textract' },
    @{ Slug='amazon-transcribe'; Title='Amazon Transcribe'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/machine-learning.html'; File='machine-learning.html'; Heading='amazon-transcribe' },
    @{ Slug='amazon-translate'; Title='Amazon Translate'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/machine-learning.html'; File='machine-learning.html'; Heading='amazon-translate' },
    @{ Slug='aws-auto-scaling'; Title='AWS Auto Scaling'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='aws-auto-scaling' },
    @{ Slug='aws-cli'; Manual=$true },
    @{ Slug='aws-cloudformation'; Title='AWS CloudFormation'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='aws-cloudformation' },
    @{ Slug='aws-cloudtrail'; Title='AWS CloudTrail'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='aws-cloudtrail' },
    @{ Slug='amazon-cloudwatch'; Title='Amazon CloudWatch'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='amazon-cloudwatch' },
    @{ Slug='aws-compute-optimizer'; Title='AWS Compute Optimizer'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='aws-compute-optimizer' },
    @{ Slug='aws-config'; Title='AWS Config'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='aws-config' },
    @{ Slug='aws-control-tower'; Title='AWS Control Tower'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='aws-control-tower' },
    @{ Slug='aws-health-dashboard'; Title='AWS Health Dashboard'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='aws-personal-health-dashboard' },
    @{ Slug='aws-license-manager'; Title='AWS License Manager'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='aws-license' },
    @{ Slug='amazon-managed-grafana'; Title='Amazon Managed Grafana'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='amazon-managed-grafana' },
    @{ Slug='amazon-managed-service-for-prometheus'; Title='Amazon Managed Service for Prometheus'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='amazon-managed-prometheus' },
    @{ Slug='aws-management-console'; Manual=$true },
    @{ Slug='aws-organizations'; Title='AWS Organizations'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='aws-organizations' },
    @{ Slug='aws-service-catalog'; Title='AWS Service Catalog'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='aws-service-catalog' },
    @{ Slug='aws-systems-manager'; Title='AWS Systems Manager'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='aws-systems-manager' },
    @{ Slug='aws-trusted-advisor'; Title='AWS Trusted Advisor'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='aws-trusted-advisor' },
    @{ Slug='aws-well-architected-tool'; Title='AWS Well-Architected Tool'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html'; File='management-governance.html'; Heading='aws-well-architected' },
    @{ Slug='amazon-elastic-transcoder'; Title='Amazon Elastic Transcoder'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/media-services.html'; File='media-services.html'; Heading='amazon-elastic-transcoder' },
    @{ Slug='amazon-kinesis-video-streams'; Title='Amazon Kinesis Video Streams'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/analytics.html'; File='analytics.html'; Heading='amazon-kinesis-video' },
    @{ Slug='aws-application-migration-service'; Title='AWS Application Migration Service'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/migration-services.html'; File='migration-services.html'; Heading='aws-mgn' },
    @{ Slug='aws-datasync'; Title='AWS DataSync'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/migration-services.html'; File='migration-services.html'; Heading='aws-datasync' },
    @{ Slug='aws-dms'; Title='AWS DMS'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/migration-services.html'; File='migration-services.html'; Heading='aws-database-migration-service' },
    @{ Slug='aws-snow-family'; Title='AWS Snow Family'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/migration-services.html'; File='migration-services.html'; Heading='aws-snow-family' },
    @{ Slug='aws-transfer-family'; Title='AWS Transfer Family'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/migration-services.html'; File='migration-services.html'; Heading='aws-transfer' },
    @{ Slug='aws-client-vpn'; Manual=$true },
    @{ Slug='amazon-cloudfront'; Title='Amazon CloudFront'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/networking-services.html'; File='networking-services.html'; Heading='amazon-cloudfront' },
    @{ Slug='aws-direct-connect'; Title='AWS Direct Connect'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/networking-services.html'; File='networking-services.html'; Heading='aws-direct-connect' },
    @{ Slug='elastic-load-balancing'; Title='Elastic Load Balancing (ELB)'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/networking-services.html'; File='networking-services.html'; Heading='elastic-load-balancing' },
    @{ Slug='aws-global-accelerator'; Title='AWS Global Accelerator'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/networking-services.html'; File='networking-services.html'; Heading='aws-global-accelerator' },
    @{ Slug='aws-privatelink'; Title='AWS PrivateLink'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/networking-services.html'; File='networking-services.html'; Heading='aws-privatelink' },
    @{ Slug='amazon-route-53'; Title='Amazon Route 53'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/networking-services.html'; File='networking-services.html'; Heading='amazon-route-53' },
    @{ Slug='aws-site-to-site-vpn'; Title='AWS Site-to-Site VPN'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/networking-services.html'; File='networking-services.html'; Heading='aws-vpn' },
    @{ Slug='aws-transit-gateway'; Title='AWS Transit Gateway'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/networking-services.html'; File='networking-services.html'; Heading='aws-transit-gateway' },
    @{ Slug='amazon-vpc'; Title='Amazon VPC'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/networking-services.html'; File='networking-services.html'; Heading='amazon-vpc' },
    @{ Slug='aws-artifact'; Title='AWS Artifact'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-artifact' },
    @{ Slug='aws-audit-manager'; Title='AWS Audit Manager'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-audit-manager' },
    @{ Slug='aws-certificate-manager'; Title='AWS Certificate Manager (ACM)'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-certificate-manager' },
    @{ Slug='aws-cloudhsm'; Title='AWS CloudHSM'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-cloudhsm' },
    @{ Slug='amazon-cognito'; Title='Amazon Cognito'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='amazon-cognito' },
    @{ Slug='amazon-detective'; Title='Amazon Detective'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='amazon-detective' },
    @{ Slug='aws-directory-service'; Title='AWS Directory Service'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-directory-service' },
    @{ Slug='aws-firewall-manager'; Title='AWS Firewall Manager'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-firewall-manager' },
    @{ Slug='amazon-guardduty'; Title='Amazon GuardDuty'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='amazon-guardduty' },
    @{ Slug='aws-iam-identity-center'; Title='AWS IAM Identity Center'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-single-sign-on' },
    @{ Slug='amazon-inspector'; Title='Amazon Inspector'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='amazon-inspector' },
    @{ Slug='aws-kms'; Title='AWS KMS'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-key-management-service' },
    @{ Slug='amazon-macie'; Title='Amazon Macie'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='amazon-macie' },
    @{ Slug='aws-network-firewall'; Title='AWS Network Firewall'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-network-firewall' },
    @{ Slug='aws-ram'; Title='AWS Resource Access Manager (AWS RAM)'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-resource-access-manager' },
    @{ Slug='aws-secrets-manager'; Title='AWS Secrets Manager'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-secrets-manager' },
    @{ Slug='aws-security-hub'; Title='AWS Security Hub'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-security-hub' },
    @{ Slug='aws-shield'; Title='AWS Shield'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-shield' },
    @{ Slug='aws-waf'; Title='AWS WAF'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-waf' },
    @{ Slug='iam'; Title='IAM'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html'; File='security-services.html'; Heading='aws-identity-and-access-management' },
    @{ Slug='aws-appsync'; Title='AWS AppSync'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/mobile-services.html'; File='mobile-services.html'; Heading='aws-appsync' },
    @{ Slug='aws-fargate'; Title='AWS Fargate'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/compute-services.html'; File='compute-services.html'; Heading='aws-fargate' },
    @{ Slug='aws-lambda'; Title='AWS Lambda'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/compute-services.html'; File='compute-services.html'; Heading='aws-lambda' },
    @{ Slug='aws-backup'; Title='AWS Backup'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/storage-services.html'; File='storage-services.html'; Heading='aws-backup' },
    @{ Slug='amazon-ebs'; Title='Amazon EBS'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/storage-services.html'; File='storage-services.html'; Heading='amazon-elastic-block-store' },
    @{ Slug='amazon-efs'; Title='Amazon EFS'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/storage-services.html'; File='storage-services.html'; Heading='amazon-elastic-file-system' },
    @{ Slug='amazon-s3'; Title='Amazon S3'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/storage-services.html'; File='storage-services.html'; Heading='amazon-s3' },
    @{ Slug='aws-storage-gateway'; Title='AWS Storage Gateway'; Source='https://docs.aws.amazon.com/whitepapers/latest/aws-overview/storage-services.html'; File='storage-services.html'; Heading='aws-storage-gateway' }
)
foreach ($svc in $services) {
    if ($svc.Manual) {
        $entry = $manual[$svc.Slug]
        if (-not $entry) { throw "Missing manual entry for $($svc.Slug)" }
        $title = $entry.Title
        $source = $entry.Source
        $body = $entry.Body.Trim()
    } else {
        $title = $svc.Title
        $source = $svc.Source
        $body = Extract-Section $svc.File $svc.Heading
    }

    $content = @(
        "# $title",
        "> Source: $source",
        '> Collected: 2026-04-09',
        '> Published: Unknown',
        '',
        $body,
        ''
    ) -join "`n"

    Set-Content -Path (Join-Path $outDir ($svc.Slug + '.md')) -Value $content -Encoding utf8
}

$fsxSections = @(
    (Extract-Section 'storage-services.html' 'amazon-fsx-lustre'),
    (Extract-Section 'storage-services.html' 'amazon-fsx-netapp-ontap'),
    (Extract-Section 'storage-services.html' 'amazon-fsx-openzfs'),
    (Extract-Section 'storage-services.html' 'amazon-fsx-windows')
) -join "`n`n"

Set-Content -Path (Join-Path $outDir 'amazon-fsx-all-types.md') -Value (@(
    '# Amazon FSx (for all types)',
    '> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/storage-services.html',
    '> Collected: 2026-04-09',
    '> Published: Unknown',
    '',
    $fsxSections,
    ''
) -join "`n") -Encoding utf8

Set-Content -Path (Join-Path $outDir 'amazon-s3-glacier.md') -Value (@(
    '# Amazon S3 Glacier',
    '> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/storage-services.html',
    '> Collected: 2026-04-09',
    '> Published: Unknown',
    '',
    'Amazon Simple Storage Service (Amazon S3) is an object storage service built to store and protect any amount of data for a range of use cases, including data lakes, websites, cloud-native applications, backups, archive, machine learning applications, and analytics.',
    '',
    'Amazon S3 provides storage classes that you can use to optimize for access frequency and cost. These include archival classes for long-term retention and low-cost archive use cases.',
    ''
) -join "`n") -Encoding utf8

Get-ChildItem $outDir | Measure-Object | Select-Object Count
