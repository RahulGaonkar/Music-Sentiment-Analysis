library(tidyverse)
library(tm)
library(wordcloud)
library(tidytext)
library(readr)
library(RColorBrewer)


result_2 <- read_csv("Z:/Documents/stackoverflow/result_2.csv")

colorpal <- brewer.pal(8, "Dark2")

#Sad-------------------
sad <- result_2 %>%
filter(prediction==0)
sadcorpus <- VCorpus(VectorSource(sad$`unigrams__-`))
saddtm <- DocumentTermMatrix(sadcorpus)
matrixneg <- as.matrix(saddtm)
values <- colSums(matrixneg)
sad_df <- data.frame(word = names(values),freq=values)
par(bg="black")
wcloud <- wordcloud(words = sad_df$word, freq = sad_df$freq, max.words=200, random.order=FALSE, rot.per=0.3, colors=colorpal, random.color = TRUE)


#Happy------------------
happy <- result_2 %>%
filter(prediction==1)
happycorpus <- VCorpus(VectorSource(happy$`unigrams__-`))
happydtm <- DocumentTermMatrix(happycorpus)
matrixpos <- as.matrix(happydtm)
values <- colSums(matrixpos)
happy_df <- data.frame(word = names(values),freq=values)
par(bg="black")
wcloud <- wordcloud(words = happy_df$word, freq = happy_df$freq, max.words=200, random.order=FALSE, rot.per=0.3, colors=colorpal, random.color = TRUE)
 

#Comparison--------------
positi <- paste(happy$`unigrams__-`, collapse =" ")
negati <- paste(sad$`unigrams__-`, collapse = " ")
top2000 <- data.frame(texts = c(positi, negati))
kick_text <- VCorpus(VectorSource(top2000$texts))
text_tdm <- TermDocumentMatrix(kick_text)
text_matrix <- as.matrix(text_tdm)
colnames(text_matrix) <- c("Happy Songs", "Sad Songs")
colorpal <- brewer.pal(11, "Spectral")
spectral <- colorpal[c(4,9)]
par(bg="black")
comparison.cloud(text_matrix, colors=spectral, random.order = F, max.words = 300)


#PyramidPlot-------------
common <- merge (happy_df, sad_df, by="word")
common <- common %>%
  top_n(20, wt=(freq.x + freq.y))
df <- common[order(-(common$freq.x+common$freq.y)),]
par(bg="white")
p <- pyramid.plot(df$freq.x, df$freq.y, 
                  labels = df$word, 
                  gap = 40, 
                  top.labels = c("Happy Songs", " ", "Sad Songs"), 
                  main = "Words in Common", 
                  laxlab = NULL, 
                  raxlab = NULL, 
                  unit = NULL, 
                  labelcex=1)

