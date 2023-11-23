package th.mfu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import th.mfu.model.CommentModel;
import th.mfu.model.CommentRequest;
import th.mfu.service.CommentService;

@RestController
@RequestMapping("/api/comments")
public class CommentController {

    private final CommentService commentService;

    @Autowired
    public CommentController(CommentService commentService) {
        this.commentService = commentService;
    }
    @GetMapping("/comment")
    public String getCommentPage(Model model){
        model.addAttribute("commentRequest", new CommentModel());
        return "comment";
    }

    @PostMapping("/comment")
    public ResponseEntity<String> addComment(@RequestBody CommentRequest commentRequest) {
        try {
            // Assuming CommentRequest has fields: login, password, userId, commentText
            commentService.addComment(
                    commentRequest.getLogin(),
                    commentRequest.getPassword(),
                    commentRequest.getUserId(),
                    null, commentRequest.getCommentText()
            );
            return new ResponseEntity<>("Comment added successfully!", HttpStatus.OK);
        } catch (Exception e) {
            // Handle exceptions, log the error, and return an appropriate response
            e.printStackTrace(); // Log the exception
            return new ResponseEntity<>("Error adding comment", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
