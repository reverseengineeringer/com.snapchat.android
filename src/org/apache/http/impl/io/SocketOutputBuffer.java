package org.apache.http.impl.io;

import java.net.Socket;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

@Deprecated
@NotThreadSafe
public class SocketOutputBuffer
  extends AbstractSessionOutputBuffer
{
  public SocketOutputBuffer(Socket paramSocket, int paramInt, HttpParams paramHttpParams)
  {
    Args.notNull(paramSocket, "Socket");
    if (paramInt < 0) {
      paramInt = paramSocket.getSendBufferSize();
    }
    for (;;)
    {
      if (paramInt < 1024) {
        paramInt = i;
      }
      for (;;)
      {
        init(paramSocket.getOutputStream(), paramInt, paramHttpParams);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.io.SocketOutputBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */