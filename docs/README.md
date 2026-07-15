# Voqe Documentation Guide

This directory contains the engineering documentation for the Voqe project.

## Document Hierarchy

* **[PRD](01-prd)**: _**WHAT**_ we are building. The requirements and scope for each version.
* **[ADR](02-adr)**: _**WHY**_ we chose specific architectures. The historical rationale behind technical trade-offs.
* **[TDD](03-tdd)**: _**HOW**_ we are implementing the features. The technical blueprint before writing code.

## Naming Convention

To keep the history ordered, use a numeric prefix:

* **[PRD](01-prd)**: \`001-v0.1-name.md\`
* **[ADR](02-adr)**: \`001-name.md\`
* **[TDD](03-tdd)**: \`001-name.md\`

## Contribution Note

- Every significant change should start with a _**PRD**._
- Architectural changes require an _**ADR**._
- Complex implementation plans require a _**TDD**._

## A Concrete Example

To see how they work together, imagine we are deciding how to handle message retries when a provider (like an SMS
gateway) is down:

    PRD (WHAT): "The system must ensure reliable delivery. If a message fails due to a network error, it must be retried automatically with an exponential backoff strategy."

    ADR (WHY): "We considered using a simple in-memory retry queue versus a persistent message broker like Redis. We chose Redis because it allows for state persistence across service restarts and provides visibility into the 'dead letter' state, even though it adds a dependency on an external data store."

    TDD (HOW): "We will implement a RetryHandler class. We will use the Redis ZSET (sorted set) for the queue, where the score represents the next retry timestamp. The service will poll the ZSET every 5 seconds. The API endpoint POST /v1/retry-config will update the backoff multiplier."

## The "Documentation Lifecycle"

1. PRD: Written first, stays relatively stable.
2. ADR: Written during the research phase, **never** changes (it is a historical record!).
3. TDD: Written right before coding, acts as the blueprint. It may be updated if the implementation changes during
   development.

## Document Status Definitions

| Status          | Description                                                                      |
|:----------------|:---------------------------------------------------------------------------------|
| **DRAFT**       | The document is being actively written; ideas are subject to change.             |
| **IN-REVIEW**   | The design is mostly complete; verifying against technical constraints.          |
| **APPROVED**    | The "Contract." Implementation must follow this spec.                            |
| **IMPLEMENTED** | The feature is built; this document acts as the reference for the current state. |
| **REJECTED**    | The proposal was considered but will not be pursued.                             |
