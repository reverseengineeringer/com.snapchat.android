package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.ConnectionClosedException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;

@NotThreadSafe
public class ContentLengthInputStream
  extends InputStream
{
  private static final int BUFFER_SIZE = 2048;
  private boolean closed = false;
  private final long contentLength;
  private SessionInputBuffer in = null;
  private long pos = 0L;
  
  public ContentLengthInputStream(SessionInputBuffer paramSessionInputBuffer, long paramLong)
  {
    in = ((SessionInputBuffer)Args.notNull(paramSessionInputBuffer, "Session input buffer"));
    contentLength = Args.notNegative(paramLong, "Content length");
  }
  
  public int available()
  {
    if ((in instanceof BufferInfo)) {
      return Math.min(((BufferInfo)in).length(), (int)(contentLength - pos));
    }
    return 0;
  }
  
  public void close()
  {
    if (!closed) {}
    try
    {
      if (pos < contentLength)
      {
        byte[] arrayOfByte = new byte['ࠀ'];
        int i;
        do
        {
          i = read(arrayOfByte);
        } while (i >= 0);
      }
      return;
    }
    finally
    {
      closed = true;
    }
  }
  
  public int read()
  {
    if (closed) {
      throw new IOException("Attempted read from closed stream.");
    }
    if (pos >= contentLength) {
      return -1;
    }
    int i = in.read();
    if (i == -1)
    {
      if (pos < contentLength) {
        throw new ConnectionClosedException("Premature end of Content-Length delimited message body (expected: " + contentLength + "; received: " + pos);
      }
    }
    else {
      pos += 1L;
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (closed) {
      throw new IOException("Attempted read from closed stream.");
    }
    if (pos >= contentLength) {
      return -1;
    }
    int i = paramInt2;
    if (pos + paramInt2 > contentLength) {
      i = (int)(contentLength - pos);
    }
    paramInt1 = in.read(paramArrayOfByte, paramInt1, i);
    if ((paramInt1 == -1) && (pos < contentLength)) {
      throw new ConnectionClosedException("Premature end of Content-Length delimited message body (expected: " + contentLength + "; received: " + pos);
    }
    if (paramInt1 > 0) {
      pos += paramInt1;
    }
    return paramInt1;
  }
  
  public long skip(long paramLong)
  {
    if (paramLong <= 0L) {
      return 0L;
    }
    byte[] arrayOfByte = new byte['ࠀ'];
    paramLong = Math.min(paramLong, contentLength - pos);
    long l = 0L;
    while (paramLong > 0L)
    {
      int i = read(arrayOfByte, 0, (int)Math.min(2048L, paramLong));
      if (i == -1) {
        break;
      }
      l += i;
      paramLong -= i;
    }
    return l;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.io.ContentLengthInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */