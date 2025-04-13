package gmdt.learn.quizzapp.backend.controller.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.web.bind.annotation.*;

import gmdt.learn.quizzapp.backend.controller.IUserController;
import gmdt.learn.quizzapp.backend.model.entity.UserEntity;
import gmdt.learn.quizzapp.backend.model.request.QuizPlayApiRequest;
import gmdt.learn.quizzapp.backend.model.request.QuizPlayApiRequestBody;
import gmdt.learn.quizzapp.backend.model.response.QuizPlayApiResponse;
import gmdt.learn.quizzapp.backend.model.response.UserApiResponse;
import gmdt.learn.quizzapp.backend.repository.IQuizPlayRepository;
import gmdt.learn.quizzapp.backend.repository.IUserRepository;
import gmdt.learn.quizzapp.backend.validator.impl.QuizPlayValidator;

import java.util.List;

@RestController
public class UserController implements IUserController {

    @Autowired
    private IUserRepository userRepository;

    @Autowired
    private IQuizPlayRepository quizPlayRepository;

    @Autowired
    private QuizPlayValidator quizPlayValidator;

    @GetMapping("/users")
    public List<UserApiResponse> getUsers() {
        return userRepository.findAll().stream().map(UserEntity::toApiResponse).toList();
    }

    @PostMapping("/users/current/quizzes/{quizId}/plays")
    public ResponseEntity<Void> addQuizPlay(@PathVariable String quizId, @RequestBody QuizPlayApiRequestBody body, OAuth2AuthenticationToken token) {
        var request = QuizPlayApiRequest.builder().quizId(quizId).body(body).token(token).build();
        quizPlayRepository.save(quizPlayValidator.validate(request));
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/users/current/quizzes/plays")
    public List<QuizPlayApiResponse> getQuizPlays(OAuth2AuthenticationToken token) {
        return userRepository.findByAccessToken(token).toQuizPlaysApiResponse();
    }

}
