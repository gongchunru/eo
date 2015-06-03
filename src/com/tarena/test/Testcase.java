package com.tarena.test;

import java.util.List;
import java.util.Set;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.tarena.dao.AdminDao;
import com.tarena.dao.ExamPaperDao;
import com.tarena.dao.ExamRecordDao;
import com.tarena.dao.OptionDao;
import com.tarena.dao.QuestionDao;
import com.tarena.dao.StudentDao;
import com.tarena.entity.Admin;
import com.tarena.entity.ExamPaper;
import com.tarena.entity.ExamRecord;
import com.tarena.entity.Option;
import com.tarena.entity.Question;
import com.tarena.entity.Student;

public class Testcase {
	String cfg = "applicationContext.xml";
	ApplicationContext ctx = 
			new ClassPathXmlApplicationContext(cfg);	
	@Test
	public void test1(){
		AdminDao dao = (AdminDao) ctx.getBean("adminDaoImpl");
		//Admin admin = dao.findByName("admin01");
		//System.out.println(admin.getRole()+" " + admin.getName());
		List<Admin> list = dao.findAll();
		for (Admin admin : list) {
			System.out.println(admin.getAid()+" "+admin.getAdminName()+" " + admin.getName());
		}
	}
	@Test
	public void test2(){
		AdminDao dao = (AdminDao) ctx.getBean("adminDaoImpl");
		List<Admin> admins = dao.findByKeyword("a", 1, 2);
		for (Admin admin : admins) {
			System.out.println(admin.getAdminName());
		}
	}
	
	@Test
	public void test4(){
		AdminDao dao = (AdminDao) ctx.getBean("adminDaoImpl");
		int rows = dao.findRows("a");
		System.out.println(rows);
	}
	
	@Test
	public void test3(){
		StudentDao dao = (StudentDao) ctx.getBean("studentDaoImpl");
		//List<Student> list = dao.findAll();
		
//		for (Student student : list) {
//			System.out.println(student.getUsername());
//		}
		Student student = dao.findByName("20121203");
		//Student student = dao.findById(2);
		System.out.println(student.getName()+" " +student.getAddress());
	}
	
	@Test
	public void test5(){
		StudentDao dao = (StudentDao) ctx.getBean("studentDaoImpl");
		List<Student> list = dao.findBykeyword("ะก", 1, 1);
		for (Student student : list) {
			System.out.println(student.getAddress());
		}
		//int rows = dao.findRows("1111");
		//System.out.println(rows);
	}
	
	@Test
	public void test6(){
		ExamPaperDao dao = (ExamPaperDao) ctx.getBean("examPaperDaoImpl");
		System.out.println(dao);
		ExamPaper examPaper = dao.findById(1);
		System.out.println(examPaper.getName());
		Set<Question> questions = examPaper.getQuestions();
		System.out.println(questions.getClass().getName());
		System.out.println(questions.size());
		for (Question question : questions) {
			System.out.println(question.getAnswer()+" " + question.getContent());
		}
		//int rows = dao.findRows("j");
		//System.out.println(rows);
//		List<ExamPaper> list = dao.findByKeyword("Java", 1, 2);
//		for (ExamPaper examPaper : list) {
//			System.out.println(examPaper.getName());
//		}
	}
	
	@Test
	public void test7(){
		QuestionDao dao = (QuestionDao) ctx.getBean("questionDaoImpl");
//		List<Question> list = dao.findByExamPaperId(1);
//		for (Question question : list) {
//			System.out.println(question.getContent());
//		}
		Question q = dao.findById(1);
		
	}
	
	@Test
	public void test8(){
		OptionDao dao = (OptionDao) ctx.getBean("optionDaoImpl");
		Option o = dao.findByQuestionId(1);
		System.out.println(o.getOptionC());
	}

	@Test
	public void test9(){
		ExamRecordDao dao = (ExamRecordDao) ctx.getBean("examRecordDaoImpl");
		List<ExamRecord> list = dao.findByExamPaperName("a", "ะกนโ");		
		for (ExamRecord examRecord : list) {
			System.out.println(examRecord.getScore());
		}
	}
	
	@Test
	public void test10(){
		StudentDao dao = (StudentDao) ctx.getBean("studentDaoImpl");
		Student student = dao.findByName("20121206");
		System.out.println(student);
	}
	
}
