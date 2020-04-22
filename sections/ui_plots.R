body_plots <- dashboardBody(
  fluidRow(
    fluidRow(
      fluidRow(
        box(
          title = "New cases",
          plotlyOutput("case_evolution_new"),
          column(
            uiOutput("selectize_casesByCountries_new"),
            width = 3,
          ),
          column(
            HTML("Note: Active cases are calculated as <i>Confirmed - (Estimated Recoveries + Deceased)</i>. Therefore, <i>new</i> active cases can
          be negative for some days, if on this day there were more new estimated recoveries + deceased cases than there were new
          confirmed cases."),
            width = 7
          ),
          width = 12
        )
      ),
      fluidRow(
        box(
          title = "Cases per Country",
          plotlyOutput("case_evolution_byCountry"),
          fluidRow(
            column(
              uiOutput("selectize_casesByCountries"),
              width = 3,
            ),
            column(
              checkboxInput("checkbox_logCaseEvolutionCountry", label = "Logarithmic Y-Axis", value = FALSE),
              checkboxInput("checkbox_per100kEvolutionCountry", label = "Per Population", value = FALSE),
              width = 3,
              style = "float: right; padding: 10px; margin-right: 50px"
            )
          ),
          width = 12
        )
      )
    )
  )
)

page_plots <- dashboardPage(
  title   = "Plots",
  header  = dashboardHeader(disable = TRUE),
  sidebar = dashboardSidebar(disable = TRUE),
  body    = body_plots
)