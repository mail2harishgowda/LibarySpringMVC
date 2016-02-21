package com.service;

import java.util.List;

import com.db.daoservice.BookDaoService;
import com.models.Book;

public class BookService {
	
	BookDaoService bookDaoService;
	
	public List<Book> getAllBooksService(){
		bookDaoService = new BookDaoService();	
		return bookDaoService.getAllBooks();
	}

	public void addBook(Book book) {
		// TODO Auto-generated method stub
		bookDaoService = new BookDaoService();	
		bookDaoService.addBook(book);
	}

	public void deleteBook(int bookId) {
		
				bookDaoService = new BookDaoService();	
				bookDaoService.deleteBook(bookId);
		
	}

	public Book getBook(int bookid) {
		// TODO Auto-generated method stub
		bookDaoService = new BookDaoService();	
		return bookDaoService.getBook(bookid);
	}

	public void update(Book book) {
		// TODO Auto-generated method stub
		
		bookDaoService = new BookDaoService();	
		bookDaoService.updateBook(book);
		
	}

}
