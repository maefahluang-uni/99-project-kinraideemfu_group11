package th.mfu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import th.mfu.model.CommentModel;
import th.mfu.model.UsersModel;
import th.mfu.repository.CommentRepository;

@Service
public class CommentService {

    private final UsersService usersService;
    private final CommentRepository commentRepository; // Assuming you have a CommentRepository

    @Autowired
    public CommentService(UsersService usersService, CommentRepository commentRepository) {
        this.usersService = usersService;
        this.commentRepository = commentRepository;
    }

    public void addComment(String login, String password, Long userId, Long restaurantId, String commentText) {
        // Check if the user is logged in
        if (usersService.isUserLoggedIn(login, password)) {
            // Perform the logic to add the comment
            // For example, save the comment to the database
            UsersModel user = usersService.getUserByLoginAndPassword(login, password);
            if (user != null) {
                CommentModel comment = new CommentModel();
                comment.setUser(user);
                comment.setCommentText(commentText);
                commentRepository.save(comment);

                System.out.println("Comment added successfully!");
            } else {
                System.out.println("User not found.");
            }
        } else {
            // User is not logged in, display a notification
            System.out.println("Please log in before commenting.");
        }
    }

}
