package com.addlive.service;

public abstract interface Responder<T>
{
  public abstract void errHandler(int paramInt, String paramString);
  
  public abstract void resultHandler(T paramT);
}

/* Location:
 * Qualified Name:     com.addlive.service.Responder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */