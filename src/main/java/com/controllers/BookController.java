package com.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.models.Book;

import com.service.BookService;

@Controller
public class BookController {	

	@RequestMapping(value="/books", method=RequestMethod.GET)
	public String getBooks(Model model){	
		BookService bookService  = new BookService();
		List<Book> books = bookService.getAllBooksService();		
		model.addAttribute("books",books);			
		return "books";
	}
	
	@RequestMapping(value="/book", method=RequestMethod.GET)
	public String getaddBookLoginPage(Model model){	
				
		model.addAttribute("bookdetails",new Book());			
		return "addBook";
	}
	
	@RequestMapping(value="/book", method=RequestMethod.POST)
	public String addBook(@ModelAttribute(value="bookdetails") Book book, Model model){	
		BookService bookService  = new BookService();
		bookService.addBook(book);	
					
		return "redirect:/books";
	}
	
	
	@RequestMapping(value="/api/books", method=RequestMethod.GET, produces="application/json")
	public @ResponseBody List<Book> getBooksApi(Model model){	
		BookService bookService  = new BookService();
		List<Book> books = bookService.getAllBooksService();			
		return books;
	}
	
	
	@RequestMapping(value="/book/{bookid}/delete", method=RequestMethod.GET)
	public String deleteBook(@PathVariable int bookid, Model model){	
		BookService bookService  = new BookService();
		bookService.deleteBook(bookid);	
					
		return "redirect:/books";
	}
	
	@RequestMapping(value="/book/{bookid}/update", method=RequestMethod.GET)
	public String updateBook(@PathVariable int bookid, Model model){	
		
		BookService bookService  = new BookService();
		Book book = bookService.getBook(bookid);
		
			if(book.getBookId() != 0) {
						model.addAttribute("updatedbookdetails",book);			
						return "updateBook";
				} else {
					System.out.println("Returning books");

					   return "redirect:/books";
				}
	}
	
	@RequestMapping(value="/book/{bookid}/update", method=RequestMethod.POST)
	public String updateBook(@PathVariable int bookid,@ModelAttribute(value="updatedbookdetails") Book book, Model model){	
		BookService bookService  = new BookService();
	   
		System.out.println("Book id:" +book.getBookId()+" Book Name: "+book.getBookName()
		+" Book Author: "+ book.getAuthor());
		bookService.update(book);	
					
		return "redirect:/books";
	}
	
	
	
	
	
	
	
	
	

}
