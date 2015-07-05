package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.TruncatedChunkException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
public class ChunkedInputStream
  extends InputStream
{
  private static final int BUFFER_SIZE = 2048;
  private static final int CHUNK_CRLF = 3;
  private static final int CHUNK_DATA = 2;
  private static final int CHUNK_LEN = 1;
  private final CharArrayBuffer buffer;
  private int chunkSize;
  private boolean closed = false;
  private boolean eof = false;
  private Header[] footers = new Header[0];
  private final SessionInputBuffer in;
  private int pos;
  private int state;
  
  public ChunkedInputStream(SessionInputBuffer paramSessionInputBuffer)
  {
    in = ((SessionInputBuffer)Args.notNull(paramSessionInputBuffer, "Session input buffer"));
    pos = 0;
    buffer = new CharArrayBuffer(16);
    state = 1;
  }
  
  private int getChunkSize()
  {
    switch (state)
    {
    case 2: 
    default: 
      throw new IllegalStateException("Inconsistent codec state");
    case 3: 
      buffer.clear();
      if (in.readLine(buffer) != -1) {
        break;
      }
    }
    do
    {
      return 0;
      if (!buffer.isEmpty()) {
        throw new MalformedChunkCodingException("Unexpected content at the end of chunk");
      }
      state = 1;
      buffer.clear();
    } while (in.readLine(buffer) == -1);
    int j = buffer.indexOf(59);
    int i = j;
    if (j < 0) {
      i = buffer.length();
    }
    try
    {
      i = Integer.parseInt(buffer.substringTrimmed(0, i), 16);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new MalformedChunkCodingException("Bad chunk header");
    }
  }
  
  private void nextChunk()
  {
    chunkSize = getChunkSize();
    if (chunkSize < 0) {
      throw new MalformedChunkCodingException("Negative chunk size");
    }
    state = 2;
    pos = 0;
    if (chunkSize == 0)
    {
      eof = true;
      parseTrailerHeaders();
    }
  }
  
  private void parseTrailerHeaders()
  {
    try
    {
      footers = AbstractMessageParser.parseHeaders(in, -1, -1, null);
      return;
    }
    catch (HttpException localHttpException)
    {
      MalformedChunkCodingException localMalformedChunkCodingException = new MalformedChunkCodingException("Invalid footer: " + localHttpException.getMessage());
      localMalformedChunkCodingException.initCause(localHttpException);
      throw localMalformedChunkCodingException;
    }
  }
  
  public int available()
  {
    if ((in instanceof BufferInfo)) {
      return Math.min(((BufferInfo)in).length(), chunkSize - pos);
    }
    return 0;
  }
  
  public void close()
  {
    if (!closed) {}
    try
    {
      if (!eof)
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
      eof = true;
      closed = true;
    }
  }
  
  public Header[] getFooters()
  {
    return (Header[])footers.clone();
  }
  
  public int read()
  {
    if (closed) {
      throw new IOException("Attempted read from closed stream.");
    }
    if (eof) {}
    do
    {
      return -1;
      if (state == 2) {
        break;
      }
      nextChunk();
    } while (eof);
    int i = in.read();
    if (i != -1)
    {
      pos += 1;
      if (pos >= chunkSize) {
        state = 3;
      }
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
    if (eof) {}
    do
    {
      return -1;
      if (state == 2) {
        break;
      }
      nextChunk();
    } while (eof);
    paramInt1 = in.read(paramArrayOfByte, paramInt1, Math.min(paramInt2, chunkSize - pos));
    if (paramInt1 != -1)
    {
      pos += paramInt1;
      if (pos >= chunkSize) {
        state = 3;
      }
      return paramInt1;
    }
    eof = true;
    throw new TruncatedChunkException("Truncated chunk ( expected size: " + chunkSize + "; actual size: " + pos + ")");
  }
}

/* Location:
 * Qualified Name:     org.apache.http.impl.io.ChunkedInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */