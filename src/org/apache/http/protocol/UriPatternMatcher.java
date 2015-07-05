package org.apache.http.protocol;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.annotation.GuardedBy;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.util.Args;

@ThreadSafe
public class UriPatternMatcher<T>
{
  @GuardedBy("this")
  private final Map<String, T> map = new HashMap();
  
  @Deprecated
  public Map<String, T> getObjects()
  {
    try
    {
      Map localMap = map;
      return localMap;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public T lookup(String paramString)
  {
    for (;;)
    {
      try
      {
        Args.notNull(paramString, "Request path");
        localObject1 = map.get(paramString);
        localObject3 = localObject1;
        if (localObject1 == null)
        {
          localObject2 = null;
          Iterator localIterator = map.keySet().iterator();
          localObject3 = localObject1;
          if (localIterator.hasNext())
          {
            localObject3 = (String)localIterator.next();
            if ((!matchUriRequestPattern((String)localObject3, paramString)) || ((localObject2 != null) && (((String)localObject2).length() >= ((String)localObject3).length()) && ((((String)localObject2).length() != ((String)localObject3).length()) || (!((String)localObject3).endsWith("*"))))) {
              break label154;
            }
            localObject2 = map.get(localObject3);
            localObject1 = localObject3;
            localObject3 = localObject2;
            localObject2 = localObject1;
            localObject1 = localObject3;
            continue;
          }
        }
        return (T)localObject3;
      }
      finally {}
      label154:
      Object localObject3 = localObject1;
      Object localObject1 = localObject2;
      Object localObject2 = localObject3;
    }
  }
  
  protected boolean matchUriRequestPattern(String paramString1, String paramString2)
  {
    if (paramString1.equals("*")) {}
    while (((paramString1.endsWith("*")) && (paramString2.startsWith(paramString1.substring(0, paramString1.length() - 1)))) || ((paramString1.startsWith("*")) && (paramString2.endsWith(paramString1.substring(1, paramString1.length()))))) {
      return true;
    }
    return false;
  }
  
  public void register(String paramString, T paramT)
  {
    try
    {
      Args.notNull(paramString, "URI request pattern");
      map.put(paramString, paramT);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  @Deprecated
  public void setHandlers(Map<String, T> paramMap)
  {
    try
    {
      Args.notNull(paramMap, "Map of handlers");
      map.clear();
      map.putAll(paramMap);
      return;
    }
    finally
    {
      paramMap = finally;
      throw paramMap;
    }
  }
  
  @Deprecated
  public void setObjects(Map<String, T> paramMap)
  {
    try
    {
      Args.notNull(paramMap, "Map of handlers");
      map.clear();
      map.putAll(paramMap);
      return;
    }
    finally
    {
      paramMap = finally;
      throw paramMap;
    }
  }
  
  public String toString()
  {
    return map.toString();
  }
  
  public void unregister(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return;
      try
      {
        map.remove(paramString);
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.UriPatternMatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */