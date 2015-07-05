package org.apache.http;

import org.apache.http.protocol.HttpContext;

public abstract interface ConnectionReuseStrategy
{
  public abstract boolean keepAlive(HttpResponse paramHttpResponse, HttpContext paramHttpContext);
}

/* Location:
 * Qualified Name:     org.apache.http.ConnectionReuseStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */