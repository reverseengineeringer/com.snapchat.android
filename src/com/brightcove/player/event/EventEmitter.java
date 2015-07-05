package com.brightcove.player.event;

import java.util.Map;

public abstract interface EventEmitter
{
  public abstract void disable();
  
  public abstract void emit(String paramString);
  
  public abstract void emit(String paramString, Map<String, Object> paramMap);
  
  public abstract void enable();
  
  public abstract void off();
  
  public abstract void off(String paramString, int paramInt);
  
  public abstract int on(String paramString, EventListener paramEventListener);
  
  public abstract int once(String paramString, EventListener paramEventListener);
  
  public abstract void request(String paramString, EventListener paramEventListener);
  
  public abstract void request(String paramString, Map<String, Object> paramMap, EventListener paramEventListener);
  
  public abstract void respond(Event paramEvent);
  
  public abstract void respond(Map<String, Object> paramMap);
}

/* Location:
 * Qualified Name:     com.brightcove.player.event.EventEmitter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */