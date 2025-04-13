package gmdt.learn.quizzapp.backend.exception;

public class QuizNotFoundException extends NotFoundException {

    public QuizNotFoundException(String id) {
        super("Quiz avec l'id '%s' non trouvé".formatted(id));
    }
}
