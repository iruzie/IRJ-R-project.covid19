
# 🦠 **INTERACTIVE COVID-19 TIME SERIES ANALYSIS VISUALIZATION WITH SHINY**

## 📋 **DESCRIPTION**
HI THERE!
Welcome to the Interactive COVID-19 Case Trends Dashboard! This Shiny app is designed to provide dynamic visualizations of COVID-19 case trends across selected states. Explore and analyze time series data of COVID-19 cases, gaining valuable insights into the pandemic’s progression over time.

## 🎯 **PURPOSE AND FUNCTIONALITY**

The main goal of this dashboard is to make understanding COVID-19 case trends easy and interactive. Here’s what you can do:

- **Select Different States**: View case trends for available states and compare regions.
- **Analyze Trends Over Time**: See how the number of COVID-19 cases has changed over specific periods.

### **Available States**

Here is the list of states and territories mentioned in the dataset:

1. Alabama
2. Alaska
3. American Samoa
4. Arizona
5. Arkansas
6. California
7. Colorado
8. Connecticut
9. Delaware
10. District of Columbia
11. Florida
12. Georgia
13. Guam
14. Hawaii
15. Idaho
16. Illinois
17. Indiana
18. Iowa
19. Kansas
20. Kentucky
21. Louisiana
22. Maine
23. Maryland
24. Massachusetts
25. Michigan
26. Minnesota
27. Mississippi
28. Missouri
29. Montana
30. Nebraska
31. Nevada
32. New Hampshire
33. New Jersey
34. New Mexico
35. New York
36. North Carolina
37. North Dakota
38. Northern Mariana Islands
39. Ohio
40. Oklahoma
41. Oregon
42. Pennsylvania
43. Puerto Rico
44. Rhode Island
45. South Carolina
46. South Dakota
47. Tennessee
48. Texas
49. Utah
50. Vermont
51. Virgin Islands
52. Virginia
53. Washington
54. West Virginia
55. Wisconsin
56. Wyoming

I’m continuously working to add more states in future updates, so stay tuned for a comprehensive view of the worldwide impact of COVID-19.

## 🧐 **WHY THIS PROJECT?**

The COVID-19 pandemic has affected different regions in unique ways. Timely and detailed data is crucial. This dashboard provides:

1. **Accessible Data Visualization**: Make complex data easy to understand and accessible.
2. **State-Specific Insights**: Focus on particular states to enhance local and regional pandemic response strategies.

## 🚀 **HOW TO INSTALL THE APP**

To get the Interactive COVID-19 Case Trends Dashboard up and running on your local machine, follow these simple steps:

### **Step 1: Clone the Repository**

Clone this repository to your local machine using Git. Open your command prompt or terminal and run:

```bash
git clone https://github.com/yourusername/covid-shiny-dashboard.git
```

### **Step 2: Install R and RStudio**

Download and install R from [CRAN](https://cran.r-project.org/) and RStudio from [RStudio's official site](https://rstudio.com/products/rstudio/download/).

### **Step 3: Install Required Packages**

Open RStudio and install the necessary R packages by running the following command in the R console:

```r
install.packages(c("shiny", "ggplot2", "dplyr", "forecast", "ggfortify", "lubridate"))
```

### **Step 4: Open the Project in RStudio**

Navigate to the directory where you cloned the repository and open the project folder in RStudio.

### **Step 5: Run the Shiny App**

In RStudio, open the `app.R` file. Then, run the Shiny app with this command in the R console:

```r
shiny::runApp("app.R")
```

This will launch the Shiny app in your default web browser, allowing you to interact with the COVID-19 Case Trends Dashboard.

### **Optional: Update the Data**

To update the dataset, replace the existing `us.csv` file in the project directory with the latest data. Ensure the new data follows the same format as the original file.

---

## 📞 **CONTACT**

Encounter any issues during installation? Feel free to open an issue in this repository or contact me at [irenejoff@gmail.com](mailto:irenejoff@gmail.com). I’m here to help! 🌟

