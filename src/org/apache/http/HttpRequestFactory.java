package org.apache.http;

public abstract interface HttpRequestFactory
{
  public abstract HttpRequest newHttpRequest(String paramString1, String paramString2);
  
  public abstract HttpRequest newHttpRequest(RequestLine paramRequestLine);
}

/* Location:
 * Qualified Name:     org.apache.http.HttpRequestFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */