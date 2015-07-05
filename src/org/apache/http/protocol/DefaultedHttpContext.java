package org.apache.http.protocol;

import org.apache.http.util.Args;

@Deprecated
public final class DefaultedHttpContext
  implements HttpContext
{
  private final HttpContext defaults;
  private final HttpContext local;
  
  public DefaultedHttpContext(HttpContext paramHttpContext1, HttpContext paramHttpContext2)
  {
    local = ((HttpContext)Args.notNull(paramHttpContext1, "HTTP context"));
    defaults = paramHttpContext2;
  }
  
  public final Object getAttribute(String paramString)
  {
    Object localObject2 = local.getAttribute(paramString);
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = defaults.getAttribute(paramString);
    }
    return localObject1;
  }
  
  public final HttpContext getDefaults()
  {
    return defaults;
  }
  
  public final Object removeAttribute(String paramString)
  {
    return local.removeAttribute(paramString);
  }
  
  public final void setAttribute(String paramString, Object paramObject)
  {
    local.setAttribute(paramString, paramObject);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[local: ").append(local);
    localStringBuilder.append("defaults: ").append(defaults);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.DefaultedHttpContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */