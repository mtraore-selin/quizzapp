package gmdt.learn.quizzapp.backend.validator;

import gmdt.learn.quizzapp.backend.model.entity.QuizEntity;
import gmdt.learn.quizzapp.backend.model.request.QuizApiRequest;

public interface IQuizValidator {

    QuizEntity validateId(String id);

    QuizEntity validate(QuizApiRequest request);

}
