package com.brightcove.player.controller;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.MediaController;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.view.BaseVideoView;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MediaControlsVisibilityManager
{
  private static final String MEDIA_CONTROLS_VISIBILITY_STATE = "mediaControlsVisibilityState";
  private static final String TAG = MediaControlsVisibilityManager.class.getSimpleName();
  private BaseVideoView videoView;
  private final Map<String, Integer> visibilityMap = new HashMap();
  
  public MediaControlsVisibilityManager(BaseVideoView paramBaseVideoView)
  {
    videoView = paramBaseVideoView;
  }
  
  private void restoreVisibilityState(Bundle paramBundle)
  {
    visibilityMap.clear();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      int i = paramBundle.getInt(str);
      if (i == 0) {
        String.format("Invalid visibility state (0) detected using key: %s.", new Object[] { str });
      } else {
        visibilityMap.put(str, Integer.valueOf(i));
      }
    }
  }
  
  private void saveVisibilityState(Bundle paramBundle)
  {
    Bundle localBundle = new Bundle();
    paramBundle.putBundle("mediaControlsVisibilityState", localBundle);
    paramBundle = visibilityMap.keySet().iterator();
    while (paramBundle.hasNext())
    {
      String str = (String)paramBundle.next();
      localBundle.putInt(str, ((Integer)visibilityMap.get(str)).intValue());
    }
  }
  
  public void initListeners(EventEmitter paramEventEmitter)
  {
    ShowHideEventHandler localShowHideEventHandler = new ShowHideEventHandler(null);
    paramEventEmitter.on("hideSeekControls", localShowHideEventHandler);
    paramEventEmitter.on("showSeekControls", localShowHideEventHandler);
    paramEventEmitter.on("activityCreated", new VisibilityRestoreEventHandler(null));
    paramEventEmitter.on("activitySaveInstanceState", new VisibilitySaveEventHandler(null));
  }
  
  public void setVisibilityState()
  {
    Resources localResources = Resources.getSystem();
    MediaController localMediaController = videoView.getMediaController();
    if (localMediaController != null)
    {
      Iterator localIterator = visibilityMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        View localView = localMediaController.findViewById(localResources.getIdentifier(str, "id", "android"));
        if (localView != null) {
          localView.setVisibility(((Integer)visibilityMap.get(str)).intValue());
        } else {
          new StringBuilder("View/button: ").append(str).append(" does not exist!");
        }
      }
      localMediaController.show();
    }
  }
  
  class ShowHideEventHandler
    implements EventListener
  {
    private ShowHideEventHandler() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      paramEvent = properties.get("seekControlsVisibility");
      if ((paramEvent != null) && ((paramEvent instanceof Map)))
      {
        paramEvent = (Map)paramEvent;
        visibilityMap.clear();
        visibilityMap.putAll(paramEvent);
        setVisibilityState();
      }
    }
  }
  
  class VisibilityRestoreEventHandler
    implements EventListener
  {
    private VisibilityRestoreEventHandler() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      paramEvent = properties.get("instanceState");
      if ((paramEvent != null) && ((paramEvent instanceof Bundle)))
      {
        paramEvent = (Bundle)paramEvent;
        if (paramEvent == null) {
          break label61;
        }
      }
      label61:
      for (paramEvent = paramEvent.getBundle("mediaControlsVisibilityState");; paramEvent = null)
      {
        if (paramEvent == null) {
          break label66;
        }
        MediaControlsVisibilityManager.this.restoreVisibilityState(paramEvent);
        return;
        paramEvent = null;
        break;
      }
      label66:
    }
  }
  
  class VisibilitySaveEventHandler
    implements EventListener
  {
    private VisibilitySaveEventHandler() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      paramEvent = properties.get("instanceState");
      if ((paramEvent != null) && ((paramEvent instanceof Bundle))) {}
      for (paramEvent = (Bundle)paramEvent;; paramEvent = null)
      {
        if ((paramEvent != null) && (visibilityMap.size() > 0)) {
          MediaControlsVisibilityManager.this.saveVisibilityState(paramEvent);
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.MediaControlsVisibilityManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */