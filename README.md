# Bank Management System Dashboard

An interactive dashboard built to analyze and visualize key financial metrics including loan reports, transaction analyses, and overall bank statistics.

## ✨ About The Project

This project transforms raw banking data from multiple sources into a user-friendly dashboard. It provides at-a-glance insights into loan applications, transaction trends, customer demographics, and the bank's physical presence (branches and ATMs). The goal is to empower stakeholders with data-driven insights for better and faster decision-making.

## 🚀 Key Features

- **Main Dashboard:** High-level overview of total customers, accounts, branches, and ATMs.
- **Loan Analysis Report:** In-depth analysis of loan applications, average loan amounts, defaulters, and trends by month and loan term.
- **Transaction Report:** Insights into total transaction volume, value, types, and a geographical view of branch locations.
- **Interactive Visualizations:** Clean and intuitive charts, graphs, and maps for easy data exploration.

## 📸 Screenshots

#### Main Dashboard
![Main Dashboard](Screenshot%202025-07-18%20144511.png)

#### Loan Report
![Loan Report](Screenshot%202025-07-18%20144432.png)

#### Transaction Report
![Transaction Report](Screenshot%202025-07-18%20144450.png)

## 🗃️ Dataset & Schema

The project utilizes a set of relational CSV files representing a simplified banking database.

#### Data Files:
- `customers_data.csv`
- `accounts_data.csv`
- `loans_data.csv`
- `credit_cards_data.csv`
- `branches_data.csv`
- `atms_data.csv`

#### Database Schema:
The relationship between the data entities is illustrated in the schema below.
![Database Schema](Screenshot%202025-07-18%20144345.png)


## 🛠️ Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

- Python 3.8+
- pip

### Installation

1.  **Clone the repository:**
    ```sh
    git clone [https://github.com/your_username/your_repository_name.git](https://github.com/your_username/your_repository_name.git)
    ```
2.  **Navigate to the project directory:**
    ```sh
    cd your_repository_name
    ```
3.  **Create and activate a virtual environment (recommended):**
    ```sh
    # For Windows
    python -m venv venv
    .\venv\Scripts\activate

    # For macOS/Linux
    python3 -m venv venv
    source venv/bin/activate
    ```
4.  **Install the required packages:**
    ```sh
    pip install -r requirements.txt
    ```
    *(Note: You will need to create a `requirements.txt` file listing the project's dependencies, e.g., pandas, streamlit, plotly.)*

## ▶️ Usage

1.  Make sure all CSV data files are in the correct directory.
2.  Run the application from the terminal:

    ```sh
    streamlit run app.py
    ```
    *(Assuming your main script is named `app.py` and you are using Streamlit)*

3.  Open your web browser and navigate to `http://localhost:8501`.
