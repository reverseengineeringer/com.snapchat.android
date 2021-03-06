package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;

@NotThreadSafe
public class IdentityOutputStream
  extends OutputStream
{
  private boolean closed = false;
  private final SessionOutputBuffer out;
  
  public IdentityOutputStream(SessionOutputBuffer paramSessionOutputBuffer)
  {
    out = ((SessionOutputBuffer)Args.notNull(paramSessionOutputBuffer, "Session output buffer"));
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
    out.write(paramInt);
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
    out.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.io.IdentityOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */