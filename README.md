# Qwen Agents Collection

A comprehensive collection of specialized AI agents for the Qwen platform, designed to enhance development workflows with domain-specific expertise and intelligent automation.

## Overview

This repository contains a curated set of specialized agents that extend Qwen's capabilities across the entire software development lifecycle. Each agent is an expert in a specific domain, automatically invoked based on context analysis or explicitly called when specialized expertise is needed.

> **Note:** This collection is actively maintained and updated with new agents regularly.

### Key Features

- Intelligent Automation: Qwen agents automatically select optimal agents based on task context
- Domain Expertise: Each agent specializes in specific technologies, patterns, and best practices
- Quality Assurance: Built-in review and validation patterns across all domains
- Performance Optimized: Agents designed for efficient task completion and resource utilization

## Available Agents

### Development Agents

**Frontend & UI/UX Specialists**

- **[ui-ux-designer](agents/ui-ux-designer.md)** - Visual UI design and user experience research for intuitive, accessible interfaces
- **[react-pro](agents/react-pro.md)** - Expert React development with hooks, performance optimization, and best practices
- **[nextjs-pro](agents/nextjs-pro.md)** - Next.js specialist for SSR, SSG, and full-stack React applications

**Backend & Architecture**

- **[backend-architect](agents/backend-architect.md)** - Design RESTful APIs, microservice boundaries, and database schemas
- **[full-stack-developer](agents/full-stack-developer.md)** - End-to-end web application development from UI to database with seamless integration

**Language Specialists**

- **[python-pro](agents/python-pro.md)** - Write idiomatic Python code with advanced features and optimizations
- **[golang-pro](agents/golang-pro.md)** - Write idiomatic Go code with goroutines, channels, and interfaces
- **[typescript-pro](agents/typescript-pro.md)** - Advanced TypeScript development with type safety and modern patterns

**Platform & Mobile**

- **[mobile-developer](agents/mobile-developer.md)** - Develop React Native or Flutter apps with native integrations
- **[electron-pro](agents/electron-pro.md)** - Electron desktop application development and cross-platform solutions

**Developer Experience**

- **[dx-optimizer](agents/dx-optimizer.md)** - Developer Experience specialist that improves tooling, setup, and workflows
- **[legacy-modernizer](agents/legacy-modernizer.md)** - Refactor legacy codebases and implement gradual modernization

### Infrastructure Agents

- **[cloud-architect](agents/cloud-architect.md)** - Design AWS/Azure/GCP infrastructure and optimize cloud costs
- **[deployment-engineer](agents/deployment-engineer.md)** - Configure CI/CD pipelines, Docker containers, and cloud deployments
- **[incident-responder](agents/incident-responder.md)** - Lead incident response, root cause analysis, and system recovery
- **[performance-engineer](agents/performance-engineer.md)** - Profile applications, optimize bottlenecks, and implement caching strategies

### Quality & Testing Agents

- **[code-reviewer](agents/code-reviewer.md)** - Expert code review for quality, security, and maintainability
- **[architect-review](agents/architect-review.md)** - Reviews code changes for architectural consistency and design patterns
- **[qa-expert](agents/qa-expert.md)** - Comprehensive QA processes and testing strategies for quality assurance
- **[test-automator](agents/test-automator.md)** - Create comprehensive test suites with unit, integration, and e2e tests
- **[debugger](agents/debugger.md)** - Debugging specialist for errors, test failures, and unexpected behavior

### Data & AI Agents

**Data Engineering & Analytics**

- **[data-engineer](agents/data-engineer.md)** - Build ETL pipelines, data warehouses, and streaming architectures
- **[data-scientist](agents/data-scientist.md)** - Data analysis expert for SQL queries, BigQuery operations, and data insights
- **[database-optimizer](agents/database-optimizer.md)** - Database optimization with PostgreSQL/PgLite expertise, query tuning, and schema design
- **[graphql-architect](agents/graphql-architect.md)** - Design GraphQL schemas, resolvers, and federation patterns

**AI & Machine Learning**

- **[ai-engineer](agents/ai-engineer.md)** - Build LLM applications, RAG systems, and prompt pipelines
- **[ml-engineer](agents/ml-engineer.md)** - Implement ML pipelines, model serving, and feature engineering
- **[prompt-engineer](agents/prompt-engineer.md)** - Optimizes prompts for LLMs and AI systems

### Security Agents

- **[security-auditor](agents/security-auditor.md)** - Review code for vulnerabilities and ensure OWASP compliance

### Specialization Agents

- **[api-documenter](agents/api-documenter.md)** - Create OpenAPI/Swagger specs and write developer documentation
- **[documentation-expert](agents/documentation-expert.md)** - Professional technical writing and comprehensive documentation systems

### Business Agents

- **[product-manager](agents/product-manager.md)** - Strategic product management with roadmap planning and stakeholder alignment

### Meta-Orchestration

- **[agent-organizer](agents/agent-organizer.md)** - Master orchestrator for complex, multi-agent tasks. Analyzes project requirements, assembles optimal agent teams, and manages collaborative workflows for comprehensive project execution.

**Key Capabilities:**

- **Intelligent Project Analysis**: Technology stack detection, architecture pattern recognition, and requirement extraction
- **Strategic Team Assembly**: Selects optimal 1-3 agent teams based on project needs and complexity
- **Workflow Orchestration**: Manages multi-phase collaboration with quality gates and validation checkpoints
- **Efficiency Optimization**: Focused teams for common tasks (bug fixes, features, documentation) with comprehensive orchestration for complex projects

**When to Use**: Complex multi-step projects, cross-domain tasks, architecture decisions, comprehensive analysis, or any scenario requiring coordinated expertise from multiple specialized agents.

## Installation

### Quick Setup

To use these agents with Qwen:

1. Clone this repository:
   ```bash
   git clone https://github.com/89simpson/qwen-agents-collection.git
   ```

2. Copy the agents to your Qwen agents directory:
   ```bash
   cp.md-agents-collection/agents/*.md ~/.qwen/agents/
   ```

3. Restart Qwen to load the new agents.

## Agent File Structure

Each agent file follows a standardized format with YAML frontmatter containing metadata:

```yaml
---
name: agent-name
description: When to use this agent
tools:
  - read_file
  - grep
  - glob
  - run_shell_command
  - web_fetch
  - web_search
  - task
  - todo_write
---
```

The YAML frontmatter provides Qwen with information about the agent's purpose and available tools, improving agent selection and coordination.

**Important Note on File Extensions**: Agent files use the `.md` extension. This is the required format for Qwen to recognize and load the agents.

## Usage

### Automatic Invocation (Recommended)

Qwen intelligently analyzes your request and automatically delegates to the most appropriate agent(s) based on:

- **Context Analysis**: Keywords, file types, and project structure
- **Task Classification**: Development, debugging, optimization, etc.
- **Domain Expertise**: Matching requirements to specialist knowledge
- **Workflow Patterns**: Common multi-agent coordination scenarios

**Example**: `"Implement user authentication with secure password handling"` → Automatically uses: `backend-architect` → `security-auditor` → `test-automator`

### Explicit Invocation

For specific expertise or when you want control over agent selection:

```bash
# Direct agent requests
"Use the code-reviewer to check my recent changes"
"Have the security-auditor scan for vulnerabilities"
"Get the performance-engineer to optimize this bottleneck"

# Multi-agent requests
"Have backend-architect design the API, then security-auditor review it"
"Use data-scientist to analyze this dataset, then ai-engineer to build recommendations"
```

### Hybrid Approach

Combine automatic and explicit invocation:

```bash
# Start explicit, let Qwen coordinate the rest
"Use backend-architect to design a REST API for user management, then handle the implementation automatically"

# Explicit validation after automatic work
"Implement this feature automatically, then have security-auditor review the result"
```

## Contributing

### Adding New Agents

To contribute a new agent to the collection:

1. **Follow Naming Convention**
   - Use lowercase, hyphen-separated names (e.g., `backend-architect.md`)
   - Name should clearly indicate the agent's domain and role
   - **Important**: Use `.md` extension, this is the required format

2. **Use Standard Format**
   - Follow the structured format outlined in the agent files
   - Include detailed system prompt with role, expertise, and interaction patterns

3. **Write Clear Descriptions**
   - Description should clearly indicate when the agent should be automatically invoked
   - Include specific keywords and contexts that trigger the agent

4. **Define Specialized Behavior**
   - Include detailed system prompt with role, expertise, and decision-making frameworks
   - Specify interaction patterns with other agents

5. **Test Integration**
   - Verify the agent can be automatically invoked based on description
   - Test explicit invocation with clear requests
   - Ensure compatibility with existing agent coordination patterns

### Quality Standards

- **Domain Expertise**: Agents should demonstrate deep knowledge in their specialization
- **Clear Boundaries**: Define what the agent does and doesn't handle
- **Integration Ready**: Design for seamless coordination with other agents
- **Consistent Voice**: Maintain professional, helpful, and expert tone

### Submission Process

1. Create the agent file following all standards
2. Test the agent with various invocation patterns
3. Submit a pull request with example use cases
4. Include documentation of the agent's unique value and integration patterns

## Best Practices

- **Trust Auto-Delegation**: Qwen excels at context analysis and optimal agent selection
- **Provide Rich Context**: Include tech stack, constraints, and project background
- **Use Explicit Control**: Override automatic selection when you need specific expertise
- **Establish Quality Gates**: Build review and validation into standard workflows
- **Match Task Complexity**: Don't over-engineer simple tasks or under-resource complex ones

## FAQ

### When should I use the agent-organizer vs specific agents?

- **Use `agent-organizer`** for complex projects requiring multiple specialties (e.g., "Implement full authentication system with frontend, backend, and security audit")
- **Use specific agents** when you need focused expertise (e.g., "Review this code for security vulnerabilities" → `security-auditor`)

### Can agents work together?

Yes! Agents are designed to collaborate. The `agent-organizer` coordinates multiple agents for complex projects.

### What if an agent doesn't respond?

1. Verify the agent name matches the file name (without `.md` extension)
2. Check that agent files are in `~/.qwen/agents/`
3. Restart Qwen if agents were recently installed
4. Provide more context in your request

### What programming languages and frameworks are supported?

Agents support JavaScript/TypeScript, Python, Go, Java, C#, and more. Framework expertise includes React, Next.js, Node.js, Django, Spring Boot, and popular cloud platforms (AWS, Azure, GCP).

## Examples

Check out the [examples](examples/) directory for real-world usage scenarios and best practices.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.