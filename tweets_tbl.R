## Tabla de Tweets

# Table options
options(reactable.theme = reactableTheme(
    color = "hsl(233, 9%, 87%)",
    backgroundColor = "hsl(233, 9%, 19%)",
    borderColor = "hsl(233, 9%, 22%)",
    stripedColor = "hsl(233, 12%, 22%)",
    highlightColor = "hsl(233, 12%, 24%)",
    inputStyle = list(backgroundColor = "hsl(233, 9%, 25%)"),
    selectStyle = list(backgroundColor = "hsl(233, 9%, 25%)"),
    pageButtonHoverStyle = list(backgroundColor = "hsl(233, 9%, 25%)"),
    pageButtonActiveStyle = list(backgroundColor = "hsl(233, 9%, 28%)")
))

constituyentes_tweets %>% 
    select(Constituyente = name, Tweet = text, Retweets = retweet_count) %>% 
    arrange(desc(Retweets)) %>% 
    reactable(
        searchable = T,
        resizable = T,
        striped = T,
        highlight = T
    )
    
    
