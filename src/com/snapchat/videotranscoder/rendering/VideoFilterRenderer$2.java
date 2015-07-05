package com.snapchat.videotranscoder.rendering;

import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import com.snapchat.videotranscoder.video.VideoExtractor;

class VideoFilterRenderer$2
  implements Runnable
{
  VideoFilterRenderer$2(VideoFilterRenderer paramVideoFilterRenderer) {}
  
  public void run()
  {
    try
    {
      while ((!VideoFilterRenderer.access$400(this$0)) || (!VideoFilterRenderer.access$900(this$0)))
      {
        if ((VideoFilterRenderer.access$1000(this$0) != null) && (!VideoFilterRenderer.access$900(this$0)))
        {
          VerboseLogging.verboseLog("VideoFilterRenderer", "Calling video extractor");
          VideoFilterRenderer.access$1000(this$0).processFrame();
          VerboseLogging.verboseLog("VideoFilterRenderer", "Done calling video extractor");
        }
        if ((VideoFilterRenderer.access$900(this$0)) && (!VideoFilterRenderer.access$400(this$0))) {
          VideoFilterRenderer.access$1000(this$0).restart();
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
 * Qualified Name:     com.snapchat.videotranscoder.rendering.VideoFilterRenderer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */