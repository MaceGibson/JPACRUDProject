package com.skilldistillery.lessontracker.data;

import com.skilldistillery.lessontracker.entities.LessonTracker;

public interface LessonTrackerDAO {
	
	LessonTracker findById(int id);

}
