package org.apache.http.protocol;

import org.apache.http.HttpRequest;
import org.apache.http.RequestLine;

@Deprecated
class HttpService$HttpRequestHandlerResolverAdapter
  implements HttpRequestHandlerMapper
{
  private final HttpRequestHandlerResolver resolver;
  
  public HttpService$HttpRequestHandlerResolverAdapter(HttpRequestHandlerResolver paramHttpRequestHandlerResolver)
  {
    resolver = paramHttpRequestHandlerResolver;
  }
  
  public HttpRequestHandler lookup(HttpRequest paramHttpRequest)
  {
    return resolver.lookup(paramHttpRequest.getRequestLine().getUri());
  }
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.HttpService.HttpRequestHandlerResolverAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */