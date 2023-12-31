package com.hp.app.exception.controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

import lombok.extern.log4j.Log4j;

@ControllerAdvice
public class NotFoundController {
	
  @ExceptionHandler(NoHandlerFoundException.class)
      @ResponseStatus(HttpStatus.NOT_FOUND)
      public String handle404(NoHandlerFoundException nfe) {
          return "common/error/exception404";
      }
    }
