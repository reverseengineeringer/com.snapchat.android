package com.snapchat.videotranscoder.task;

import chc;

public class TranscodingRuntimeException
  extends RuntimeException
{
  public TranscodingRuntimeException(@chc String paramString)
  {
    super(paramString);
  }
  
  public TranscodingRuntimeException(@chc String paramString, @chc Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public TranscodingRuntimeException(@chc Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.TranscodingRuntimeException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */