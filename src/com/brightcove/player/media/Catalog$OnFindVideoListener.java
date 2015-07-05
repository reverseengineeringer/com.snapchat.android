package com.brightcove.player.media;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class Catalog$OnFindVideoListener
  implements EventListener
{
  private VideoListener videoListener;
  
  public Catalog$OnFindVideoListener(Catalog paramCatalog, VideoListener paramVideoListener)
  {
    videoListener = paramVideoListener;
  }
  
  public void processEvent(Event paramEvent)
  {
    Object localObject = (List)properties.get("errors");
    if ((localObject != null) && (!((List)localObject).isEmpty())) {
      paramEvent = ((List)localObject).iterator();
    }
    while (paramEvent.hasNext())
    {
      localObject = (String)paramEvent.next();
      videoListener.onError((String)localObject);
      continue;
      paramEvent = (Video)properties.get("video");
      videoListener.onVideo(paramEvent);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.media.Catalog.OnFindVideoListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */