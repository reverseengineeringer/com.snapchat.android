package org.apache.http.protocol;

import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.util.Args;

@ThreadSafe
public class RequestDate
  implements HttpRequestInterceptor
{
  private static final HttpDateGenerator DATE_GENERATOR = new HttpDateGenerator();
  
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    if (((paramHttpRequest instanceof HttpEntityEnclosingRequest)) && (!paramHttpRequest.containsHeader("Date"))) {
      paramHttpRequest.setHeader("Date", DATE_GENERATOR.getCurrentDate());
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.RequestDate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */