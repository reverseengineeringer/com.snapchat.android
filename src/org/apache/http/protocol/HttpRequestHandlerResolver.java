package org.apache.http.protocol;

@Deprecated
public abstract interface HttpRequestHandlerResolver
{
  public abstract HttpRequestHandler lookup(String paramString);
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.HttpRequestHandlerResolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */