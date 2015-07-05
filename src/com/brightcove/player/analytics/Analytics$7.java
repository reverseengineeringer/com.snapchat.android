package com.brightcove.player.analytics;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

class Analytics$7
  implements EventListener
{
  Analytics$7(Analytics paramAnalytics) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    int i = ((Integer)properties.get("duration")).intValue();
    if (i > 0) {
      Analytics.access$602(this$0, i);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.analytics.Analytics.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */