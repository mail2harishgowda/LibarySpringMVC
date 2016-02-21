package com.db.daoservice;

import java.util.ArrayList;
import java.util.List;



import org.hibernate.Session;
import com.models.Book;

import com.db.utility.HibernateUtility;

public class BookDaoService {
	
   public  List<Book> getAllBooks(){	
		
	    List<Book> books = new ArrayList<Book>();
		Session session = HibernateUtility.getSessionFactory().openSession();		
		session.beginTransaction();			
	    books =session.createCriteria(Book.class).list();
	    session.getTransaction().commit();
		session.close();
		System.out.println("Before: getAllBooks");
		for(Book book: books){
			
			System.out.println("Book Id : "+book.getBookId());
			System.out.println("BookName is : "+book.getBookName());
			System.out.println("Author is : "+book.getAuthor());

		}
		System.out.println("After: getAllBooks");
		return books;
		
	}
   
   public void addBook(Book book) {
	   
	    Session session = HibernateUtility.getSessionFactory().openSession();		
		session.beginTransaction();
		session.save(book);
		session.getTransaction().commit();	
		session.close();
		
	}

	public void deleteBook(int bookId) {
		
		    Session session = HibernateUtility.getSessionFactory().openSession();		
			session.beginTransaction();
			Book book =(Book)session.load(Book.class, bookId);
			session.delete(book);
			session.getTransaction().commit();
			session.close();
		
		
	}

	public Book getBook(int bookid) {
		// TODO Auto-generated method stub
		Session session = HibernateUtility.getSessionFactory().openSession();		
		session.beginTransaction();
		Book book = new Book();
		book =(Book)session.load(Book.class, bookid);
		session.getTransaction().commit();
		session.close();		
		return book;
	}

	public void updateBook(Book book) {
		
		
		       
				Session session = HibernateUtility.getSessionFactory().openSession();	
				
				session.beginTransaction();
				
				Book bookLoaded  = (Book)session.get(Book.class,book.getBookId());
				
				bookLoaded.setBookName(book.getBookName());
				bookLoaded.setAuthor(book.getAuthor());
				session.save(bookLoaded);
				
				
				session.getTransaction().commit();
				session.close();		
				
	}



}
