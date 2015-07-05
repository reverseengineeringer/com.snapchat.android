package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnSeekCompleteListener;
import com.brightcove.player.event.EventEmitter;
import java.util.HashMap;
import java.util.Map;

class VideoDisplayComponent$6
  implements MediaPlayer.OnSeekCompleteListener
{
  VideoDisplayComponent$6(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  public void onSeekComplete(MediaPlayer paramMediaPlayer)
  {
    VideoDisplayComponent.access$1200();
    new StringBuilder("onSeekComplete: fromSeekPosition = ").append(VideoDisplayComponent.access$2100(this$0)).append(", seekPosition = ").append(this$0.seekPosition).append(", currentPosition = ").append(paramMediaPlayer.getCurrentPosition());
    if ((paramMediaPlayer.getCurrentPosition() < this$0.seekPosition) && (!this$0.reseeking))
    {
      paramMediaPlayer.seekTo(this$0.seekPosition);
      this$0.reseeking = true;
    }
    while (VideoDisplayComponent.access$2100(this$0) == -1) {
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("playheadPosition", Integer.valueOf(paramMediaPlayer.getCurrentPosition()));
    localHashMap.put("seekPosition", Integer.valueOf(this$0.seekPosition));
    localHashMap.put("fromSeekPosition", Integer.valueOf(VideoDisplayComponent.access$2100(this$0)));
    localHashMap.put("video", this$0.currentVideo);
    VideoDisplayComponent.access$3400(this$0).emit("didSeekTo", localHashMap);
    VideoDisplayComponent.access$2102(this$0, -1);
    this$0.reseeking = false;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */