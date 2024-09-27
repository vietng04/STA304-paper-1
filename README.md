# Transport Bus Initiative Usage

## Overview

This project analyzes the usage of a transport bus initiative based on a dataset provided by Open Data Toronto. The analysis focuses on four key variables: date, clients, clients transported, and clients stationary. The goal is to understand client behavior, assess service efficiency, and provide insights for improving public transportation strategies.


## Dataset
The dataset, titled "Transport Bus Initiative Usage" covers record from 2023 and 2024 and includes daily entries. The main variables included in the dataset are:
-   Date: the date of the record
-   Clients: the total number of clients using the transport service.
-   Clients Transported: the number of clients are transported
-   Clients Stationary: the number of clients remaining stationary at any given time.


## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from Open Data Toronto.
-   'data/analysis_data': Contains the cleaned dataset that was constructed for analysis.
-   'data/simulated_data' contains simulate data.
-   `other` contains relevant literature, details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.