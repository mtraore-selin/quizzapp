package gmdt.learn.quizzapp.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import gmdt.learn.quizzapp.backend.model.entity.QuizQuestionEntity;

import java.util.UUID;

@Repository
public interface IQuizQuestionRepository extends JpaRepository<QuizQuestionEntity, UUID> {

}
