package org.apache.http;

public abstract interface HttpClientConnection
  extends HttpConnection
{
  public abstract void flush();
  
  public abstract boolean isResponseAvailable(int paramInt);
  
  public abstract void receiveResponseEntity(HttpResponse paramHttpResponse);
  
  public abstract HttpResponse receiveResponseHeader();
  
  public abstract void sendRequestEntity(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest);
  
  public abstract void sendRequestHeader(HttpRequest paramHttpRequest);
}

/* Location:
 * Qualified Name:     org.apache.http.HttpClientConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */