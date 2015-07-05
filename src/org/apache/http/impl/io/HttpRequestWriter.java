package org.apache.http.impl.io;

import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.LineFormatter;
import org.apache.http.params.HttpParams;

@Deprecated
@NotThreadSafe
public class HttpRequestWriter
  extends AbstractMessageWriter<HttpRequest>
{
  public HttpRequestWriter(SessionOutputBuffer paramSessionOutputBuffer, LineFormatter paramLineFormatter, HttpParams paramHttpParams)
  {
    super(paramSessionOutputBuffer, paramLineFormatter, paramHttpParams);
  }
  
  protected void writeHeadLine(HttpRequest paramHttpRequest)
  {
    lineFormatter.formatRequestLine(lineBuf, paramHttpRequest.getRequestLine());
    sessionBuffer.writeLine(lineBuf);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.io.HttpRequestWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */