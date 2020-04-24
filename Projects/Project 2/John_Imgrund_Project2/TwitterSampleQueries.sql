#Written By John Imgrund

#Sample Queries for Project 2

USE twitter;

#Run a few deletes to clear the data that is created below, just in case you decide on multiple runs
DELETE FROM Retweet WHERE user_id = 1 AND tweet_id = 3;

#Insert new Tweet

#The tweet_id auto increments so that each tweet can be uniquely identified. the NOW() function grabs the current date time to stamp the tweet for use in timelines. 
#Then the users id is tagged so that the system knows who owns the tweet.
INSERT INTO Tweet (tweet_text, tweet_datetime, user_id) VALUES("This is John's 2nd Tweet.", NOW(), 1);

#Delete Tweet
#If you need to delete a tweet just delete it using the tweet_id. (this line deletes the tweet created above)
DELETE FROM Tweet WHERE tweet_id = 6;

#retweet
#A Retweet creates a link to another tweet us its id, and adds its own timestamp to mark the time of retweet.
#The data is user_id, tweet_id, retweet_datetime
INSERT INTO Retweet VALUES(1, 3, NOW());

#follow user
#Following a user is as simple as adding a row to the Following table, listing thier user_id and yours
INSERT INTO Following VALUES(1, 4);

#unfollow user
#To Unfollow a user, you need to input the user_id of both the user who wants to stop following someone, and who they want to stop following
DELETE FROM Following WHERE user_id = 1 AND following_user_id = 4;

#favorite a tweet
#Favoriting a tweet is very similar to a retweet, it creates a link between a user and a tweet.
INSERT INTO FavoriteTweet (user_id, tweet_id) VALUES(3,1);

#unfavorite a tweet
DELETE FROM FavoriteTweet WHERE FavoriteTweet_id = 6;

#User Timelines (Tweets/Retweets)
#Here I am taking the tweets from both the retweet and tweet tables that correspond to the user with user_id one, then combining them to sort
#by date_time. I also have created an extra tag to denote whether something is a person tweet or a retweet. 
SELECT user_name, tweet_text, tweet_datetime AS PostTime, 'Tweet' AS Tag FROM Users JOIN Tweet 
	ON Users.user_id = Tweet.user_id 
WHERE Tweet.user_id = 1
UNION
SELECT (SELECT user_name FROM Users WHERE user_id = tweet.user_id), tweet_text, retweet_datetime AS PostTime, 'Retweet' AS Tag FROM Users JOIN Retweet ON
	Users.user_id = Retweet.user_id
		JOIN Tweet
			ON Retweet.tweet_id = Tweet.tweet_id
WHERE Retweet.user_id = 1
ORDER BY PostTime DESC;

#see a users favorited tweets
#First I subquery to find the username of the orignal poster, then I simply display the tweet text and datetime based on the Favorite Tweet user_id
SELECT (SELECT user_name FROM Users WHERE user_id = tweet.user_id) AS Original_Poster, tweet_text, tweet_datetime FROM Users JOIN FavoriteTweet ON
	Users.user_id = FavoriteTweet.user_id
		JOIN Tweet ON
			FavoriteTweet.tweet_id = Tweet.tweet_id
WHERE FavoriteTweet.user_id = 2;

#see a list of who a users following
#Another subquery, here I am matching up the user_ids the user is following with the user_names they have, then displaying them
SELECT (SELECT user_name FROM Users WHERE user_id = following_user_id) AS Following_Users FROM Following WHERE user_id = 1;

#see a list of a users followers
#Running a quick subquery to find the usernames of the current search users followers, then displaying them
SELECT (SELECT user_name FROM Users WHERE user_id = following.user_id) AS followers FROM Following WHERE following_user_id = 3;

#Check how many times a tweet has been favorited
#To find how many times a tweet has been liked, check the count of rows with that tweet_id in FavoriteTweet
SELECT COUNT(*) FROM FavoriteTweet WHERE tweet_id = 4;

#Check how many times a tweet has been retweeted
#To find how many times a tweet has been retweeted, check the count of rows with that tweet_id in Retweet
SELECT COUNT(*) FROM Retweet WHERE tweet_id = 3;

#Count of Followers
#Taking the get followers query from above and just getting the count
SELECT COUNT(*) FROM Following WHERE user_id = 1;

#Count of followings
#Taking the get followings query from above and just getting the count
SELECT COUNT(*) FROM Following WHERE following_user_id = 3;