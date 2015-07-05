package org.apache.http.config;

import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.ThreadSafe;

@ThreadSafe
public final class Registry<I>
  implements Lookup<I>
{
  private final Map<String, I> map;
  
  Registry(Map<String, I> paramMap)
  {
    map = new ConcurrentHashMap(paramMap);
  }
  
  public final I lookup(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return (I)map.get(paramString.toLowerCase(Locale.US));
  }
  
  public final String toString()
  {
    return map.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.http.config.Registry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */