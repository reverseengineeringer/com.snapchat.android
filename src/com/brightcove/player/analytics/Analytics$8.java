package com.brightcove.player.analytics;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

class Analytics$8
  implements EventListener
{
  Analytics$8(Analytics paramAnalytics) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    Analytics.access$802(this$0, (String)properties.get("buildVersion"));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.analytics.Analytics.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */