package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import java.util.HashMap;
import java.util.Map;

class VideoDisplayComponent$5
  implements MediaPlayer.OnCompletionListener
{
  VideoDisplayComponent$5(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (!VideoDisplayComponent.access$3200(this$0))
    {
      HashMap localHashMap = new HashMap();
      if ((paramMediaPlayer != null) && (VideoDisplayComponent.access$800(this$0)) && (this$0.hasSurface))
      {
        localHashMap.put("playheadPosition", Integer.valueOf(paramMediaPlayer.getDuration()));
        localHashMap.put("duration", Integer.valueOf(paramMediaPlayer.getDuration()));
      }
      localHashMap.put("video", this$0.currentVideo);
      VideoDisplayComponent.access$3300(this$0).emit("completed", localHashMap);
    }
    if ((this$0.currentSource != null) && (this$0.currentSource.getDeliveryType() == DeliveryType.HLS)) {
      this$0.destroyPlayer();
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */