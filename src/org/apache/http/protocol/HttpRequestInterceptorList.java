package org.apache.http.protocol;

import java.util.List;
import org.apache.http.HttpRequestInterceptor;

@Deprecated
public abstract interface HttpRequestInterceptorList
{
  public abstract void addRequestInterceptor(HttpRequestInterceptor paramHttpRequestInterceptor);
  
  public abstract void addRequestInterceptor(HttpRequestInterceptor paramHttpRequestInterceptor, int paramInt);
  
  public abstract void clearRequestInterceptors();
  
  public abstract HttpRequestInterceptor getRequestInterceptor(int paramInt);
  
  public abstract int getRequestInterceptorCount();
  
  public abstract void removeRequestInterceptorByClass(Class<? extends HttpRequestInterceptor> paramClass);
  
  public abstract void setInterceptors(List<?> paramList);
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.HttpRequestInterceptorList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */