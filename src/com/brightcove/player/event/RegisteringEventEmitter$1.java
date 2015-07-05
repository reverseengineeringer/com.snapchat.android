package com.brightcove.player.event;

import java.util.Map;

class RegisteringEventEmitter$1
  implements EventListener
{
  RegisteringEventEmitter$1(RegisteringEventEmitter paramRegisteringEventEmitter) {}
  
  public void processEvent(Event paramEvent)
  {
    RegisteringEventEmitter.access$002(this$0, Boolean.parseBoolean(properties.get("debug").toString()));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.event.RegisteringEventEmitter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */