package org.apache.http.protocol;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.HttpServerConnection;
import org.apache.http.HttpVersion;
import org.apache.http.MethodNotSupportedException;
import org.apache.http.ProtocolException;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.UnsupportedHttpVersionException;
import org.apache.http.annotation.Immutable;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.DefaultHttpResponseFactory;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.EncodingUtils;
import org.apache.http.util.EntityUtils;

@Immutable
public class HttpService
{
  private volatile ConnectionReuseStrategy connStrategy = null;
  private volatile HttpExpectationVerifier expectationVerifier = null;
  private volatile HttpRequestHandlerMapper handlerMapper = null;
  private volatile HttpParams params = null;
  private volatile HttpProcessor processor = null;
  private volatile HttpResponseFactory responseFactory = null;
  
  @Deprecated
  public HttpService(HttpProcessor paramHttpProcessor, ConnectionReuseStrategy paramConnectionReuseStrategy, HttpResponseFactory paramHttpResponseFactory)
  {
    setHttpProcessor(paramHttpProcessor);
    setConnReuseStrategy(paramConnectionReuseStrategy);
    setResponseFactory(paramHttpResponseFactory);
  }
  
  public HttpService(HttpProcessor paramHttpProcessor, ConnectionReuseStrategy paramConnectionReuseStrategy, HttpResponseFactory paramHttpResponseFactory, HttpRequestHandlerMapper paramHttpRequestHandlerMapper)
  {
    this(paramHttpProcessor, paramConnectionReuseStrategy, paramHttpResponseFactory, paramHttpRequestHandlerMapper, null);
  }
  
  public HttpService(HttpProcessor paramHttpProcessor, ConnectionReuseStrategy paramConnectionReuseStrategy, HttpResponseFactory paramHttpResponseFactory, HttpRequestHandlerMapper paramHttpRequestHandlerMapper, HttpExpectationVerifier paramHttpExpectationVerifier)
  {
    processor = ((HttpProcessor)Args.notNull(paramHttpProcessor, "HTTP processor"));
    if (paramConnectionReuseStrategy != null)
    {
      connStrategy = paramConnectionReuseStrategy;
      if (paramHttpResponseFactory == null) {
        break label85;
      }
    }
    for (;;)
    {
      responseFactory = paramHttpResponseFactory;
      handlerMapper = paramHttpRequestHandlerMapper;
      expectationVerifier = paramHttpExpectationVerifier;
      return;
      paramConnectionReuseStrategy = DefaultConnectionReuseStrategy.INSTANCE;
      break;
      label85:
      paramHttpResponseFactory = DefaultHttpResponseFactory.INSTANCE;
    }
  }
  
  @Deprecated
  public HttpService(HttpProcessor paramHttpProcessor, ConnectionReuseStrategy paramConnectionReuseStrategy, HttpResponseFactory paramHttpResponseFactory, HttpRequestHandlerResolver paramHttpRequestHandlerResolver, HttpParams paramHttpParams)
  {
    this(paramHttpProcessor, paramConnectionReuseStrategy, paramHttpResponseFactory, new HttpRequestHandlerResolverAdapter(paramHttpRequestHandlerResolver), null);
  }
  
  @Deprecated
  public HttpService(HttpProcessor paramHttpProcessor, ConnectionReuseStrategy paramConnectionReuseStrategy, HttpResponseFactory paramHttpResponseFactory, HttpRequestHandlerResolver paramHttpRequestHandlerResolver, HttpExpectationVerifier paramHttpExpectationVerifier, HttpParams paramHttpParams)
  {
    this(paramHttpProcessor, paramConnectionReuseStrategy, paramHttpResponseFactory, new HttpRequestHandlerResolverAdapter(paramHttpRequestHandlerResolver), paramHttpExpectationVerifier);
  }
  
  public HttpService(HttpProcessor paramHttpProcessor, HttpRequestHandlerMapper paramHttpRequestHandlerMapper)
  {
    this(paramHttpProcessor, null, null, paramHttpRequestHandlerMapper, null);
  }
  
  protected void doService(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    HttpRequestHandler localHttpRequestHandler = null;
    if (handlerMapper != null) {
      localHttpRequestHandler = handlerMapper.lookup(paramHttpRequest);
    }
    if (localHttpRequestHandler != null)
    {
      localHttpRequestHandler.handle(paramHttpRequest, paramHttpResponse, paramHttpContext);
      return;
    }
    paramHttpResponse.setStatusCode(501);
  }
  
  @Deprecated
  public HttpParams getParams()
  {
    return params;
  }
  
  protected void handleException(HttpException paramHttpException, HttpResponse paramHttpResponse)
  {
    if ((paramHttpException instanceof MethodNotSupportedException)) {
      paramHttpResponse.setStatusCode(501);
    }
    for (;;)
    {
      String str2 = paramHttpException.getMessage();
      String str1 = str2;
      if (str2 == null) {
        str1 = paramHttpException.toString();
      }
      paramHttpException = new ByteArrayEntity(EncodingUtils.getAsciiBytes(str1));
      paramHttpException.setContentType("text/plain; charset=US-ASCII");
      paramHttpResponse.setEntity(paramHttpException);
      return;
      if ((paramHttpException instanceof UnsupportedHttpVersionException)) {
        paramHttpResponse.setStatusCode(505);
      } else if ((paramHttpException instanceof ProtocolException)) {
        paramHttpResponse.setStatusCode(400);
      } else {
        paramHttpResponse.setStatusCode(500);
      }
    }
  }
  
  public void handleRequest(HttpServerConnection paramHttpServerConnection, HttpContext paramHttpContext)
  {
    paramHttpContext.setAttribute("http.connection", paramHttpServerConnection);
    for (;;)
    {
      try
      {
        localHttpRequest = paramHttpServerConnection.receiveRequestHeader();
        if (!(localHttpRequest instanceof HttpEntityEnclosingRequest)) {
          continue;
        }
        if (((HttpEntityEnclosingRequest)localHttpRequest).expectContinue())
        {
          localObject2 = responseFactory.newHttpResponse(HttpVersion.HTTP_1_1, 100, paramHttpContext);
          HttpExpectationVerifier localHttpExpectationVerifier = expectationVerifier;
          localObject1 = localObject2;
          if (localHttpExpectationVerifier == null) {}
        }
      }
      catch (HttpException localHttpException1)
      {
        HttpRequest localHttpRequest;
        Object localObject2;
        Object localObject1;
        HttpResponse localHttpResponse = responseFactory.newHttpResponse(HttpVersion.HTTP_1_0, 500, paramHttpContext);
        handleException(localHttpException1, localHttpResponse);
        continue;
        localHttpResponse = null;
        continue;
      }
      try
      {
        expectationVerifier.verify(localHttpRequest, (HttpResponse)localObject2, paramHttpContext);
        localObject1 = localObject2;
      }
      catch (HttpException localHttpException2)
      {
        localObject1 = responseFactory.newHttpResponse(HttpVersion.HTTP_1_0, 500, paramHttpContext);
        handleException(localHttpException2, (HttpResponse)localObject1);
      }
    }
    localObject2 = localObject1;
    if (((HttpResponse)localObject1).getStatusLine().getStatusCode() < 200)
    {
      paramHttpServerConnection.sendResponseHeader((HttpResponse)localObject1);
      paramHttpServerConnection.flush();
      paramHttpServerConnection.receiveRequestEntity((HttpEntityEnclosingRequest)localHttpRequest);
    }
    else
    {
      paramHttpContext.setAttribute("http.request", localHttpRequest);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = responseFactory.newHttpResponse(HttpVersion.HTTP_1_1, 200, paramHttpContext);
        processor.process(localHttpRequest, paramHttpContext);
        doService(localHttpRequest, (HttpResponse)localObject1, paramHttpContext);
      }
      localObject2 = localObject1;
      if ((localHttpRequest instanceof HttpEntityEnclosingRequest))
      {
        EntityUtils.consume(((HttpEntityEnclosingRequest)localHttpRequest).getEntity());
        localObject2 = localObject1;
      }
      paramHttpContext.setAttribute("http.response", localObject2);
      processor.process((HttpResponse)localObject2, paramHttpContext);
      paramHttpServerConnection.sendResponseHeader((HttpResponse)localObject2);
      paramHttpServerConnection.sendResponseEntity((HttpResponse)localObject2);
      paramHttpServerConnection.flush();
      if (!connStrategy.keepAlive((HttpResponse)localObject2, paramHttpContext)) {
        paramHttpServerConnection.close();
      }
      return;
    }
  }
  
  @Deprecated
  public void setConnReuseStrategy(ConnectionReuseStrategy paramConnectionReuseStrategy)
  {
    Args.notNull(paramConnectionReuseStrategy, "Connection reuse strategy");
    connStrategy = paramConnectionReuseStrategy;
  }
  
  @Deprecated
  public void setExpectationVerifier(HttpExpectationVerifier paramHttpExpectationVerifier)
  {
    expectationVerifier = paramHttpExpectationVerifier;
  }
  
  @Deprecated
  public void setHandlerResolver(HttpRequestHandlerResolver paramHttpRequestHandlerResolver)
  {
    handlerMapper = new HttpRequestHandlerResolverAdapter(paramHttpRequestHandlerResolver);
  }
  
  @Deprecated
  public void setHttpProcessor(HttpProcessor paramHttpProcessor)
  {
    Args.notNull(paramHttpProcessor, "HTTP processor");
    processor = paramHttpProcessor;
  }
  
  @Deprecated
  public void setParams(HttpParams paramHttpParams)
  {
    params = paramHttpParams;
  }
  
  @Deprecated
  public void setResponseFactory(HttpResponseFactory paramHttpResponseFactory)
  {
    Args.notNull(paramHttpResponseFactory, "Response factory");
    responseFactory = paramHttpResponseFactory;
  }
  
  @Deprecated
  static class HttpRequestHandlerResolverAdapter
    implements HttpRequestHandlerMapper
  {
    private final HttpRequestHandlerResolver resolver;
    
    public HttpRequestHandlerResolverAdapter(HttpRequestHandlerResolver paramHttpRequestHandlerResolver)
    {
      resolver = paramHttpRequestHandlerResolver;
    }
    
    public HttpRequestHandler lookup(HttpRequest paramHttpRequest)
    {
      return resolver.lookup(paramHttpRequest.getRequestLine().getUri());
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.HttpService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */