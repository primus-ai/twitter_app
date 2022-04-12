# Visualize Network

visNetwork(constituyentes_rt_nodes, constituyentes_rt_edges,
           height = "1000px", width = "100%",
           main = list(text = "Constituyentes Retweet Network"),
           background = "black") %>% 
    visIgraphLayout(layout = "layout_nicely") %>%
    visEdges(arrows = "to") %>% 
    visOptions(highlightNearest = T, nodesIdSelection = T, selectedBy = "group") %>% 
    visInteraction(tooltipStyle = 'position: fixed;visibility:hidden;padding: 5px;font-family: verdana;
    font-size:14px;font-color: white;background-color: white;-moz-border-radius: 3px;*
    -webkit-border-radius: 3px;border-radius: 3px; border: 1px solid #808074;
    box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.2);max-width:400px;word-break: break-all')

