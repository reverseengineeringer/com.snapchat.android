package org.apache.http.protocol;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.util.Args;

@ThreadSafe
public class BasicHttpContext
  implements HttpContext
{
  private final Map<String, Object> map = new ConcurrentHashMap();
  private final HttpContext parentContext;
  
  public BasicHttpContext()
  {
    this(null);
  }
  
  public BasicHttpContext(HttpContext paramHttpContext)
  {
    parentContext = paramHttpContext;
  }
  
  public void clear()
  {
    map.clear();
  }
  
  public Object getAttribute(String paramString)
  {
    Args.notNull(paramString, "Id");
    Object localObject2 = map.get(paramString);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = localObject2;
      if (parentContext != null) {
        localObject1 = parentContext.getAttribute(paramString);
      }
    }
    return localObject1;
  }
  
  public Object removeAttribute(String paramString)
  {
    Args.notNull(paramString, "Id");
    return map.remove(paramString);
  }
  
  public void setAttribute(String paramString, Object paramObject)
  {
    Args.notNull(paramString, "Id");
    if (paramObject != null)
    {
      map.put(paramString, paramObject);
      return;
    }
    map.remove(paramString);
  }
  
  public String toString()
  {
    return map.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.BasicHttpContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */