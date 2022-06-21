install.packages(
  "httr",
  repos = "https://packagemanager.rstudio.com/all/latest"
)

u_usgs <- "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson"
arquivo <- "usgs_r.json"
httr::GET(u_usgs, httr::write_disk(arquivo, overwrite = TRUE))
