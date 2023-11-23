package th.mfu.model;

public class CommentRequest {

    private String login;
    private String password;
    private Long userId;
    private String commentText;

    // Constructors, getters, and setters

    public CommentRequest() {
        // Default constructor
    }

    public CommentRequest(String login, String password, Long userId, String commentText) {
        this.login = login;
        this.password = password;
        this.userId = userId;
        this.commentText = commentText;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getCommentText() {
        return commentText;
    }

    public void setCommentText(String commentText) {
        this.commentText = commentText;
    }
}
