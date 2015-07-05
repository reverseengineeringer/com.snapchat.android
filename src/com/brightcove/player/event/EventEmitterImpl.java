package com.brightcove.player.event;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import com.brightcove.player.util.ErrorUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class EventEmitterImpl
  implements EventEmitter
{
  private static final String EVENT_KEY = "event";
  private static final String PROPERTY_PREFIX_KEY = "prop_";
  private String TAG = "EventEmitterImpl";
  protected Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      paramAnonymousMessage = (Map)obj;
      String str = (String)paramAnonymousMessage.get("event");
      Event localEvent = new Event(str);
      EventEmitterImpl.this.unpackProperties(paramAnonymousMessage, localEvent);
      EventEmitterImpl.this.invokeListenersForEventType(localEvent, "*");
      if (str.equals("response"))
      {
        EventEmitterImpl.this.invokeResponseListener(localEvent);
        return;
      }
      EventEmitterImpl.this.invokeListenersForEvent(localEvent);
    }
  };
  private boolean isEnabled = true;
  private Map<String, ArrayList<InvocationContainer>> listeners = new HashMap();
  
  private ArrayList<InvocationContainer> getInvocations(String paramString)
  {
    if (listeners.containsKey(paramString)) {
      return (ArrayList)listeners.get(paramString);
    }
    ArrayList localArrayList = new ArrayList();
    listeners.put(paramString, localArrayList);
    return localArrayList;
  }
  
  private void invokeListenersForEvent(Event paramEvent)
  {
    invokeListenersForEventType(paramEvent, paramEvent.getType());
  }
  
  private void invokeListenersForEventType(Event paramEvent, String paramString)
  {
    paramString = getInvocations(paramString);
    Iterator localIterator = ((List)paramString.clone()).iterator();
    for (;;)
    {
      InvocationContainer localInvocationContainer;
      if (localIterator.hasNext())
      {
        localInvocationContainer = (InvocationContainer)localIterator.next();
        if (((localInvocationContainer.isDefault()) || (paramEvent.isStopped())) && ((!localInvocationContainer.isDefault()) || (paramEvent.isPrevented()))) {
          continue;
        }
      }
      try
      {
        localInvocationContainer.getListener().processEvent(paramEvent);
        if (!localInvocationContainer.shouldRemove()) {
          continue;
        }
        paramString.remove(localInvocationContainer);
        continue;
        return;
      }
      catch (Throwable localThrowable)
      {
        for (;;) {}
      }
    }
  }
  
  private void invokeResponseListener(Event paramEvent)
  {
    Object localObject = getInvocations(paramEvent.getType());
    int i = paramEvent.getIntegerProperty("requestToken");
    localObject = getInvocationContainerByToken((List)localObject, i);
    if (localObject != null) {}
    try
    {
      ((InvocationContainer)localObject).getListener().processEvent(paramEvent);
      off(paramEvent.getType(), i);
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
  
  private int on(String paramString, EventListener paramEventListener, boolean paramBoolean)
  {
    int i = -1;
    if (isEnabled)
    {
      if ((paramString == null) || (paramEventListener == null)) {
        break label146;
      }
      paramString = getInvocations(paramString);
      paramEventListener = new InvocationContainer(paramEventListener, paramBoolean);
      if ((!paramEventListener.isDefault()) && (!paramString.isEmpty()) && (((InvocationContainer)paramString.get(paramString.size() - 1)).isDefault())) {
        break label90;
      }
      paramString.add(paramEventListener);
    }
    label90:
    label144:
    for (;;)
    {
      i = paramEventListener.getToken();
      return i;
      int j = paramString.size();
      i = 0;
      for (;;)
      {
        if (i >= j) {
          break label144;
        }
        if (((InvocationContainer)paramString.get(i)).isDefault())
        {
          paramString.add(i, paramEventListener);
          break;
        }
        i += 1;
      }
    }
    label146:
    new StringBuilder("Invalid input provided to on: evenType = ").append(paramString).append(", listener = ").append(paramEventListener);
    throw new IllegalArgumentException(ErrorUtil.getMessage("eventTypeAndListenerRequired"));
  }
  
  private void packProperties(Map<String, Object> paramMap1, Map<String, Object> paramMap2)
  {
    Iterator localIterator = paramMap1.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramMap2.put("prop_" + str, paramMap1.get(str));
    }
  }
  
  private void unpackProperties(Map<String, Object> paramMap, Event paramEvent)
  {
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (str.startsWith("prop_")) {
        properties.put(str.substring(5), paramMap.get(str));
      }
    }
  }
  
  public void disable()
  {
    isEnabled = false;
  }
  
  public void emit(String paramString)
  {
    emit(paramString, Collections.emptyMap());
  }
  
  public void emit(String paramString, Map<String, Object> paramMap)
  {
    if (isEnabled)
    {
      if (paramString != null)
      {
        Message localMessage = Message.obtain();
        HashMap localHashMap = new HashMap();
        localHashMap.put("event", paramString);
        if (!paramMap.isEmpty()) {
          packProperties(paramMap, localHashMap);
        }
        obj = localHashMap;
        handler.sendMessage(localMessage);
      }
    }
    else {
      return;
    }
    throw new IllegalArgumentException(ErrorUtil.getMessage("invalidEmit"));
  }
  
  public void enable()
  {
    isEnabled = true;
  }
  
  protected InvocationContainer getInvocationContainerByToken(List<InvocationContainer> paramList, int paramInt)
  {
    paramInt = getInvocationContainerPositionByToken(paramList, paramInt);
    InvocationContainer localInvocationContainer = null;
    if (paramInt >= 0) {
      localInvocationContainer = (InvocationContainer)paramList.get(paramInt);
    }
    return localInvocationContainer;
  }
  
  protected int getInvocationContainerPositionByToken(List<InvocationContainer> paramList, int paramInt)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      if (((InvocationContainer)paramList.get(i)).getToken() == paramInt) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public void off()
  {
    listeners.clear();
  }
  
  public void off(String paramString, int paramInt)
  {
    if (paramInt >= 0)
    {
      paramString = getInvocations(paramString);
      paramInt = getInvocationContainerPositionByToken(paramString, paramInt);
      if (paramInt >= 0) {
        paramString.remove(paramInt);
      }
    }
  }
  
  public int on(String paramString, EventListener paramEventListener)
  {
    return on(paramString, paramEventListener, false);
  }
  
  public int once(String paramString, EventListener paramEventListener)
  {
    return on(paramString, paramEventListener, true);
  }
  
  public void request(String paramString, EventListener paramEventListener)
  {
    request(paramString, new HashMap(), paramEventListener);
  }
  
  public void request(String paramString, Map<String, Object> paramMap, EventListener paramEventListener)
  {
    int i;
    if (isEnabled)
    {
      i = once("response", paramEventListener);
      if (paramMap != null) {
        break label77;
      }
      paramMap = new HashMap();
    }
    label77:
    for (;;)
    {
      try
      {
        paramMap.put("requestToken", Integer.valueOf(i));
        emit(paramString, paramMap);
        return;
      }
      catch (UnsupportedOperationException paramEventListener)
      {
        paramMap = new HashMap(paramMap);
        paramMap.put("requestToken", Integer.valueOf(i));
      }
    }
  }
  
  public void respond(Event paramEvent)
  {
    respond(properties);
  }
  
  public void respond(Map<String, Object> paramMap)
  {
    if ((isEnabled) && (paramMap.containsKey("requestToken"))) {
      emit("response", paramMap);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.event.EventEmitterImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */