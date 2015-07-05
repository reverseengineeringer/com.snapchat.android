package com.addlive.impl;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

class EventDescription
{
  public Constructor eventConstructor;
  public Method handlerMethod;
  
  EventDescription(Method paramMethod, Constructor paramConstructor)
  {
    handlerMethod = paramMethod;
    eventConstructor = paramConstructor;
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.EventDescription
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */