package com.brightcove.player.analytics;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import java.util.Map;

class Analytics$5
  implements EventListener
{
  Analytics$5(Analytics paramAnalytics) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    Video localVideo = (Video)properties.get("video");
    int i = paramEvent.getIntegerProperty("playheadPosition");
    if (i >= 0)
    {
      if (Math.abs(Analytics.access$200(this$0) - i) <= 5000) {
        break label83;
      }
      Analytics.access$400(this$0, paramEvent, Analytics.access$300(this$0), Analytics.access$200(this$0));
      Analytics.access$302(this$0, Analytics.access$202(this$0, i));
    }
    label83:
    do
    {
      return;
      Analytics.access$202(this$0, i);
      if ((!Analytics.access$700(this$0)) && (localVideo != null) && (Analytics.access$200(this$0) != 0))
      {
        Analytics.access$500(this$0, paramEvent, "video_view", null);
        Analytics.access$702(this$0, true);
      }
    } while (Analytics.access$200(this$0) - Analytics.access$300(this$0) < 10000);
    Analytics.access$400(this$0, paramEvent, Analytics.access$300(this$0), Analytics.access$200(this$0));
    Analytics.access$302(this$0, Analytics.access$200(this$0));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.analytics.Analytics.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */