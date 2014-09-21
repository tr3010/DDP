shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body Mass Index calculation for Adults"),
    sidebarPanel(
      numericInput('height', ' Your height in cm', 0, min = 0),
      numericInput('weight', 'Your weight in kg', 0, min = 0),
      submitButton('Calculate BMI'),
      br(),
      p(strong(em("Documentation:",a("Body Mass Index Classification in Adults",href="READMe.html")))),
      p(strong(em("Github repository:",a("Developing Data Products",href="https://github.com/tr3010/DDP"))))
    ),
    mainPanel(
      h3('Your BMI'),
      verbatimTextOutput("prediction"),
      img(src="WHOBMI.png", height = 600, width =600)
    )
  )
)