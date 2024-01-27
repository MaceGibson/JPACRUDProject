package com.skilldistillery.lessontracker.data;

import org.springframework.stereotype.Service;

import com.skilldistillery.lessontracker.entities.LessonTracker;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class LessonTrackerImpl implements LessonTrackerDAO{
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public LessonTracker findById(int id) {
		return em.find(LessonTracker.class, id);
	}

}
