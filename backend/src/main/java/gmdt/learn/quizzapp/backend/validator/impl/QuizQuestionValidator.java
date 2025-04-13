package gmdt.learn.quizzapp.backend.validator.impl;

import static gmdt.learn.quizzapp.backend.model.entity.QuizQuestionEntity.OPTIONS_SEPARATOR;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gmdt.learn.quizzapp.backend.model.entity.QuizEntity;
import gmdt.learn.quizzapp.backend.model.entity.QuizQuestionEntity;
import gmdt.learn.quizzapp.backend.model.request.QuizQuestionApiRequest;
import gmdt.learn.quizzapp.backend.validator.IQuizQuestionValidator;

@Service
public class QuizQuestionValidator implements IQuizQuestionValidator {

    @Autowired
    private CommonValidator commonValidator;

    @Override
    public QuizQuestionEntity validate(QuizQuestionApiRequest request, QuizEntity quiz) {
        var res = new QuizQuestionEntity();
        res.setQuiz(quiz);
        res.setQuestion(commonValidator.validateMandatoryString(request.getQuestion(), "question"));
        res.setAnswerIndex(commonValidator.validateMandatoryInteger(request.getAnswerIndex(), "answerIndex"));
        res.setOptions(commonValidator.validateMandatoryString(String.join(OPTIONS_SEPARATOR, request.getOptions()), "options"));
        return res;
    }

}
