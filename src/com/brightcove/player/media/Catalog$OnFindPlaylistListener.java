package com.brightcove.player.media;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Playlist;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class Catalog$OnFindPlaylistListener
  implements EventListener
{
  private PlaylistListener playlistListener;
  
  public Catalog$OnFindPlaylistListener(Catalog paramCatalog, PlaylistListener paramPlaylistListener)
  {
    playlistListener = paramPlaylistListener;
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
      playlistListener.onError((String)localObject);
      continue;
      paramEvent = (Playlist)properties.get("playlist");
      playlistListener.onPlaylist(paramEvent);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.media.Catalog.OnFindPlaylistListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */