package org.apache.http.protocol;

import java.io.IOException;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolException;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;

@Immutable
public class HttpRequestExecutor
{
  public static final int DEFAULT_WAIT_FOR_CONTINUE = 3000;
  private final int waitForContinue;
  
  public HttpRequestExecutor()
  {
    this(3000);
  }
  
  public HttpRequestExecutor(int paramInt)
  {
    waitForContinue = Args.positive(paramInt, "Wait for continue time");
  }
  
  private static void closeConnection(HttpClientConnection paramHttpClientConnection)
  {
    try
    {
      paramHttpClientConnection.close();
      return;
    }
    catch (IOException paramHttpClientConnection) {}
  }
  
  protected boolean canResponseHaveBody(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse)
  {
    if ("HEAD".equalsIgnoreCase(paramHttpRequest.getRequestLine().getMethod())) {}
    int i;
    do
    {
      return false;
      i = paramHttpResponse.getStatusLine().getStatusCode();
    } while ((i < 200) || (i == 204) || (i == 304) || (i == 205));
    return true;
  }
  
  protected HttpResponse doReceiveResponse(HttpRequest paramHttpRequest, HttpClientConnection paramHttpClientConnection, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    Args.notNull(paramHttpClientConnection, "Client connection");
    Args.notNull(paramHttpContext, "HTTP context");
    paramHttpContext = null;
    for (int i = 0; (paramHttpContext == null) || (i < 200); i = paramHttpContext.getStatusLine().getStatusCode())
    {
      paramHttpContext = paramHttpClientConnection.receiveResponseHeader();
      if (canResponseHaveBody(paramHttpRequest, paramHttpContext)) {
        paramHttpClientConnection.receiveResponseEntity(paramHttpContext);
      }
    }
    return paramHttpContext;
  }
  
  protected HttpResponse doSendRequest(HttpRequest paramHttpRequest, HttpClientConnection paramHttpClientConnection, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    Args.notNull(paramHttpClientConnection, "Client connection");
    Args.notNull(paramHttpContext, "HTTP context");
    paramHttpContext.setAttribute("http.connection", paramHttpClientConnection);
    paramHttpContext.setAttribute("http.request_sent", Boolean.FALSE);
    paramHttpClientConnection.sendRequestHeader(paramHttpRequest);
    Object localObject1;
    int i;
    if ((paramHttpRequest instanceof HttpEntityEnclosingRequest))
    {
      localObject1 = paramHttpRequest.getRequestLine().getProtocolVersion();
      if ((((HttpEntityEnclosingRequest)paramHttpRequest).expectContinue()) && (!((ProtocolVersion)localObject1).lessEquals(HttpVersion.HTTP_1_0)))
      {
        paramHttpClientConnection.flush();
        if (paramHttpClientConnection.isResponseAvailable(waitForContinue))
        {
          localObject1 = paramHttpClientConnection.receiveResponseHeader();
          if (canResponseHaveBody(paramHttpRequest, (HttpResponse)localObject1)) {
            paramHttpClientConnection.receiveResponseEntity((HttpResponse)localObject1);
          }
          i = ((HttpResponse)localObject1).getStatusLine().getStatusCode();
          if (i < 200)
          {
            if (i != 100) {
              throw new ProtocolException("Unexpected response: " + ((HttpResponse)localObject1).getStatusLine());
            }
            localObject1 = null;
            i = 1;
            localObject2 = localObject1;
            if (i != 0) {
              paramHttpClientConnection.sendRequestEntity((HttpEntityEnclosingRequest)paramHttpRequest);
            }
          }
        }
      }
    }
    for (Object localObject2 = localObject1;; localObject2 = null)
    {
      paramHttpClientConnection.flush();
      paramHttpContext.setAttribute("http.request_sent", Boolean.TRUE);
      return (HttpResponse)localObject2;
      i = 0;
      break;
      localObject1 = null;
      i = 1;
      break;
    }
  }
  
  public HttpResponse execute(HttpRequest paramHttpRequest, HttpClientConnection paramHttpClientConnection, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    Args.notNull(paramHttpClientConnection, "Client connection");
    Args.notNull(paramHttpContext, "HTTP context");
    try
    {
      HttpResponse localHttpResponse2 = doSendRequest(paramHttpRequest, paramHttpClientConnection, paramHttpContext);
      HttpResponse localHttpResponse1 = localHttpResponse2;
      if (localHttpResponse2 == null) {
        localHttpResponse1 = doReceiveResponse(paramHttpRequest, paramHttpClientConnection, paramHttpContext);
      }
      return localHttpResponse1;
    }
    catch (IOException paramHttpRequest)
    {
      closeConnection(paramHttpClientConnection);
      throw paramHttpRequest;
    }
    catch (HttpException paramHttpRequest)
    {
      closeConnection(paramHttpClientConnection);
      throw paramHttpRequest;
    }
    catch (RuntimeException paramHttpRequest)
    {
      closeConnection(paramHttpClientConnection);
      throw paramHttpRequest;
    }
  }
  
  public void postProcess(HttpResponse paramHttpResponse, HttpProcessor paramHttpProcessor, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpResponse, "HTTP response");
    Args.notNull(paramHttpProcessor, "HTTP processor");
    Args.notNull(paramHttpContext, "HTTP context");
    paramHttpContext.setAttribute("http.response", paramHttpResponse);
    paramHttpProcessor.process(paramHttpResponse, paramHttpContext);
  }
  
  public void preProcess(HttpRequest paramHttpRequest, HttpProcessor paramHttpProcessor, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    Args.notNull(paramHttpProcessor, "HTTP processor");
    Args.notNull(paramHttpContext, "HTTP context");
    paramHttpContext.setAttribute("http.request", paramHttpRequest);
    paramHttpProcessor.process(paramHttpRequest, paramHttpContext);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.HttpRequestExecutor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */