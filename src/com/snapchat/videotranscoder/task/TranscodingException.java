package com.snapchat.videotranscoder.task;

import cgb;

public class TranscodingException
  extends Exception
{
  public TranscodingException(@cgb String paramString)
  {
    super(paramString);
  }
  
  public TranscodingException(@cgb String paramString, @cgb Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public TranscodingException(@cgb Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.TranscodingException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */