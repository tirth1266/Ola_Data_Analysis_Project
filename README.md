# OLA Data Analysis Project

This project is a comprehensive analysis of ride-hailing data for OLA in Bengaluru. The analysis was conducted on a synthetic dataset of 100,000 rows, representing one month of activity, which was generated using ChatGPT. The dataset was created with specific constraints, including a 62% overall booking success rate, customer cancellations not exceeding 7%, and driver cancellations not exceeding 18%.

## Tech Stack

The dashboard was built using the following tools and technologies:

* 📊 **Power BI Desktop:** Main data visualisation platform used for report creation.
* 🧰 **Power Query:** Used for data transformation, cleaning, and preparation.
* 🧠 **DAX (Data Analysis Expressions):** Implemented for creating custom measures and calculated columns to drive complex visualisations.
* 📈 **Data Modelling:** A logical schema was established to enable cross-filtering and aggregation across various data points.
* 📁 **File Format:** `.pbix` for development and `.png` for dashboard previews.

## Data Source

The data was synthetically generated using ChatGPT. The dataset includes the following 19 columns detailing ride information:

`Date`, `Time`, `Booking_ID`, `Booking_Status`, `Customer_ID`, `Vehicle_Type`, `Pickup_Location`, `Drop_Location`, `V_TAT`, `C_TAT`, `cancelled_Rides_by_Customer`, `cancelled_Rides_by_Driver`, `Incomplete_Rides`, `Incomplete_Rides_Reason`, `Booking_Value`, `Payment_Method`, `Ride_Distance`, `Driver_Ratings`, `Customer_Rating`.

## Dashboard Features & Highlights

* **Objective:** To provide a comprehensive performance overview of OLA's ride-hailing services in Bengaluru.

* **Key Visualisations:** The dashboard tracks critical metrics, including:
    * Ride Volume Over Time and Booking Status Breakdowns
    * Revenue by Payment Method and Top Customers by Booking Value
    * Common Reasons for Ride Cancellations by both customers and drivers
    * Distributions and comparisons of Customer and Driver Ratings

* **Primary Goal:** To transform complex ride data into clear, actionable insights for strategic decision-making.

* **Business Impact:** The insights from the dashboard are intended to help improve operational efficiency, enhance customer satisfaction, and drive overall business growth.

## Dashboard Preview

![Dashboard Preview](https://github.com/tirth1266/Ola_Data_Analysis_Project/blob/main/Sneak%20peek%20of%20Dashboard.png)
