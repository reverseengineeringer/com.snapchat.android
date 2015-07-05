package com.snapchat.videotranscoder.rendering;

import com.snapchat.videotranscoder.audio.AudioExtractor;
import com.snapchat.videotranscoder.audio.AudioTrackDecoder;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.VerboseLogging;

class VideoFilterRenderer$1
  implements Runnable
{
  VideoFilterRenderer$1(VideoFilterRenderer paramVideoFilterRenderer) {}
  
  public void run()
  {
    try
    {
      while ((!VideoFilterRenderer.access$400(this$0)) || (!VideoFilterRenderer.access$500(this$0)))
      {
        if ((VideoFilterRenderer.access$600(this$0) != null) && (!VideoFilterRenderer.access$700(this$0)))
        {
          VerboseLogging.verboseLog("VideoFilterRenderer", "Calling audio extractor");
          VideoFilterRenderer.access$600(this$0).processFrame();
          VerboseLogging.verboseLog("VideoFilterRenderer", "done Calling audio extractor");
        }
        if ((VideoFilterRenderer.access$800(this$0) != null) && (!VideoFilterRenderer.access$500(this$0)))
        {
          VerboseLogging.verboseLog("VideoFilterRenderer", "Calling audio decoder");
          VideoFilterRenderer.access$800(this$0).processFrame();
          VerboseLogging.verboseLog("VideoFilterRenderer", "done Calling audio decoder");
        }
      }
      return;
    }
    catch (TranscodingException localTranscodingException)
    {
      localTranscodingException.printStackTrace();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.rendering.VideoFilterRenderer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */