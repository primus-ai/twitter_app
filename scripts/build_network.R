# Build Networks 

## Build mentions Network

constituyentes_rt_network <- constituyentes_tweets %>% 
    filter(retweet_name %in% constituyentes$name) %>% 
    gt_edges(name, retweet_name, text) %>% 
    gt_graph()

constituyentes_rt_nodes <- as_data_frame(constituyentes_rt_network, what = "vertices")

constituyentes_rt_nodes <- constituyentes_rt_nodes %>% 
    mutate(id = name) %>% 
    mutate(label = name) %>% 
    mutate(title = name) %>% 
    mutate(degree = degree(constituyentes_rt_network)) %>% 
    mutate(value = degree)

constituyentes_rt_edges <- as_data_frame(constituyentes_rt_network, what = "edges")
constituyentes_rt_edges <- constituyentes_rt_edges %>% 
    mutate(title = text)

## Add community detection
constituyentes_rt_nodes <- constituyentes_rt_nodes %>% 
    mutate(group = membership(infomap.community(constituyentes_rt_network)))

## Add PageRank for detecting nodes with high influence
constituyentes_rt_nodes <- constituyentes_rt_nodes %>% 
    mutate(PageRank = page_rank(constituyentes_rt_network)$vector) %>% 
    mutate(value = PageRank)
