package com.brightcove.player.event;

import android.os.Handler;
import android.os.Message;
import java.util.Map;

class EventEmitterImpl$1
  extends Handler
{
  EventEmitterImpl$1(EventEmitterImpl paramEventEmitterImpl) {}
  
  public void handleMessage(Message paramMessage)
  {
    paramMessage = (Map)obj;
    String str = (String)paramMessage.get("event");
    Event localEvent = new Event(str);
    EventEmitterImpl.access$000(this$0, paramMessage, localEvent);
    EventEmitterImpl.access$100(this$0, localEvent, "*");
    if (str.equals("response"))
    {
      EventEmitterImpl.access$200(this$0, localEvent);
      return;
    }
    EventEmitterImpl.access$300(this$0, localEvent);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.event.EventEmitterImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */