package gmdt.learn.quizzapp.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import gmdt.learn.quizzapp.backend.model.entity.QuizPlayEntity;

@Repository
public interface IQuizPlayRepository extends JpaRepository<QuizPlayEntity, QuizPlayEntity.PrimaryKey> {

}
