package com.brightcove.player.controller;

import android.os.Build.VERSION;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.SourceCollection;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.EventUtil;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@Emits(events={"sourceNotFound"})
@ListensFor(events={"selectSource"})
public class DefaultSourceSelectionController
  extends AbstractComponent
  implements SourceSelector, Component
{
  public static final String TAG = DefaultSourceSelectionController.class.getSimpleName();
  private final Integer DEFAULT_BIT_RATE = Integer.valueOf(262144);
  boolean preferHls;
  
  public DefaultSourceSelectionController(EventEmitter paramEventEmitter)
  {
    super(paramEventEmitter, DefaultSourceSelectionController.class);
    if (Build.VERSION.SDK_INT >= getMinimumHLSVersion()) {}
    for (boolean bool = true;; bool = false)
    {
      preferHls = bool;
      initializeListeners();
      return;
    }
  }
  
  public Source findBestSourceByBitRate(SourceCollection paramSourceCollection, Integer paramInteger)
  {
    if ((paramSourceCollection.getSources() == null) || (paramSourceCollection.getSources().size() == 0)) {
      throw new NoSourceFoundException();
    }
    Source localSource = (Source)paramSourceCollection.getSources().iterator().next();
    int i = Integer.MAX_VALUE;
    Iterator localIterator = paramSourceCollection.getSources().iterator();
    paramSourceCollection = localSource;
    while (localIterator.hasNext())
    {
      localSource = (Source)localIterator.next();
      if ((localSource.getBitRate() != null) && (localSource.getBitRate().intValue() > 0))
      {
        int j = Math.abs(localSource.getBitRate().intValue() - paramInteger.intValue());
        if (j > i) {
          break label139;
        }
        paramSourceCollection = localSource;
        i = j;
      }
    }
    label139:
    for (;;)
    {
      break;
      return paramSourceCollection;
    }
  }
  
  int getMinimumHLSVersion()
  {
    return 14;
  }
  
  protected void initializeListeners()
  {
    addListener("selectSource", new OnSelectSourceListener(null));
  }
  
  public Source selectSource(Video paramVideo)
  {
    Object localObject = null;
    if (paramVideo == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("videoRequired"));
    }
    Map localMap = paramVideo.getSourceCollections();
    if ((localMap == null) || (localMap.size() == 0)) {
      throw new NoSourceFoundException();
    }
    paramVideo = (Video)localObject;
    Set localSet;
    if (preferHls)
    {
      paramVideo = (Video)localObject;
      if (localMap.containsKey(DeliveryType.HLS))
      {
        localSet = ((SourceCollection)localMap.get(DeliveryType.HLS)).getSources();
        paramVideo = (Video)localObject;
        if (localSet != null)
        {
          paramVideo = (Video)localObject;
          if (localSet.size() > 0) {
            paramVideo = (Source)localSet.iterator().next();
          }
        }
      }
    }
    localObject = paramVideo;
    if (paramVideo == null)
    {
      localObject = paramVideo;
      if (localMap.containsKey(DeliveryType.MP4)) {
        localObject = findBestSourceByBitRate((SourceCollection)localMap.get(DeliveryType.MP4), DEFAULT_BIT_RATE);
      }
    }
    paramVideo = (Video)localObject;
    if (localObject == null)
    {
      paramVideo = (Video)localObject;
      if (localMap.containsKey(DeliveryType.DASH))
      {
        localSet = ((SourceCollection)localMap.get(DeliveryType.DASH)).getSources();
        paramVideo = (Video)localObject;
        if (localSet != null)
        {
          paramVideo = (Video)localObject;
          if (localSet.size() > 0) {
            paramVideo = (Source)localSet.iterator().next();
          }
        }
      }
    }
    if ((paramVideo == null) && (localMap.containsKey(DeliveryType.UNKNOWN)))
    {
      localObject = ((SourceCollection)localMap.get(DeliveryType.UNKNOWN)).getSources();
      if ((localObject != null) && (((Set)localObject).size() > 0)) {
        paramVideo = (Source)((Set)localObject).iterator().next();
      }
    }
    for (;;)
    {
      if ((paramVideo == null) || (paramVideo.getUrl() == null)) {
        throw new NoSourceFoundException();
      }
      return paramVideo;
    }
  }
  
  class OnSelectSourceListener
    implements EventListener
  {
    private OnSelectSourceListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      Video localVideo = (Video)properties.get("video");
      try
      {
        Source localSource = selectSource(localVideo);
        properties.put("source", localSource);
        eventEmitter.respond(paramEvent);
        return;
      }
      catch (NoSourceFoundException paramEvent)
      {
        paramEvent = DefaultSourceSelectionController.TAG;
        new StringBuilder("no usable Source could be found for Video: ").append(localVideo.toString());
        EventUtil.emit(eventEmitter, "sourceNotFound", localVideo);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.DefaultSourceSelectionController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */