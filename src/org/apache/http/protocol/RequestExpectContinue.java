package org.apache.http.protocol;

import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

@Immutable
public class RequestExpectContinue
  implements HttpRequestInterceptor
{
  private final boolean activeByDefault;
  
  @Deprecated
  public RequestExpectContinue()
  {
    this(false);
  }
  
  public RequestExpectContinue(boolean paramBoolean)
  {
    activeByDefault = paramBoolean;
  }
  
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    if ((!paramHttpRequest.containsHeader("Expect")) && ((paramHttpRequest instanceof HttpEntityEnclosingRequest)))
    {
      paramHttpContext = paramHttpRequest.getRequestLine().getProtocolVersion();
      HttpEntity localHttpEntity = ((HttpEntityEnclosingRequest)paramHttpRequest).getEntity();
      if ((localHttpEntity != null) && (localHttpEntity.getContentLength() != 0L) && (!paramHttpContext.lessEquals(HttpVersion.HTTP_1_0)) && (paramHttpRequest.getParams().getBooleanParameter("http.protocol.expect-continue", activeByDefault))) {
        paramHttpRequest.addHeader("Expect", "100-continue");
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.RequestExpectContinue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */