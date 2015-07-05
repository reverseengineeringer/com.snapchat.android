package org.apache.http.protocol;

import java.util.List;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.ThreadSafe;

@ThreadSafe
public final class ImmutableHttpProcessor
  implements HttpProcessor
{
  private final HttpRequestInterceptor[] requestInterceptors;
  private final HttpResponseInterceptor[] responseInterceptors;
  
  public ImmutableHttpProcessor(List<HttpRequestInterceptor> paramList, List<HttpResponseInterceptor> paramList1)
  {
    if (paramList != null) {}
    for (requestInterceptors = ((HttpRequestInterceptor[])paramList.toArray(new HttpRequestInterceptor[paramList.size()])); paramList1 != null; requestInterceptors = new HttpRequestInterceptor[0])
    {
      responseInterceptors = ((HttpResponseInterceptor[])paramList1.toArray(new HttpResponseInterceptor[paramList1.size()]));
      return;
    }
    responseInterceptors = new HttpResponseInterceptor[0];
  }
  
  @Deprecated
  public ImmutableHttpProcessor(HttpRequestInterceptorList paramHttpRequestInterceptorList, HttpResponseInterceptorList paramHttpResponseInterceptorList)
  {
    int k;
    int i;
    if (paramHttpRequestInterceptorList != null)
    {
      k = paramHttpRequestInterceptorList.getRequestInterceptorCount();
      requestInterceptors = new HttpRequestInterceptor[k];
      i = 0;
      while (i < k)
      {
        requestInterceptors[i] = paramHttpRequestInterceptorList.getRequestInterceptor(i);
        i += 1;
      }
    }
    requestInterceptors = new HttpRequestInterceptor[0];
    if (paramHttpResponseInterceptorList != null)
    {
      k = paramHttpResponseInterceptorList.getResponseInterceptorCount();
      responseInterceptors = new HttpResponseInterceptor[k];
      i = j;
      while (i < k)
      {
        responseInterceptors[i] = paramHttpResponseInterceptorList.getResponseInterceptor(i);
        i += 1;
      }
    }
    responseInterceptors = new HttpResponseInterceptor[0];
  }
  
  public ImmutableHttpProcessor(HttpRequestInterceptor... paramVarArgs)
  {
    this(paramVarArgs, null);
  }
  
  public ImmutableHttpProcessor(HttpRequestInterceptor[] paramArrayOfHttpRequestInterceptor, HttpResponseInterceptor[] paramArrayOfHttpResponseInterceptor)
  {
    int i;
    if (paramArrayOfHttpRequestInterceptor != null)
    {
      i = paramArrayOfHttpRequestInterceptor.length;
      requestInterceptors = new HttpRequestInterceptor[i];
      System.arraycopy(paramArrayOfHttpRequestInterceptor, 0, requestInterceptors, 0, i);
    }
    while (paramArrayOfHttpResponseInterceptor != null)
    {
      i = paramArrayOfHttpResponseInterceptor.length;
      responseInterceptors = new HttpResponseInterceptor[i];
      System.arraycopy(paramArrayOfHttpResponseInterceptor, 0, responseInterceptors, 0, i);
      return;
      requestInterceptors = new HttpRequestInterceptor[0];
    }
    responseInterceptors = new HttpResponseInterceptor[0];
  }
  
  public ImmutableHttpProcessor(HttpResponseInterceptor... paramVarArgs)
  {
    this(null, paramVarArgs);
  }
  
  public final void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    HttpRequestInterceptor[] arrayOfHttpRequestInterceptor = requestInterceptors;
    int j = arrayOfHttpRequestInterceptor.length;
    int i = 0;
    while (i < j)
    {
      arrayOfHttpRequestInterceptor[i].process(paramHttpRequest, paramHttpContext);
      i += 1;
    }
  }
  
  public final void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    HttpResponseInterceptor[] arrayOfHttpResponseInterceptor = responseInterceptors;
    int j = arrayOfHttpResponseInterceptor.length;
    int i = 0;
    while (i < j)
    {
      arrayOfHttpResponseInterceptor[i].process(paramHttpResponse, paramHttpContext);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.ImmutableHttpProcessor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */