body_about <- dashboardBody(
  fluidRow(
    fluidRow(
      column(
        box(
          title = div("About this project", style = "padding-left: 20px", class = "h2"),
          column(
            "This dashboard shows recent developments of the COVID-19 pandemic.",
            tags$br(),
            h3("Data"),
            tags$ul(
              tags$li(tags$b("COVID-19 data:"), tags$a(href = "https://github.com/CSSEGISandData/COVID-19",
                "Johns Hopkins CSSE")),
              tags$li(tags$b("Population data:"), tags$a(href = "https://data.worldbank.org/indicator/SP.POP.TOTL",
                "The World Bank"), "& Wikipedia for countries which are not in World Bank data set.")
            ),
            HTML("<b>Note</b>: Johns Hopkins is not updating their data on recovered cases anymore for various
            countries. Therefore, this data is estimated as <i>(Confirmed at current date - 14 days) - deceased at
            current date)</i>, wherever no real data is available."),
            h3("Contact"),
            tags$a(href = "https://www.facebook.com/nguyenquocduong.math", "Nguyen Quoc Duong"),
            width = 12,
            style = "padding-left: 20px; padding-right: 20px; padding-bottom: 40px; margin-top: -15px;"
          ),
          width = 12,
        ),
        width = 12,
        style = "padding: 15px"
      )
    )
  )
)

page_about <- dashboardPage(
  title   = "About",
  header  = dashboardHeader(disable = TRUE),
  sidebar = dashboardSidebar(disable = TRUE),
  body    = body_about
)