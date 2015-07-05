package org.apache.http;

public abstract interface HttpRequest
  extends HttpMessage
{
  public abstract RequestLine getRequestLine();
}

/* Location:
 * Qualified Name:     org.apache.http.HttpRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */