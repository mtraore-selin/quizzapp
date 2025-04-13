package gmdt.learn.quizzapp.backend.validator;

import gmdt.learn.quizzapp.backend.model.entity.QuizEntity;
import gmdt.learn.quizzapp.backend.model.entity.QuizQuestionEntity;
import gmdt.learn.quizzapp.backend.model.request.QuizQuestionApiRequest;

public interface IQuizQuestionValidator {

    QuizQuestionEntity validate(QuizQuestionApiRequest request, QuizEntity quiz);

}
