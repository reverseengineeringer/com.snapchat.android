package com.addlive.impl;

import com.addlive.platform.PlatformInitOptions;
import com.addlive.service.listener.AddLiveServiceListener;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

class ADLNativeWrapperImpl$EventTask
  implements Runnable
{
  private String data;
  
  public ADLNativeWrapperImpl$EventTask(ADLNativeWrapperImpl paramADLNativeWrapperImpl, String paramString)
  {
    data = paramString;
  }
  
  public void run()
  {
    for (;;)
    {
      try
      {
        if (ADLNativeWrapperImpl.access$000(this$0).isInteractionsLoggingEnabled())
        {
          ADLNativeWrapperImpl.access$000(this$0).getInteractionsLogTag();
          new StringBuilder("[App <---- SDK] Event: ").append(data);
        }
        Log.v("AddLive_SDK", "Got an event: " + data);
        localObject = new ServiceEvent(data);
        if (!((ServiceEvent)localObject).getEvent().equals("onUserEvent")) {
          continue;
        }
        ADLNativeWrapperImpl.access$100(this$0, (ServiceEvent)localObject);
      }
      catch (JSONException localJSONException)
      {
        EventDescription localEventDescription;
        Log.e("AddLive_SDK", "Cannot process an event as there was a parse error", localJSONException);
        return;
        if (!((ServiceEvent)localObject).getEvent().equals("onConnectionLost")) {
          continue;
        }
        ADLNativeWrapperImpl.access$300(this$0, (ServiceEvent)localObject);
        continue;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        Log.e("AddLive_SDK", "Cannot process an event as the event type is misconfigured", localInvocationTargetException);
        return;
        Object localObject = eventConstructor.newInstance(new Object[] { ((ServiceEvent)localObject).getParams() });
        Iterator localIterator = ADLNativeWrapperImpl.access$500(this$0).iterator();
        if (!localIterator.hasNext()) {
          return;
        }
        AddLiveServiceListener localAddLiveServiceListener = (AddLiveServiceListener)localIterator.next();
        handlerMethod.invoke(localAddLiveServiceListener, new Object[] { localObject });
        continue;
      }
      catch (InstantiationException localInstantiationException)
      {
        Log.e("AddLive_SDK", "Cannot process an event as the event type is misconfigured", localInstantiationException);
        return;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        Log.e("AddLive_SDK", "Cannot process an event as the event type is misconfigured", localIllegalAccessException);
        return;
      }
      catch (Throwable localThrowable)
      {
        Log.e("AddLive_SDK", "Unknown error passing an event: ", localThrowable);
      }
      localEventDescription = (EventDescription)ADLNativeWrapperImpl.access$400(this$0).get(((ServiceEvent)localObject).getEvent());
      if (localEventDescription != null) {
        continue;
      }
      Log.e("AddLive_SDK", "Cannot process an event as the event type is not supported: " + ((ServiceEvent)localObject).getEvent());
      return;
      if (!((ServiceEvent)localObject).getEvent().equals("onMediaStreamEvent")) {
        continue;
      }
      ADLNativeWrapperImpl.access$200(this$0, (ServiceEvent)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ADLNativeWrapperImpl.EventTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */