package com.brightcove.player.controller;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.util.Map;

class DefaultSourceSelectionController$OnSelectSourceListener
  implements EventListener
{
  private DefaultSourceSelectionController$OnSelectSourceListener(DefaultSourceSelectionController paramDefaultSourceSelectionController) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    Video localVideo = (Video)properties.get("video");
    try
    {
      Source localSource = this$0.selectSource(localVideo);
      properties.put("source", localSource);
      DefaultSourceSelectionController.access$100(this$0).respond(paramEvent);
      return;
    }
    catch (NoSourceFoundException paramEvent)
    {
      paramEvent = DefaultSourceSelectionController.TAG;
      new StringBuilder("no usable Source could be found for Video: ").append(localVideo.toString());
      EventUtil.emit(DefaultSourceSelectionController.access$200(this$0), "sourceNotFound", localVideo);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.DefaultSourceSelectionController.OnSelectSourceListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */