package com.snapchat.videotranscoder.task;

import cgb;

public class TranscodingRuntimeException
  extends RuntimeException
{
  public TranscodingRuntimeException(@cgb String paramString)
  {
    super(paramString);
  }
  
  public TranscodingRuntimeException(@cgb String paramString, @cgb Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public TranscodingRuntimeException(@cgb Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.TranscodingRuntimeException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */