package org.apache.commons.lang3.event;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

public class EventListenerSupport$ProxyInvocationHandler
  implements InvocationHandler
{
  protected EventListenerSupport$ProxyInvocationHandler(EventListenerSupport paramEventListenerSupport) {}
  
  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    paramObject = EventListenerSupport.access$000(this$0).iterator();
    while (((Iterator)paramObject).hasNext()) {
      paramMethod.invoke(((Iterator)paramObject).next(), paramArrayOfObject);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.event.EventListenerSupport.ProxyInvocationHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */