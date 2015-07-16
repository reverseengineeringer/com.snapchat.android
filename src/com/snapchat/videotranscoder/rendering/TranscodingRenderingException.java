package com.snapchat.videotranscoder.rendering;

import chc;
import com.snapchat.videotranscoder.task.TranscodingRuntimeException;

public class TranscodingRenderingException
  extends TranscodingRuntimeException
{
  public TranscodingRenderingException(@chc String paramString)
  {
    super(paramString);
  }
  
  public TranscodingRenderingException(@chc String paramString, @chc Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public TranscodingRenderingException(@chc Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.rendering.TranscodingRenderingException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */