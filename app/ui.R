shinyUI(pageWithSidebar(
  headerPanel("Infant and Toddler Growth Percentile"),
  sidebarPanel(
    p("Enter your child's gender, age, and measurements.  Then hit submit to learn what percentile they are in for each measurement."),
    radioButtons("gender", "Gender", inline=TRUE,
                 choices=c('Male'='1', 'Female'='2')),
    selectInput("months", "Age",
                choices=c(
                  'Select one'='-1',
                  'Newborn'='0',
                  '0-1 months'='0.5',
                  '1-2 months'='1.5',
                  '2-3 months'='2.5',
                  '3-4 months'='3.5',
                  '4-5 months'='4.5',
                  '5-6 months'='5.5',
                  '6-7 months'='6.5',
                  '7-8 months'='7.5',
                  '8-9 months'='8.5',
                  '9-10 months'='9.5',
                  '10-11 months'='10.5',
                  '11-12 months'='11.5',
                  '12-13 months'='12.5',
                  '13-14 months'='13.5',
                  '14-15 months'='14.5',
                  '15-16 months'='15.5',
                  '16-17 months'='16.5',
                  '17-18 months'='17.5',
                  '18-19 months'='18.5',
                  '19-20 months'='19.5',
                  '20-21 months'='20.5',
                  '21-22 months'='21.5',
                  '22-23 months'='22.5',
                  '23-24 months'='23.5',
                  '24-25 months'='24.5',
                  '25-26 months'='25.5',
                  '26-27 months'='26.5',
                  '27-28 months'='27.5',
                  '28-29 months'='28.5',
                  '29-30 months'='29.5',
                  '30-31 months'='30.5',
                  '31-32 months'='31.5',
                  '32-33 months'='32.5',
                  '33-34 months'='33.5',
                  '34-35 months'='34.5',
                  '35-36 months'='35.5',
                  '36 months'='36'
                  )),
    p(
      div(style="display:inline-block", 
          numericInput('weight', 'Weight', 0)),
      div(style="display:inline-block", 
          radioButtons("weightunit", "", inline=TRUE,
                       choices=c('Kilograms'='kg', 'Pounds'='lb')))
      ),
    p(
      div(style="display:inline-block", 
          numericInput('height', 'Height', 0)),
      div(style="display:inline-block", 
          radioButtons("heightunit", "", inline=TRUE,
                       choices=c('Centimeters'='cm', 'Inches'='in')))
      ),
    p(
      div(style="display:inline-block", 
        numericInput('head', 'Head circumfrence', 0)),
      div(style="display:inline-block", 
          radioButtons("headunit", "", inline=TRUE,
                       choices=c('Centimeters'='cm', 'Inches'='in')))
      ),
    submitButton('Submit')
    ),
  mainPanel(
    h3(
      span('Your ', inline=TRUE),
      textOutput('age', inline=TRUE),
      textOutput('gender', inline=TRUE),
      span(' child is in the ', inline=TRUE),
      textOutput('weightpct', inline=TRUE),
      span(' percentile for weight, the ', inline=TRUE),
      textOutput('heightpct', inline=TRUE),
      span(' percentile for height, and the', inline=TRUE),
      textOutput('headpct', inline=TRUE), span(' percentile for head circumference.', inline=TRUE)
    ),
    p('Note: these percentiles are based on data from the United States.  Percentiles in other countries are likely to be different.')
    )
))
