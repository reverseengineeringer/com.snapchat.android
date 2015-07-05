package org.apache.http.impl.io;

import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.LineFormatter;

@NotThreadSafe
public class DefaultHttpResponseWriter
  extends AbstractMessageWriter<HttpResponse>
{
  public DefaultHttpResponseWriter(SessionOutputBuffer paramSessionOutputBuffer)
  {
    super(paramSessionOutputBuffer, null);
  }
  
  public DefaultHttpResponseWriter(SessionOutputBuffer paramSessionOutputBuffer, LineFormatter paramLineFormatter)
  {
    super(paramSessionOutputBuffer, paramLineFormatter);
  }
  
  protected void writeHeadLine(HttpResponse paramHttpResponse)
  {
    lineFormatter.formatStatusLine(lineBuf, paramHttpResponse.getStatusLine());
    sessionBuffer.writeLine(lineBuf);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.io.DefaultHttpResponseWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */