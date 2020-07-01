class PostData {
  String postId;
  String postType;
  String userId;
  String postCaption;
  String postUrl;
  num likeCount;
  num commentCount;

  get getPostId => this.postId;
  get getPostType => this.postType;
  get getUserId => this.userId;
  get getPostCaption => this.postCaption;
  get getPostUrl => this.postUrl;
  get getLikeCount => this.likeCount;
  get getCommentCount => this.commentCount;

  set setPostId(String postId) => this.postId = postId;
  set setPostType(String postType) => this.postType = postType;
  set setUserId(String userId) => this.userId = userId;
  set setPostCaption(String postCaption) => this.postCaption = postCaption;
  set setPostUrl(String postUrl) => this.postUrl = postUrl;
  set setLikeCount(num likeCount) => this.likeCount = likeCount;
  set setCommentCount(num commentCount) => this.commentCount = commentCount;
}
