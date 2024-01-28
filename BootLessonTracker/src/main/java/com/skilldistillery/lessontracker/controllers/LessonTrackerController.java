package com.skilldistillery.lessontracker.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.lessontracker.data.LessonTrackerDAO;
import com.skilldistillery.lessontracker.entities.LessonTracker;

@Controller
public class LessonTrackerController {

    @Autowired
    private LessonTrackerDAO ltDAO;

    @GetMapping({ "", "/", "home.do" })
    public String index() {
        return "index";
    }

    @GetMapping(path = "getLesson.do", params = "keyword")
    public String findByKeyword(Model model, @RequestParam("keyword") String keyword) {
        List<LessonTracker> lessons = ltDAO.findByKeyword(keyword);
        if (!lessons.isEmpty()) {
            model.addAttribute("lessons", lessons);
            return "results";
        }
        return "index";
    }

    @GetMapping(path = "getLesson.do", params = "id")
    public String showLesson(@RequestParam("id") int id, Model model) {
        LessonTracker lesson = ltDAO.findById(id);
        if (lesson != null) {
            model.addAttribute("lesson", lesson);
            return "details";
        }
        return "index";
    }

    @GetMapping("showAllLessons.do")
    public String showAllLessons(Model model) {
        List<LessonTracker> lessons = ltDAO.findAll();
        model.addAttribute("lessons", lessons);
        return "showAllLessons";
    }

    @GetMapping("createLessonForm.do")
    public String createLessonForm(Model model) {
        model.addAttribute("lesson", new LessonTracker());
        return "createLessonForm";
    }

    @PostMapping("createLesson.do")
    public String createLesson(@ModelAttribute("lesson") LessonTracker lesson) {
        ltDAO.createLesson(lesson);
        return "redirect:/showAllLessons.do";
    }

    @GetMapping("updateLessonForm.do/{id}")
    public String updateLessonForm(@PathVariable("id") int id, Model model) {
        LessonTracker lesson = ltDAO.findById(id);
        if (lesson != null) {
            model.addAttribute("lesson", lesson);
            return "updateLessonForm";
        }
        return "index";
    }

    @PostMapping("updateLesson.do/{id}")
    public String updateLesson(@PathVariable("id") int id, @ModelAttribute("lesson") LessonTracker updatedLesson) {
        ltDAO.updateLesson(id, updatedLesson);
        return "redirect:/showAllLessons.do";
    }

    @GetMapping("deleteLesson.do/{id}")
    public String deleteLesson(@PathVariable("id") int id) {
        ltDAO.deleteLesson(id);
        return "redirect:/showAllLessons.do";
    }

    @GetMapping("updateStatus.do/{id}")
    public String updateStatusForm(@PathVariable int id, Model model) {
        LessonTracker lesson = ltDAO.findById(id);
        if (lesson != null) {
            model.addAttribute("lesson", lesson);
            return "updateStatus";
        }
        return "index";
    }

    @PostMapping("updateStatus.do/{id}")
    public String updateStatus(@PathVariable int id, @RequestParam("success") boolean success, Model model) {
        model.addAttribute("success", success);
        return "updateStatus";
    }
}
