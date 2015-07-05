package com.snapchat.videotranscoder.rendering;

import cgb;
import com.snapchat.videotranscoder.task.TranscodingRuntimeException;

public class TranscodingRenderingException
  extends TranscodingRuntimeException
{
  public TranscodingRenderingException(@cgb String paramString)
  {
    super(paramString);
  }
  
  public TranscodingRenderingException(@cgb String paramString, @cgb Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public TranscodingRenderingException(@cgb Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.rendering.TranscodingRenderingException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */