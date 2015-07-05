package org.apache.http;

public abstract interface HttpServerConnection
  extends HttpConnection
{
  public abstract void flush();
  
  public abstract void receiveRequestEntity(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest);
  
  public abstract HttpRequest receiveRequestHeader();
  
  public abstract void sendResponseEntity(HttpResponse paramHttpResponse);
  
  public abstract void sendResponseHeader(HttpResponse paramHttpResponse);
}

/* Location:
 * Qualified Name:     org.apache.http.HttpServerConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */