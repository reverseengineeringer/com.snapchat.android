package com.brightcove.player.media;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.media.tasks.FindPlaylistTask;
import com.brightcove.player.media.tasks.FindVideoTask;
import com.brightcove.player.util.ErrorUtil;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

class MediaService$OnFindMediaListener
  implements EventListener
{
  private MediaService$OnFindMediaListener(MediaService paramMediaService) {}
  
  public void processEvent(Event paramEvent)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", MediaService.access$100(this$0));
    localHashMap.put("media_delivery", "http");
    if (properties.containsKey("options")) {
      localHashMap.putAll((Map)properties.get("options"));
    }
    try
    {
      if (properties.containsKey("videoID"))
      {
        new FindVideoTask(MediaService.access$200(this$0), paramEvent, MediaService.access$300(this$0), localHashMap).findVideoById((String)properties.get("videoID"));
        return;
      }
      if (properties.containsKey("videoReferenceID"))
      {
        new FindVideoTask(MediaService.access$400(this$0), paramEvent, MediaService.access$300(this$0), localHashMap).findVideoByReferenceId((String)properties.get("videoReferenceID"));
        return;
      }
    }
    catch (URISyntaxException localURISyntaxException)
    {
      MediaService.access$700(this$0, paramEvent, localURISyntaxException);
      return;
      if (properties.containsKey("playlistID"))
      {
        new FindPlaylistTask(MediaService.access$500(this$0), paramEvent, MediaService.access$300(this$0), localURISyntaxException).findPlaylistById((String)properties.get("playlistID"));
        return;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      MediaService.access$700(this$0, paramEvent, localUnsupportedEncodingException);
      return;
    }
    if (properties.containsKey("playlistReferenceID"))
    {
      new FindPlaylistTask(MediaService.access$600(this$0), paramEvent, MediaService.access$300(this$0), localUnsupportedEncodingException).findPlaylistByReferenceId((String)properties.get("playlistReferenceID"));
      return;
    }
    throw new IllegalArgumentException(ErrorUtil.getMessage("keyNotFound"));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.media.MediaService.OnFindMediaListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */