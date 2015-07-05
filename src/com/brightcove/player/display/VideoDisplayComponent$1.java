package com.brightcove.player.display;

import android.media.MediaPlayer;
import com.brightcove.player.event.EventEmitter;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

class VideoDisplayComponent$1
  implements Runnable
{
  VideoDisplayComponent$1(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  public void run()
  {
    try
    {
      if ((VideoDisplayComponent.access$700(this$0) != null) && (VideoDisplayComponent.access$800(this$0)) && (this$0.hasSurface) && (VideoDisplayComponent.access$700(this$0).isPlaying()) && (VideoDisplayComponent.access$700(this$0).getCurrentPosition() >= 0))
      {
        HashMap localHashMap = new HashMap(4);
        localHashMap.put("video", this$0.currentVideo);
        this$0.playheadPosition = VideoDisplayComponent.access$700(this$0).getCurrentPosition();
        localHashMap.put("playheadPosition", Integer.valueOf(this$0.playheadPosition));
        this$0.duration = VideoDisplayComponent.access$700(this$0).getDuration();
        localHashMap.put("duration", Integer.valueOf(this$0.duration));
        VideoDisplayComponent.access$900(this$0).emit("progress", localHashMap);
        if ((this$0.playheadPosition > 0) && (!VideoDisplayComponent.access$1000(this$0)))
        {
          localHashMap.put("source", this$0.currentSource);
          VideoDisplayComponent.access$1100(this$0).emit("didPlay", localHashMap);
          VideoDisplayComponent.access$1002(this$0, true);
        }
      }
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      this$0.destroyPlayer();
      VideoDisplayComponent.access$1200();
      new StringBuilder("Media player position sampled when it was in an invalid state: ").append(localIllegalStateException.getMessage());
      VideoDisplayComponent.access$1300(this$0).emit("error", Collections.singletonMap("error", localIllegalStateException));
      return;
    }
    catch (Exception localException)
    {
      this$0.destroyPlayer();
      VideoDisplayComponent.access$1200();
      new StringBuilder("Error monitoring playback progress").append(localException.getMessage());
      VideoDisplayComponent.access$1400(this$0).emit("error", Collections.singletonMap("error", localException));
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */