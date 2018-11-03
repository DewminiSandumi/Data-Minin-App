## SIDEBAR

sidebar <- dashboardSidebar(
  sidebarMenu(
        menuItem(
            "Dashboard",
            tabName = "dashboard",
            icon = icon("play")
        ),
        
        menuItem(
            "Dashboard Results",
            tabName = "results",
            icon = icon("play")
        ),
        menuItem(
          "Cluster Analysis",
          tabName = "cluster",
          icon = icon("sitemap")
        )
    )
)
