package org.apache.http.impl.io;

import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.LineFormatter;

@NotThreadSafe
public class DefaultHttpRequestWriter
  extends AbstractMessageWriter<HttpRequest>
{
  public DefaultHttpRequestWriter(SessionOutputBuffer paramSessionOutputBuffer)
  {
    this(paramSessionOutputBuffer, null);
  }
  
  public DefaultHttpRequestWriter(SessionOutputBuffer paramSessionOutputBuffer, LineFormatter paramLineFormatter)
  {
    super(paramSessionOutputBuffer, paramLineFormatter);
  }
  
  protected void writeHeadLine(HttpRequest paramHttpRequest)
  {
    lineFormatter.formatRequestLine(lineBuf, paramHttpRequest.getRequestLine());
    sessionBuffer.writeLine(lineBuf);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.io.DefaultHttpRequestWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */