package com.anand.dto;

public class TweetDTO {
	private int tweetID;
	private String loginID;
	private String tweeterName;
	private String tweet;
	private String tweetDate;
	private int totalLike;
	private int likeID;
	private String likeName;
	private String like;
	private String likeDate;
	private String tweetCategory;

	public int getTweetID() {
		return tweetID;
	}

	public void setTweetID(int tweetID) {
		this.tweetID = tweetID;
	}

	public String getLoginID() {
		return loginID;
	}

	public void setLoginID(String loginID) {
		this.loginID = loginID;
	}

	public String getTweeterName() {
		return tweeterName;
	}

	public void setTweeterName(String tweeterName) {
		this.tweeterName = tweeterName;
	}

	public String getTweet() {
		return tweet;
	}

	public void setTweet(String tweet) {
		this.tweet = tweet;
	}

	public String getTweetDate() {
		return tweetDate;
	}

	public void setTweetDate(String tweetDate) {
		this.tweetDate = tweetDate;
	}

	public int getTotalLike() {
		return totalLike;
	}

	public void setTotalLike(int totalLike) {
		this.totalLike = totalLike;
	}

	public int getLikeID() {
		return likeID;
	}

	public void setLikeID(int likeID) {
		this.likeID = likeID;
	}

	public String getLikeName() {
		return likeName;
	}

	public void setLikeName(String likeName) {
		this.likeName = likeName;
	}

	public String getLike() {
		return like;
	}

	public void setLike(String like) {
		this.like = like;
	}

	public String getLikeDate() {
		return likeDate;
	}

	public void setLikeDate(String likeDate) {
		this.likeDate = likeDate;
	}

	public String getTweetCategory() {
		return tweetCategory;
	}

	public void setTweetCategory(String tweetCategory) {
		this.tweetCategory = tweetCategory;
	}

}
