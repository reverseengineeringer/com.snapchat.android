package org.apache.http.impl.io;

import java.net.Socket;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.EofSensor;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

@Deprecated
@NotThreadSafe
public class SocketInputBuffer
  extends AbstractSessionInputBuffer
  implements EofSensor
{
  private boolean eof;
  private final Socket socket;
  
  public SocketInputBuffer(Socket paramSocket, int paramInt, HttpParams paramHttpParams)
  {
    Args.notNull(paramSocket, "Socket");
    socket = paramSocket;
    eof = false;
    if (paramInt < 0) {
      paramInt = paramSocket.getReceiveBufferSize();
    }
    for (;;)
    {
      if (paramInt < 1024) {
        paramInt = i;
      }
      for (;;)
      {
        init(paramSocket.getInputStream(), paramInt, paramHttpParams);
        return;
      }
    }
  }
  
  protected int fillBuffer()
  {
    int i = super.fillBuffer();
    if (i == -1) {}
    for (boolean bool = true;; bool = false)
    {
      eof = bool;
      return i;
    }
  }
  
  public boolean isDataAvailable(int paramInt)
  {
    boolean bool2 = hasBufferedData();
    boolean bool1 = bool2;
    int i;
    if (!bool2) {
      i = socket.getSoTimeout();
    }
    try
    {
      socket.setSoTimeout(paramInt);
      fillBuffer();
      bool1 = hasBufferedData();
      return bool1;
    }
    finally
    {
      socket.setSoTimeout(i);
    }
  }
  
  public boolean isEof()
  {
    return eof;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.io.SocketInputBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */