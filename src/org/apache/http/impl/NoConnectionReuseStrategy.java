package org.apache.http.impl;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.protocol.HttpContext;

@Immutable
public class NoConnectionReuseStrategy
  implements ConnectionReuseStrategy
{
  public static final NoConnectionReuseStrategy INSTANCE = new NoConnectionReuseStrategy();
  
  public boolean keepAlive(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.NoConnectionReuseStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */