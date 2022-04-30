package com.in28minutes.springboot.web.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.in28minutes.springboot.web.service.LoginService;
import com.in28minutes.springboot.web.service.TodoService;

@Controller
@SessionAttributes("name")
public class TodoController {
	
	@Autowired
	TodoService service;
	
	@RequestMapping(value = "/list-todos", method = RequestMethod.GET)
	public String ShowTodos( ModelMap model) {
		String name = (String) model.get("name");
		model.put("todos",service.retrieveTodos(name));
		return("list-todos");
	}

	@RequestMapping(value = "/add-todo", method = RequestMethod.GET)
	public String ShowAddTodoPage( ModelMap model) {
		return("todo");
	}
	
	@RequestMapping(value = "/add-todo", method = RequestMethod.POST)
	public String AddTodos( ModelMap model, @RequestParam String desc) {
		service.addTodo((String) model.get("name"), desc, new Date(), false);
		return("redirect:/list-todos");
	}
	
	
}
