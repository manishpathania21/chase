package utils;

public class EndPoints {
    public static String GET_USERS = "/users";
    public static String GET_USERS_byId = "/users/{userid}";
    public static String POST_posts = "/posts";
    public static String PATCH_posts = "/posts/{postId}";
    public static String POST_Comments = "/posts/{postId}/comments";
    public static String PATCH_Comments = "/comments/{commentId}";
    public static String GET_posts = "/posts?userId={userId}";
}
