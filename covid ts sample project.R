


library(shiny)
library(ggplot2)
library(dplyr)
library(forecast)
library(ggfortify)
library(lubridate)

df <- read.csv("C:\\Users\\user\\Desktop\\dvexam\\us.csv")
df$Date <- as.Date(df$date, format = "%Y-%m-%d")

# Define UI
ui <- fluidPage(
  titlePanel("COVID-19 Dashboard"),
  sidebarLayout(
    sidebarPanel(
      selectInput("state", "Select State:", choices = unique(df$state), selected = "Arizona")
    ),
    mainPanel(
      plotOutput("timeSeriesPlot")
    )
  )
)

# Define Server
server <- function(input, output) {
  # Reactive expression to filter data based on state
  filtered_data <- reactive({
    df %>% filter(state == input$state)
  })
  
  # Time Series Plot
  output$timeSeriesPlot <- renderPlot({
    data <- filtered_data() %>% group_by(Date) %>% summarise(cases = sum(cases))
    
    # Determine the range of the y-axis
    y_max <- max(data$cases, na.rm = TRUE)
    
    ggplot(data, aes(x = Date, y = cases)) +
      geom_line(color = "blue", size = 1) +
      geom_point(color = "red", size = 0.5) +
      labs(title = paste("Time Series of COVID-19 Cases in", input$state),
           x = "Date", y = "Number of Cases") +
      theme_minimal() +
      theme(
        plot.title = element_text(size = 20, face = "bold", hjust = 0.5),
        axis.title.x = element_text(size = 14, face = "bold"),
        axis.title.y = element_text(size = 14, face = "bold"),
        axis.text.x = element_text(size = 10, angle = 45, hjust = 1),
        axis.text.y = element_text(size = 12)
      ) +
      scale_x_date(date_breaks = "3 months", date_labels = "%b %Y") +
      scale_y_continuous(labels = scales::comma) +
      geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = "dashed", color = "darkred") +
      annotate("text", x = as.Date("2020-03-01"), y = y_max * 0.9,  # Adjust y position
               label = "Start of Lockdown", hjust = 1.2, color = "darkred", angle = 90, size = 4)
  })
}

shinyApp(ui = ui, server = server)
