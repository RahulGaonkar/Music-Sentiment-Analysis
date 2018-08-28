# Music-Sentiment-Analysis
A comparative study based on accuracy of prediction by training different machine learning models using supervised learning approach to predict the mood of song with the features created by processing the lyrics of large labeled song dataset using different natural language processing techniques followed by creating different visualization patterns to get some insights from the predicted results. 
## Synopsis
1. The project was developed to predict the mood of the song (happy or sad) based on the lyrics of the song.
2. The dataset containing the lyrics of 1000 labeled (happy or sad) songs was taken from the following project (https://github.com/rasbt/musicmood).
3. Different pipelines were created to try all combinations of data preprocessing techniques, feature extraction & selection techniques, machine learning model building & tuning techniques to make a comparative study of the accuracy of the predicted results. 
   i. Data Preprocessing techniques: Data Cleaning, Tokenization, Stop Word Removal, Stemming/Lemmatisation, Label Encoding.
   ii.Feature Extraction: Count Vectorization, TFIDF, Polarity Assignment of Lyrics (nltk.sentiment.vader).
   iii. Feature Selection: Count Vectorization on Unigram, Count Vectorization on Bigram, Count Vectorization on Unigram & Bigram, TFIDF 
      Vectorization on Unigram, TFIDF Vectorization on Bigram, TFIDF Vectorization on Unigram & Bigram, Unigrams TFIDF Vectorization and 
      Lyrics Polarity Value.
   iv. Model Building: SVM, Naive Bayesian, Gradient Boosting.
   v. Tuning: Cross-Validation, Hyperparameter tuning.
4. Different visualisation patterns like Word Cloud, Comparison Cloud & Pyramid Plot were also created to get some insights from the predicted results.
5. Technologies, Libraries & Software Tools Used : Pyspark, R, nltk, Spark ML, Spark Mlib, Spark SQL, Docker, Zeppelin.
