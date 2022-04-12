# Timeline prep and Viz

constituyentes_tweets %>% 
    mutate(created_at = floor_date(created_at, unit = "hours")) %>% 
    mutate(created_at = created_at %>% datetime_to_timestamp()) %>% 
    group_by(created_at) %>% 
    summarise(n = n()) %>% 
    hchart(
        type = "line",
        hcaes(x = created_at, y = n)) %>% 
    hc_xAxis(
        title = list(text = ""),
        type = 'datetime',
        labels = list(format = '{value: %Y-%b-%e %H:%M:%S}')
    ) %>% 
    hc_yAxis(
        title = list(
            text = "Tweets"
        )
    ) %>% 
    hc_add_theme(hc_theme_flat()) %>% 
    hc_navigator(
        enabled = T
        
    ) %>% 
    hc_plotOptions(
        series = list(
            showInLegend = F
        )
    )
               

