package com.snapchat.videotranscoder.task;

import cgb;

public class SetupException
  extends Exception
{
  public SetupException() {}
  
  public SetupException(@cgb String paramString)
  {
    super(paramString);
  }
  
  public SetupException(@cgb String paramString, @cgb Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public SetupException(@cgb Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.SetupException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */