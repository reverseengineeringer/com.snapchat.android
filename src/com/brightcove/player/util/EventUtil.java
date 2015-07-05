package com.brightcove.player.util;

import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import java.util.HashMap;
import java.util.Map;

public class EventUtil
{
  public static void emit(EventEmitter paramEventEmitter, String paramString, Video paramVideo)
  {
    if (paramVideo == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("videoRequired"));
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("video", paramVideo);
    paramEventEmitter.emit(paramString, localHashMap);
  }
  
  public static void emit(EventEmitter paramEventEmitter, String paramString, Video paramVideo, Source paramSource)
  {
    if (paramVideo == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("videoRequired"));
    }
    if (paramSource == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("sourceRequired"));
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("video", paramVideo);
    localHashMap.put("source", paramSource);
    paramEventEmitter.emit(paramString, localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.util.EventUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */