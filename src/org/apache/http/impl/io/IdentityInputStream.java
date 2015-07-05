package org.apache.http.impl.io;

import java.io.InputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;

@NotThreadSafe
public class IdentityInputStream
  extends InputStream
{
  private boolean closed = false;
  private final SessionInputBuffer in;
  
  public IdentityInputStream(SessionInputBuffer paramSessionInputBuffer)
  {
    in = ((SessionInputBuffer)Args.notNull(paramSessionInputBuffer, "Session input buffer"));
  }
  
  public int available()
  {
    if ((in instanceof BufferInfo)) {
      return ((BufferInfo)in).length();
    }
    return 0;
  }
  
  public void close()
  {
    closed = true;
  }
  
  public int read()
  {
    if (closed) {
      return -1;
    }
    return in.read();
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (closed) {
      return -1;
    }
    return in.read(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.io.IdentityInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */