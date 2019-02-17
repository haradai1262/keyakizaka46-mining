# keyakizaka46-mining


### an example of folder structure 
``` 
|- data/ # folder for saving data
   |
   |- blog
      |- keyakizala46_blog.csv
      |- nogizaka46_blog.csv
   |- profile
      |- keyakizaka46_profile.csv
      |- nogizaka46_profile.csv
   |
   |- images/ # folder for saving images
   |
   |- tweet/ # folder for saving tweets
   |
   |- ref/

|- model/ # model for feature extraction

|- result/ # result

|- secret/ # secret files ( e.g. API info )
   |- 

|- script/
   |
   |- blog_mining/
      |- blog_interaction.ipynb
   |- feature_extraction/
      |- extract_facenet_features_from_blog_image.ipynb
      |- extract_vgg16_features_from_blog_image.ipynb
   |- scraping/
      |- scraping_Blog.ipynb # ... scraping official blogs
      |- scraping_Profile.ipynb # ... scraping official member profiles
      |- retrieve_Blog_images.ipynb # ... retrieve Blog images
   |- tweet_mining/
      |- get_twitterstream.ipynb # ... save twitter stream with search query


```

### references

- https://qiita.com/myaun/items/bf3752787f7623b30887
