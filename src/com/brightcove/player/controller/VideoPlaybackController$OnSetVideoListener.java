package com.brightcove.player.controller;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import java.net.URI;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class VideoPlaybackController$OnSetVideoListener
  implements EventListener
{
  protected VideoPlaybackController$OnSetVideoListener(VideoPlaybackController paramVideoPlaybackController) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    paramEvent = (Video)properties.get("video");
    Object localObject1 = VideoPlaybackController.TAG;
    new StringBuilder("OnSetVideoListener: ").append(paramEvent);
    localObject1 = paramEvent.getProperties().get("stillImageUri");
    if ((localObject1 != null) && ((localObject1 instanceof URI)))
    {
      localObject1 = (URI)localObject1;
      localObject2 = new HashMap();
      ((Map)localObject2).put("video_still", localObject1);
      VideoPlaybackController.access$500(this$0).emit("setVideoStill", (Map)localObject2);
    }
    localObject1 = paramEvent.getCuePoints();
    if (localObject1 != null) {
      VideoPlaybackController.access$100(this$0).addAll((Collection)localObject1);
    }
    localObject1 = new HashMap();
    ((Map)localObject1).put("video", paramEvent);
    Object localObject2 = new VideoPlaybackController.OnSourceSelectedListener(this$0);
    currentVideo = paramEvent;
    VideoPlaybackController.access$600(this$0).request("selectSource", (Map)localObject1, (EventListener)localObject2);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController.OnSetVideoListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */