library(DT)

# Data for the table
data <- read.csv("./data/final-results.csv", sep = ";")

# Create an interactive table and return it
print(
  datatable(
    data,
    options = list(
      paging = FALSE,
      lengthChange = FALSE,
      dom = 'Bfrtip',
      buttons = c('colvis', 'csv', 'excel'),
      columnDefs = list(
        list(targets = "_all", width = "150px")
      )
    ),
    extensions = 'Buttons'
  )
)


