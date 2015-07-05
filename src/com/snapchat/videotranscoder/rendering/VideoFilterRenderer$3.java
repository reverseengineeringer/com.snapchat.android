package com.snapchat.videotranscoder.rendering;

import com.snapchat.videotranscoder.audio.AudioExtractor;
import com.snapchat.videotranscoder.audio.AudioTrackDecoder;
import java.util.concurrent.Callable;

class VideoFilterRenderer$3
  implements Callable<Void>
{
  VideoFilterRenderer$3(VideoFilterRenderer paramVideoFilterRenderer) {}
  
  public Void call()
  {
    try
    {
      if (VideoFilterRenderer.access$600(this$0) != null) {
        VideoFilterRenderer.access$600(this$0).restart();
      }
      if (VideoFilterRenderer.access$800(this$0) != null) {
        VideoFilterRenderer.access$800(this$0).restart();
      }
      if (VideoFilterRenderer.access$1100(this$0) != null) {
        VideoFilterRenderer.access$1100(this$0).restart();
      }
      VideoFilterRenderer.access$502(this$0, false);
      VideoFilterRenderer.access$702(this$0, false);
      VideoFilterRenderer.access$902(this$0, false);
      VideoFilterRenderer.access$1202(this$0, false);
      VideoFilterRenderer.access$1302(this$0, false);
      return null;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      throw new TranscodingRenderingException("Restart failed!", localIllegalStateException);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.rendering.VideoFilterRenderer.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */