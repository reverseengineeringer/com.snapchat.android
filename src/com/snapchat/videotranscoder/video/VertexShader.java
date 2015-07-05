package com.snapchat.videotranscoder.video;

import cgb;
import com.snapchat.videotranscoder.utils.TranscodingResources;

public class VertexShader
{
  private final String mText;
  
  public VertexShader(@cgb TranscodingResources paramTranscodingResources)
  {
    if (paramTranscodingResources == null) {
      throw new NullPointerException("transcodingResources is null");
    }
    mText = paramTranscodingResources.loadVertexShader();
  }
  
  public String getText()
  {
    return mText;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.video.VertexShader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */