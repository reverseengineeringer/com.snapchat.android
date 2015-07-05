package org.apache.http;

public abstract interface HttpEntityEnclosingRequest
  extends HttpRequest
{
  public abstract boolean expectContinue();
  
  public abstract HttpEntity getEntity();
  
  public abstract void setEntity(HttpEntity paramHttpEntity);
}

/* Location:
 * Qualified Name:     org.apache.http.HttpEntityEnclosingRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */