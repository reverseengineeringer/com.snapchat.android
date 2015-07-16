package com.snapchat.videotranscoder.task;

import chc;

public class SetupException
  extends Exception
{
  public SetupException() {}
  
  public SetupException(@chc String paramString)
  {
    super(paramString);
  }
  
  public SetupException(@chc String paramString, @chc Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public SetupException(@chc Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.SetupException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */