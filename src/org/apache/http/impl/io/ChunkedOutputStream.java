package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.SessionOutputBuffer;

@NotThreadSafe
public class ChunkedOutputStream
  extends OutputStream
{
  private final byte[] cache;
  private int cachePosition = 0;
  private boolean closed = false;
  private final SessionOutputBuffer out;
  private boolean wroteLastChunk = false;
  
  public ChunkedOutputStream(int paramInt, SessionOutputBuffer paramSessionOutputBuffer)
  {
    cache = new byte[paramInt];
    out = paramSessionOutputBuffer;
  }
  
  @Deprecated
  public ChunkedOutputStream(SessionOutputBuffer paramSessionOutputBuffer)
  {
    this(2048, paramSessionOutputBuffer);
  }
  
  @Deprecated
  public ChunkedOutputStream(SessionOutputBuffer paramSessionOutputBuffer, int paramInt)
  {
    this(paramInt, paramSessionOutputBuffer);
  }
  
  public void close()
  {
    if (!closed)
    {
      closed = true;
      finish();
      out.flush();
    }
  }
  
  public void finish()
  {
    if (!wroteLastChunk)
    {
      flushCache();
      writeClosingChunk();
      wroteLastChunk = true;
    }
  }
  
  public void flush()
  {
    flushCache();
    out.flush();
  }
  
  protected void flushCache()
  {
    if (cachePosition > 0)
    {
      out.writeLine(Integer.toHexString(cachePosition));
      out.write(cache, 0, cachePosition);
      out.writeLine("");
      cachePosition = 0;
    }
  }
  
  protected void flushCacheWithAppend(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    out.writeLine(Integer.toHexString(cachePosition + paramInt2));
    out.write(cache, 0, cachePosition);
    out.write(paramArrayOfByte, paramInt1, paramInt2);
    out.writeLine("");
    cachePosition = 0;
  }
  
  public void write(int paramInt)
  {
    if (closed) {
      throw new IOException("Attempted write to closed stream.");
    }
    cache[cachePosition] = ((byte)paramInt);
    cachePosition += 1;
    if (cachePosition == cache.length) {
      flushCache();
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
    if (paramInt2 >= cache.length - cachePosition)
    {
      flushCacheWithAppend(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    System.arraycopy(paramArrayOfByte, paramInt1, cache, cachePosition, paramInt2);
    cachePosition += paramInt2;
  }
  
  protected void writeClosingChunk()
  {
    out.writeLine("0");
    out.writeLine("");
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.io.ChunkedOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */