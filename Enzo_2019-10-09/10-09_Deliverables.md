- One-page cleaned summary.
- Data sources chosen.
- Project plan including
  - ETL to single data source
  - Visualization Tool (Tableau, D3, leaflet, etc?)
- You will need a professional Trial for Tableau to get DB access
- Every Group member should have some assigned tasks
- Drawings and flowcharts of the ETL dataflow and cleanup, and even Flowcharts or drawing of application (including such things as the Flask routes)
- Rough drawing of the presentation layer and what you want the visualization to conceptually look like or in Tableau what the story looks like
- What the ML (Machine Learning) model you are trying to use, or leaning toward?
  - Technology tools you are using (Jupyter Notebook, Zepl, Colab, etc).
- Github
  - Setup and ready to go.
- Suggestions:
  - After building the first model, look at the weights and try to reduce the number of features to get a similar result (less data in = easier).   This will probably be an iterative process; can you drop features and get similar results.


  **MACHINE LEARNING IN PROFESSIONAL FOOTBALL**

Enzo Adriano, Charles Campisi, Ian Valentik, &amp; Nick Weaver

The proposal is to use DVOA data compiled by Football Outsiders and game score data to attempt to predict the winners of the games against the Las Vegas spread and straight-up. We will use historical data from 2015 to 2018 to build the model and update the data with this season&#39;s numbers to increase the prediction value.

One of the difficulties of testing is to find a good benchmark for performance. If our prediction has an accuracy of 50%, is it good, bad or mediocre? It likely outperforms random guessing of win or loss (with ties occurring in less than 1% of games), but is that acceptable? Standard platforms suggest a win rate of 54% against the spread must be achieved to be profitable.

Spread data does not need to incorporate the varying positives and negative rates of the money line, but does need to measure margin of victory and we will use DVOA data to predict the likelihood of a team either beating the spread (the favorite winning by more than the spread amount) or covering (the underdogs losing by less than the spread amount or winning outright).