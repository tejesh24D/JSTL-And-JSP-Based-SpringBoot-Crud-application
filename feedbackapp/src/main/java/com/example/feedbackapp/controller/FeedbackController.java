package com.example.feedbackapp.controller;

import com.example.feedbackapp.model.Feedback;
import com.example.feedbackapp.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/feedback")
public class FeedbackController {

    @Autowired
    private FeedbackService feedbackService;

    @GetMapping
    public String listFeedback(Model model) {
        List<Feedback> feedbackList = feedbackService.getAllFeedback();
        model.addAttribute("feedbackList", feedbackList);
        return "index"; // Points to /WEB-INF/jsp/index.jsp
    }

    @GetMapping("/form")
    public String feedbackForm(Model model) {
        model.addAttribute("feedback", new Feedback());
        return "feedback-form"; // Points to /WEB-INF/jsp/feedback-form.jsp
    }

    @PostMapping("/submit")
    public String submitFeedback(@ModelAttribute Feedback feedback) {
        feedbackService.saveFeedback(feedback);
        return "redirect:/feedback"; // Redirect to the list of feedback
    }

    @GetMapping("/delete/{id}")
    public String deleteFeedback(@PathVariable String id) {
        feedbackService.deleteFeedback(id);
        return "redirect:/feedback"; // Redirect to the list of feedback
    }
}
