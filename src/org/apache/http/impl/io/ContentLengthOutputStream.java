package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;

@NotThreadSafe
public class ContentLengthOutputStream
  extends OutputStream
{
  private boolean closed = false;
  private final long contentLength;
  private final SessionOutputBuffer out;
  private long total = 0L;
  
  public ContentLengthOutputStream(SessionOutputBuffer paramSessionOutputBuffer, long paramLong)
  {
    out = ((SessionOutputBuffer)Args.notNull(paramSessionOutputBuffer, "Session output buffer"));
    contentLength = Args.notNegative(paramLong, "Content length");
  }
  
  public void close()
  {
    if (!closed)
    {
      closed = true;
      out.flush();
    }
  }
  
  public void flush()
  {
    out.flush();
  }
  
  public void write(int paramInt)
  {
    if (closed) {
      throw new IOException("Attempted write to closed stream.");
    }
    if (total < contentLength)
    {
      out.write(paramInt);
      total += 1L;
    }
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (closed) {
      throw new IOException("Attempted write to closed stream.");
    }
    if (total < contentLength)
    {
      long l = contentLength - total;
      int i = paramInt2;
      if (paramInt2 > l) {
        i = (int)l;
      }
      out.write(paramArrayOfByte, paramInt1, i);
      total += i;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.io.ContentLengthOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */