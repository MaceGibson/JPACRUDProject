package com.skilldistillery.lessontracker.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.lessontracker.entities.LessonTracker;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class LessonTrackerImpl implements LessonTrackerDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public LessonTracker findById(int id) {
		return em.find(LessonTracker.class, id);
	}

	@Override
	public List<LessonTracker> findAll() {
		String jpql = "SELECT lt FROM LessonTracker lt";
		TypedQuery<LessonTracker> query = em.createQuery(jpql, LessonTracker.class);
		return query.getResultList();
	}

	@Override
	public List<LessonTracker> findByKeyword(String keyword) {
		String jpql = "SELECT lt FROM LessonTracker lt WHERE lt.topic LIKE :keyword OR lt.project LIKE :keyword";
		TypedQuery<LessonTracker> query = em.createQuery(jpql, LessonTracker.class);
		query.setParameter("keyword", "%" + keyword + "%");
		return query.getResultList();
	}

	@Override
	public void createLesson(LessonTracker lesson) {
		em.persist(lesson);
	}

	@Override
	public LessonTracker updateLesson(int id, LessonTracker updatedLesson) {
		return em.merge(updatedLesson);
	}

	@Override
	public boolean deleteLesson(int id) {
		LessonTracker lesson = em.find(LessonTracker.class, id);
		if (lesson != null) {
			em.remove(lesson);
			return true;
		}
		return false;
	}
}
