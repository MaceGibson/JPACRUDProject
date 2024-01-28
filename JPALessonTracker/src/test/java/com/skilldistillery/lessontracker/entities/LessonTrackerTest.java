package com.skilldistillery.lessontracker.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class LessonTrackerTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private LessonTracker lessonTracker;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("LessonTracker");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		lessonTracker = em.find(LessonTracker.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		lessonTracker = null;
		em.close();
	}

	@Test
	void testFieldMappings() {
		assertNotNull(lessonTracker);
		assertEquals(1, lessonTracker.getId());
		assertEquals("Java Fundamentals of Programming", lessonTracker.getTopic());
		assertEquals("Week 1", lessonTracker.getWeekNumber());
		assertTrue(lessonTracker.isNeedsReview());
		assertEquals("Make Change", lessonTracker.getProject());
		assertEquals("https://github.com/SkillDistillery/SD42/blob/main/jfop/README.md", lessonTracker.getUrl());
	}
}
