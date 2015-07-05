package org.apache.http.protocol;

import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;

@Immutable
public class ResponseServer
  implements HttpResponseInterceptor
{
  private final String originServer;
  
  public ResponseServer()
  {
    this(null);
  }
  
  public ResponseServer(String paramString)
  {
    originServer = paramString;
  }
  
  public void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpResponse, "HTTP response");
    if ((!paramHttpResponse.containsHeader("Server")) && (originServer != null)) {
      paramHttpResponse.addHeader("Server", originServer);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.ResponseServer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */