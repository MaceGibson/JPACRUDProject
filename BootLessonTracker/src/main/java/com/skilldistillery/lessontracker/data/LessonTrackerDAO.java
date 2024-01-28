package com.skilldistillery.lessontracker.data;

import java.util.List;

import com.skilldistillery.lessontracker.entities.LessonTracker;

public interface LessonTrackerDAO {

	LessonTracker findById(int id);
	List<LessonTracker> findAll();
	List<LessonTracker> findByKeyword(String keyword);
	void createLesson(LessonTracker lesson);
	LessonTracker updateLesson(int id, LessonTracker lesson);
	boolean deleteLesson(int id);
}
