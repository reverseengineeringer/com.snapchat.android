package com.brightcove.player.captioning;

import com.brightcove.player.captioning.tasks.LoadCaptionsTask;
import com.brightcove.player.captioning.tasks.LoadCaptionsTask.CaptionsType;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.ListensFor;
import java.net.URI;

@Emits(events={})
@ListensFor(events={})
public class LoadCaptionsService
  extends AbstractComponent
{
  public LoadCaptionsService(EventEmitter paramEventEmitter)
  {
    super(paramEventEmitter, LoadCaptionsService.class);
    if (paramEventEmitter == null) {
      throw new IllegalArgumentException("must provide an EventEmitter");
    }
  }
  
  public void loadCaptions(URI paramURI)
  {
    if (paramURI == null) {
      throw new IllegalArgumentException("must provide a valid URI");
    }
    if (paramURI != null)
    {
      new LoadCaptionsTask(eventEmitter, LoadCaptionsTask.CaptionsType.TTML).execute(new URI[] { paramURI });
      new LoadCaptionsTask(eventEmitter, LoadCaptionsTask.CaptionsType.WEBVTT).execute(new URI[] { paramURI });
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.LoadCaptionsService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */