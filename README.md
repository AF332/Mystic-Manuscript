# Mystic-Manuscript

## Project Overview
The primary goal of this project is to ensure the data provided by Mystic Manuscripts is clean, reliable, and ready for analysis. The dataset, containing vital information for the client's upcoming analysis, underwent a rigorous quality control process, including error detection, resolution, and thorough validation.

### Key Objectives:
1. **Dataset Upload**: Import the dataset into an SQL database with proper schema configuration.
2. **Error Identification**: Detect and document issues such as missing values, duplicates, incorrect formats, and inconsistencies.
3. **Quality Control Checks**: Perform SQL-based validations to ensure the dataset meets predefined standards.
4. **Client Interaction**: Collaborate with the client to clarify anomalies and validate corrections.
5. **Documentation**: Provide a detailed quality control form summarizing all checks performed.

## SQL Files Description

### `SQL-X.sql`
This file contains the SQL queries used to:
- Perform quality control checks on the dataset.
- Identify issues such as duplicates, missing values, and inconsistent formats.
- Validate data accuracy by cross-checking column values and total sums.

#### Key Queries Include:
- **Row and Column Counts**: Ensures the imported table matches the original dataset in structure.
- **Null Value Checks**: Identifies any missing or null values across all columns.
- **Date Format Validation**: Verifies the consistency of date formats between the source and destination tables.
- **Boolean and Categorical Consistency**: Ensures logical consistency in boolean fields and their corresponding categories.
- **Aggregate Validations**: Confirms column and row sums to detect discrepancies.

### `table_creation.sql`
This file includes the SQL commands used to create the destination table in the SQL database. 

#### Key Features:
- **Schema Definition**: Specifies column names, data types, and constraints based on the dataset structure.
- **Primary Keys**: Ensures unique identification of rows.
- **Null Constraints**: Prevents invalid entries by enforcing non-null fields where applicable.

## Quality Control Process

### Steps Performed:
1. **Data Import**: Loaded the dataset into the `mystic_manuscript` schema using SQL commands.
2. **Error Identification**: Ran queries to identify issues such as:
   - Null or missing values.
   - Duplicates in the dataset.
   - Inconsistent or invalid date formats.
3. **Corrections and Updates**:
   - Updated incorrect entries to align with expected formats.
   - Removed duplicate rows.
4. **Validation**: Conducted SQL checks to ensure:
   - Row and column counts matched the original dataset.
   - Aggregated sums were consistent.
   - Null values were eliminated.

## Deliverables

1. **SQL Files**: 
   - `table_creation.sql`: Defines the schema and structure of the database table.
   - `SQL-X.sql`: Contains queries used for quality control checks.
2. **Quality Control Form**: A detailed document summarizing all checks performed and their outcomes (see `Quality Control Form Template`).
3. **Git Submission**: Selected queries (1 to 7) submitted via Git for evaluation.

## How to Use
1. Run `table_creation.sql` to create the database schema.
2. Load the dataset into the created table.
3. Execute the queries in `SQL-X.sql` to perform quality control checks.
4. Refer to the Quality Control Form for detailed insights into the validation process.

## Conclusion
This project underscores the importance of data quality in analytics. By implementing structured processes and leveraging SQL tools, we ensured the dataset is ready for analysis, providing Mystic Manuscripts with reliable and actionable insights.

---
