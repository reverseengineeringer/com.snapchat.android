package com.snapchat.videotranscoder.task;

import chc;

public class TranscodingException
  extends Exception
{
  public TranscodingException(@chc String paramString)
  {
    super(paramString);
  }
  
  public TranscodingException(@chc String paramString, @chc Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public TranscodingException(@chc Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.TranscodingException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */