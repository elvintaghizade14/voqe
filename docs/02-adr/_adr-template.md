<!-- 
Template Source: Based on MADR (Markdown Any Decision Record) 3.0.0
Reference: https://adr.github.io/madr/
-->

# ADR [Number]: [Title]

---
**Status:** [PROPOSED | ACCEPTED | DEPRECATED | SUPERSEDED] </br>
**Date:** [YYYY-MM-DD] </br>
**Author:** [Name Surname]
---

## 1. Context & Problem Statement

*Describe the context and problem statement in 1-2 paragraphs.*</br>
*What is the specific architectural or engineering problem we are trying to solve?*</br>
*Avoid solution-bias here; just state the problem.*

## 2. Decision Drivers (Constraints & Requirements)

*What are the forces pushing us toward a decision?*

* **[Driver 1, e.g., Must handle 10,000 writes/second]**
* **[Driver 2, e.g., Engineering team only knows Go and Rust]**
* **[Driver 3, e.g., Cloud budget is strictly capped at $50/month]**

## 3. Considered Options

*What alternatives did we evaluate?*

* **Option 1:** [e.g., RabbitMQ]
* **Option 2:** [e.g., Apache Kafka]
* **Option 3:** [e.g., Redis Streams]

## 4. Decision Outcome

*What did we choose and why?*
*(e.g., "We chose Option 3 because...")*

## 5. Consequences

*What are the trade-offs of this decision?*

### 6.1. Positive

* *e.g. Easy to set up, low latency, native JSON support*

### 6.2. Negative / Risks

* *e.g. Requires sufficient RAM, complex cluster management, steeper learning curve for new hires*

## 7. Notes & References

*Links to benchmarks, documentation, original GitHub issues, or related PRDs.*
