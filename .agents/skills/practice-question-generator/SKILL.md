---
name: practice-question-generator
description: "Generate practice questions based on AWS certification topics. Use when: you want to create a practice question on a specific AWS topic to test your knowledge. The skill understands the wiki structure and existing question difficulty levels to create appropriately challenging questions without providing answers unless explicitly requested."
---

# Practice Question Generator

## Purpose

This skill generates AWS certification practice questions tailored to your learning level by:
- Analyzing the AWS Wiki topics and existing practice questions
- Understanding the difficulty progression of existing questions
- Creating new questions that align with the topic and your requested difficulty
- If the prompt does not specify a topic, the agent will pick a random topic from the AWS Wiki to generate a question on
- Withhold the topic by default (topic only provided if the prompt explicitly states to)
- Withhold the correct answers by default (answer only provided on follow-up request)
- Keep a timestamp of when the question was generated to track how long it takes for the user to answer the question
- Using the timestamp, the agent will tell the user how long they took to answer the question when they provide the answer on follow-up

## Workflow

### Step 1: Gather Context
When generating a practice question, the agent will:
1. Review `wiki/index.md` to understand the AWS Wiki topic structure
2. Explore existing practice questions under `raw/aws-certification/practice-questions/` to understand difficulty levels
3. Identify the specific topic you're asking about

### Step 2: Generate Question
The agent will create a practice question that:
- Covers the specified AWS topic
- Matches the requested or inferred difficulty level
- Is realistic and scenario-based (not trivial)
- Follows the format of existing questions in the repository
- Generate a timestamp for when the question was created

### Step 3: Provide Answer on Request
The agent will:
- **Initially**: Return only the practice question (no answer)
- **On follow-up**: Provide the answer and explanation when you ask for it

## Question Format

Practice questions should include:
- **Scenario**: A realistic AWS architecture or use-case situation
- **Question**: Clear, specific question about the scenario
- **Difficulty**: Noted as Beginner, Intermediate, or Advanced
- **Topic**: The specific AWS service or concept covered

## Usage

Ask the agent to generate a practice question by specifying:
- The AWS topic or service (e.g., "VPC", "RDS", "Lambda")
- Optional difficulty level (Beginner, Intermediate, Advanced)
- Optional scenario context (e.g., "high availability", "cost optimization")

Example prompts:
- "Generate a practice question about VPC security"
- "Create an intermediate level question on RDS multi-AZ deployment"
- "I need a practice question about NAT Gateway high availability"
