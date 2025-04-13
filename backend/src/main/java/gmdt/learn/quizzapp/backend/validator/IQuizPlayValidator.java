package gmdt.learn.quizzapp.backend.validator;

import gmdt.learn.quizzapp.backend.model.entity.QuizPlayEntity;
import gmdt.learn.quizzapp.backend.model.request.QuizPlayApiRequest;


public interface IQuizPlayValidator {

    QuizPlayEntity validate(QuizPlayApiRequest request);

}
