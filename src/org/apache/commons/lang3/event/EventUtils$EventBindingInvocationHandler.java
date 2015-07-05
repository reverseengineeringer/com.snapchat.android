package org.apache.commons.lang3.event;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.reflect.MethodUtils;

class EventUtils$EventBindingInvocationHandler
  implements InvocationHandler
{
  private final Set<String> eventTypes;
  private final String methodName;
  private final Object target;
  
  EventUtils$EventBindingInvocationHandler(Object paramObject, String paramString, String[] paramArrayOfString)
  {
    target = paramObject;
    methodName = paramString;
    eventTypes = new HashSet(Arrays.asList(paramArrayOfString));
  }
  
  private boolean hasMatchingParametersMethod(Method paramMethod)
  {
    return MethodUtils.getAccessibleMethod(target.getClass(), methodName, paramMethod.getParameterTypes()) != null;
  }
  
  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    if ((eventTypes.isEmpty()) || (eventTypes.contains(paramMethod.getName())))
    {
      if (hasMatchingParametersMethod(paramMethod)) {
        return MethodUtils.invokeMethod(target, methodName, paramArrayOfObject);
      }
      return MethodUtils.invokeMethod(target, methodName, new Object[0]);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.event.EventUtils.EventBindingInvocationHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */