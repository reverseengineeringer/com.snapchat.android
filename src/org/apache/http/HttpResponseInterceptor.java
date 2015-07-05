package org.apache.http;

import org.apache.http.protocol.HttpContext;

public abstract interface HttpResponseInterceptor
{
  public abstract void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext);
}

/* Location:
 * Qualified Name:     org.apache.http.HttpResponseInterceptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */