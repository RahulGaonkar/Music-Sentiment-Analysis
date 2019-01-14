# Music-Sentiment-Analysis
•	Designed workflow pipelines containing different supervised machine learning models to predict mood of song   
•	Performed feature engineering from song lyrics dataset using different natural language processing techniques        
•	Developed and evaluated different visualization patterns to display insights from predicted results

## Synopsis
1. The project was developed to predict the mood of the song (happy or sad) based on the lyrics of the song
2. The dataset containing the lyrics of 1000 labeled (happy or sad) songs was taken from the following project (https://github.com/rasbt/musicmood)
3. Different pipelines were created to try all combinations of data preprocessing techniques, feature extraction & selection techniques, machine learning model building & tuning techniques to make a comparative study of the accuracy of the predicted results<br> 
   i. ***Data Preprocessing techniques:*** Data Cleaning, Tokenization, Stop Word Removal, Stemming/Lemmatisation, Label Encoding<br>
   ii. ***Feature Extraction:*** Count Vectorization, TFIDF, Polarity Assignment of Lyrics (nltk.sentiment.vader) <br>
   iii. ***Feature Selection:*** Count Vectorization on Unigram, Count Vectorization on Bigram, Count Vectorization on Unigram and Bigram, TFIDF Vectorization on Unigram, TFIDF Vectorization on Bigram, TFIDF Vectorization on Unigram & Bigram, Unigrams TFIDF Vectorization and Lyrics Polarity Value <br>
   iv. ***Model Building:*** SVM, Naive Bayesian, Gradient Boosting <br>
   v. ***Tuning:*** Cross-Validation, Hyperparameter tuning <br>
4. Different visualisation patterns like Word Cloud, Comparison Cloud & Pyramid Plot were also created to get some insights from the predicted results
5. Technologies, Libraries & Software Tools Used : Pyspark, R, nltk, Spark ML, Spark Mlib, Spark SQL, Docker, Zeppelin, R Studio
## How to Setup
1. Import all the three JSON files namely Music Mood Analysis 1.json, Music Mood Analysis 2.json and Music Mood Analysis 3.json from the Zeppelin Pyspark Code folder in your Zeppelin notebook to see the Pyspark code for this project
2. Import the RScript.R script from the Data Visualization Code folder in RStudio to check out the code written in R
## More
[Project Report](Music_Sentiment_Analysis_Report.pdf)

[Project Presentation](Music_Sentiment_Analysis_Presentation.pdf)
