# EduPak.pk — Automation & CI/CD Suite

A clean, high-performance deployment and server automation workspace for **EduPak.pk**. This project showcases optimized continuous integration pipelines, infrastructure configuration schemas, and utility scripting tools built in an Ubuntu ecosystem.

---

## Workspace Architecture

```text
EduPak-actions/
├── .github/
│   └── workflows/
│       ├── info.yml
│       ├── multi-job.yml
│       ├── ci.yml
│       └── fixed-pipeline.yml
├── scripts/
│   ├── student-info.sh
│   ├── greet.sh
│   ├── age-check.sh
│   ├── service-manager.sh
│   └── health-check.sh
├── CSS/
│   └── style.css                # Professional dark theme styles
├── js/
│   └── main.js                  # Client-side dynamic state interaction
├── screenshots/
├── index.html                   # Glassmorphic premium landing page
├── student.yml
└── EduPak-config.yml

🚀 CORE DELIVIRABLES SUMMARY:
1. Continuous Integration (GitHub Actions)
Pipelines: Multi-job automation workflows triggered instantly upon branch pushes[cite: 1].

Matrix & Cron (Bonus): Runs automatically at 9:00 AM UTC daily, executing concurrent testing sweeps on both ubuntu-latest and ubuntu-22.04 environment runners[cite: 1].

2. Server Automation (Bash Scripting)
Automation: Utility scripts written in native Bash to safely validate user arguments, evaluate bounds, and handle background system services[cite: 1].

set -x DevOps Insight: Activating set -x forces the shell to print an execution trace of every command to the screen (prefixed with +) before running it[cite: 1]. This serves as a vital diagnostic tool to observe script evaluations in real time[cite: 1].

📄 ASSIGNMENT 3: YAML Syntax Debugging Analysis (TASK 4)

Provided Broken Code Snippet
The following template was evaluated for syntax and structural errors[cite: 1]:

name:System-Sanity-Validation       # Mistake 1

on:
push:                               # Mistake 2
  branches:
    - main

jobs:
environment-check:                  # Mistake 3
  runs-on: ubuntu-latest
  steps:
    - name: Display Init Message
    run: echo "Starting server check" # Mistake 4

    - name:Confirm App Entry        # Mistake 5
      run: test -f index.html

ANALYSIS OF MISTAKES:

name:System-Sanity-Validation ➡️ Missing whitespace separation immediately following the structural : symbol[cite: 1].

push: alignment ➡️ Faulty indentation tree mapping under the root on: directive[cite: 1].

environment-check: alignment ➡️ Structural block misalignment under the primary jobs: header[cite: 1].

run: echo "Starting..." alignment ➡️ The execution script keyword must align vertically with its parent - name: list item property[cite: 1].

- name:Confirm App Entry ➡️ Missing tracking layout space following the structural dash-name : separator tag[cite: 1].
 
COORECT VERSION:

name: "System Sanity Validation"

on:
  push:
    branches:
      - main

jobs:
  environment-check:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Repository Code
        uses: actions/checkout@v4

      - name: Display Init Message
        run: echo "Starting server check..."

      - name: Confirm App Entry
        run: test -f index.html