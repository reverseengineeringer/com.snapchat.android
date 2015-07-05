package com.brightcove.player.analytics;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

class Analytics$2
  implements EventListener
{
  Analytics$2(Analytics paramAnalytics) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    paramEvent = (Map)properties.get("baseParams");
    if (paramEvent != null)
    {
      Analytics.access$000(this$0).clear();
      Analytics.access$000(this$0).putAll(paramEvent);
    }
    Analytics.access$100(this$0);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.analytics.Analytics.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */