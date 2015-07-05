package com.brightcove.player.event;

import com.brightcove.player.util.ErrorUtil;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicInteger;

class InvocationContainer
{
  private static String PROCESS_EVENT_METHOD_NAME = "processEvent";
  private static final String TAG = InvocationContainer.class.getName();
  private static AtomicInteger count;
  private int id;
  private boolean isDefault;
  private EventListener listener;
  private boolean shouldRemove;
  
  public InvocationContainer(EventListener paramEventListener, boolean paramBoolean)
  {
    if (paramEventListener == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("listenerRequired"));
    }
    if (count == null) {
      count = new AtomicInteger();
    }
    id = count.incrementAndGet();
    listener = paramEventListener;
    isDefault = isDefaultListener(paramEventListener);
    shouldRemove = paramBoolean;
  }
  
  private static boolean isDefaultListener(EventListener paramEventListener)
  {
    if (paramEventListener != null) {
      try
      {
        boolean bool = paramEventListener.getClass().getMethod(PROCESS_EVENT_METHOD_NAME, new Class[] { Event.class }).isAnnotationPresent(Default.class);
        return bool;
      }
      catch (NoSuchMethodException paramEventListener)
      {
        new StringBuilder().append(PROCESS_EVENT_METHOD_NAME).append(" method seems to be missing from this handler!");
        return false;
      }
    }
    throw new IllegalArgumentException(ErrorUtil.getMessage("listenerRequired"));
  }
  
  public EventListener getListener()
  {
    return listener;
  }
  
  public int getToken()
  {
    return id;
  }
  
  public int getTotalCount()
  {
    return count.get();
  }
  
  public boolean isDefault()
  {
    return isDefault;
  }
  
  public boolean shouldRemove()
  {
    return shouldRemove;
  }
  
  public String toString()
  {
    return "InvocationContainer (" + id + ")";
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.event.InvocationContainer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */