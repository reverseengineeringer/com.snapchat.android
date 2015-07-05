package org.apache.http.protocol;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;

@Deprecated
@NotThreadSafe
public final class BasicHttpProcessor
  implements Cloneable, HttpProcessor, HttpRequestInterceptorList, HttpResponseInterceptorList
{
  protected final List<HttpRequestInterceptor> requestInterceptors = new ArrayList();
  protected final List<HttpResponseInterceptor> responseInterceptors = new ArrayList();
  
  public final void addInterceptor(HttpRequestInterceptor paramHttpRequestInterceptor)
  {
    addRequestInterceptor(paramHttpRequestInterceptor);
  }
  
  public final void addInterceptor(HttpRequestInterceptor paramHttpRequestInterceptor, int paramInt)
  {
    addRequestInterceptor(paramHttpRequestInterceptor, paramInt);
  }
  
  public final void addInterceptor(HttpResponseInterceptor paramHttpResponseInterceptor)
  {
    addResponseInterceptor(paramHttpResponseInterceptor);
  }
  
  public final void addInterceptor(HttpResponseInterceptor paramHttpResponseInterceptor, int paramInt)
  {
    addResponseInterceptor(paramHttpResponseInterceptor, paramInt);
  }
  
  public final void addRequestInterceptor(HttpRequestInterceptor paramHttpRequestInterceptor)
  {
    if (paramHttpRequestInterceptor == null) {
      return;
    }
    requestInterceptors.add(paramHttpRequestInterceptor);
  }
  
  public final void addRequestInterceptor(HttpRequestInterceptor paramHttpRequestInterceptor, int paramInt)
  {
    if (paramHttpRequestInterceptor == null) {
      return;
    }
    requestInterceptors.add(paramInt, paramHttpRequestInterceptor);
  }
  
  public final void addResponseInterceptor(HttpResponseInterceptor paramHttpResponseInterceptor)
  {
    if (paramHttpResponseInterceptor == null) {
      return;
    }
    responseInterceptors.add(paramHttpResponseInterceptor);
  }
  
  public final void addResponseInterceptor(HttpResponseInterceptor paramHttpResponseInterceptor, int paramInt)
  {
    if (paramHttpResponseInterceptor == null) {
      return;
    }
    responseInterceptors.add(paramInt, paramHttpResponseInterceptor);
  }
  
  public final void clearInterceptors()
  {
    clearRequestInterceptors();
    clearResponseInterceptors();
  }
  
  public final void clearRequestInterceptors()
  {
    requestInterceptors.clear();
  }
  
  public final void clearResponseInterceptors()
  {
    responseInterceptors.clear();
  }
  
  public final Object clone()
  {
    BasicHttpProcessor localBasicHttpProcessor = (BasicHttpProcessor)super.clone();
    copyInterceptors(localBasicHttpProcessor);
    return localBasicHttpProcessor;
  }
  
  public final BasicHttpProcessor copy()
  {
    BasicHttpProcessor localBasicHttpProcessor = new BasicHttpProcessor();
    copyInterceptors(localBasicHttpProcessor);
    return localBasicHttpProcessor;
  }
  
  protected final void copyInterceptors(BasicHttpProcessor paramBasicHttpProcessor)
  {
    requestInterceptors.clear();
    requestInterceptors.addAll(requestInterceptors);
    responseInterceptors.clear();
    responseInterceptors.addAll(responseInterceptors);
  }
  
  public final HttpRequestInterceptor getRequestInterceptor(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= requestInterceptors.size())) {
      return null;
    }
    return (HttpRequestInterceptor)requestInterceptors.get(paramInt);
  }
  
  public final int getRequestInterceptorCount()
  {
    return requestInterceptors.size();
  }
  
  public final HttpResponseInterceptor getResponseInterceptor(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= responseInterceptors.size())) {
      return null;
    }
    return (HttpResponseInterceptor)responseInterceptors.get(paramInt);
  }
  
  public final int getResponseInterceptorCount()
  {
    return responseInterceptors.size();
  }
  
  public final void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Iterator localIterator = requestInterceptors.iterator();
    while (localIterator.hasNext()) {
      ((HttpRequestInterceptor)localIterator.next()).process(paramHttpRequest, paramHttpContext);
    }
  }
  
  public final void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    Iterator localIterator = responseInterceptors.iterator();
    while (localIterator.hasNext()) {
      ((HttpResponseInterceptor)localIterator.next()).process(paramHttpResponse, paramHttpContext);
    }
  }
  
  public final void removeRequestInterceptorByClass(Class<? extends HttpRequestInterceptor> paramClass)
  {
    Iterator localIterator = requestInterceptors.iterator();
    while (localIterator.hasNext()) {
      if (localIterator.next().getClass().equals(paramClass)) {
        localIterator.remove();
      }
    }
  }
  
  public final void removeResponseInterceptorByClass(Class<? extends HttpResponseInterceptor> paramClass)
  {
    Iterator localIterator = responseInterceptors.iterator();
    while (localIterator.hasNext()) {
      if (localIterator.next().getClass().equals(paramClass)) {
        localIterator.remove();
      }
    }
  }
  
  public final void setInterceptors(List<?> paramList)
  {
    Args.notNull(paramList, "Inteceptor list");
    requestInterceptors.clear();
    responseInterceptors.clear();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = paramList.next();
      if ((localObject instanceof HttpRequestInterceptor)) {
        addInterceptor((HttpRequestInterceptor)localObject);
      }
      if ((localObject instanceof HttpResponseInterceptor)) {
        addInterceptor((HttpResponseInterceptor)localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.BasicHttpProcessor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */