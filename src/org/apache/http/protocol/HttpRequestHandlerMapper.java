package org.apache.http.protocol;

import org.apache.http.HttpRequest;

public abstract interface HttpRequestHandlerMapper
{
  public abstract HttpRequestHandler lookup(HttpRequest paramHttpRequest);
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.HttpRequestHandlerMapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */