<!-- 
Template Source: Inspired by Google's Software Design Doc Guidelines & Tanya Reilly's RFC Standard
-->

# TDD: [Title]

---
**Status:** [DRAFT | IN REVIEW | APPROVED | SUPERSEDED] <br />
**Version:** [e.g., 0.1] <br />
**Date:** [YYYY-MM-DD] <br />
**Author:** [Name Surname] <br />
**Related PRD:** [Link to PRD] <br />
**Related ADRs:** [Link to ADRs]
---

## 1. Overview

High-level summary of the implementation strategy.

## 2. System Architecture

- **Diagram/Flow:** (Use Mermaid or describe the interaction)
- **Data Flow:** How data enters and leaves the system.

## 3. Implementation Details

### 3.1 API Contracts

Define your endpoints (e.g., `POST /v1/notifications`).

- **Request Schema:**
- **Response Schema:**

### 3.2 Database Schema

Describe the entities and relationships.

- Table: `[Name]`
    - Column | Type | Constraints

## 4. Risks & Mitigations

What could break at the implementation level? (e.g., race conditions, db deadlocks).

## 5. Implementation Steps

A checklist for the actual coding (Breaking the task into PR-sized chunks).