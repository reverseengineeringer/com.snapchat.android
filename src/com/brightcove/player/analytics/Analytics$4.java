package com.brightcove.player.analytics;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class Analytics$4
  implements EventListener
{
  Analytics$4(Analytics paramAnalytics) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    int i = paramEvent.getIntegerProperty("seekPosition");
    if ((i <= 0) || (i - Analytics.access$200(this$0) <= 1000)) {
      return;
    }
    Analytics.access$400(this$0, paramEvent, Analytics.access$300(this$0), Analytics.access$200(this$0));
    Analytics.access$302(this$0, Analytics.access$202(this$0, i));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.analytics.Analytics.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */