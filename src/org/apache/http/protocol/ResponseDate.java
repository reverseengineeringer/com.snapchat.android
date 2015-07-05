package org.apache.http.protocol;

import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.StatusLine;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.util.Args;

@ThreadSafe
public class ResponseDate
  implements HttpResponseInterceptor
{
  private static final HttpDateGenerator DATE_GENERATOR = new HttpDateGenerator();
  
  public void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpResponse, "HTTP response");
    if ((paramHttpResponse.getStatusLine().getStatusCode() >= 200) && (!paramHttpResponse.containsHeader("Date"))) {
      paramHttpResponse.setHeader("Date", DATE_GENERATOR.getCurrentDate());
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.ResponseDate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */