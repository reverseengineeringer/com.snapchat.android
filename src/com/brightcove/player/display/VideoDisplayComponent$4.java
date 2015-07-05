package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import com.brightcove.player.event.EventEmitter;
import java.util.HashMap;
import java.util.Map;

class VideoDisplayComponent$4
  implements MediaPlayer.OnBufferingUpdateListener
{
  VideoDisplayComponent$4(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  public void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
  {
    paramMediaPlayer = new HashMap();
    paramMediaPlayer.put("percentComplete", Integer.valueOf(paramInt));
    VideoDisplayComponent.access$3100(this$0).emit("bufferedUpdate", paramMediaPlayer);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */