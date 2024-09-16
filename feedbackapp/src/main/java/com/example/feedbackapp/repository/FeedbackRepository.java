package com.example.feedbackapp.repository;

import com.example.feedbackapp.model.Feedback;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface FeedbackRepository extends MongoRepository<Feedback, String> {
}
