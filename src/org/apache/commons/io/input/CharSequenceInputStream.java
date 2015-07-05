package org.apache.commons.io.input;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

public class CharSequenceInputStream
  extends InputStream
{
  private final ByteBuffer bbuf;
  private final CharBuffer cbuf;
  private final CharsetEncoder encoder;
  private int mark;
  
  public CharSequenceInputStream(CharSequence paramCharSequence, String paramString)
  {
    this(paramCharSequence, paramString, 2048);
  }
  
  public CharSequenceInputStream(CharSequence paramCharSequence, String paramString, int paramInt)
  {
    this(paramCharSequence, Charset.forName(paramString), paramInt);
  }
  
  public CharSequenceInputStream(CharSequence paramCharSequence, Charset paramCharset)
  {
    this(paramCharSequence, paramCharset, 2048);
  }
  
  public CharSequenceInputStream(CharSequence paramCharSequence, Charset paramCharset, int paramInt)
  {
    encoder = paramCharset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
    bbuf = ByteBuffer.allocate(paramInt);
    bbuf.flip();
    cbuf = CharBuffer.wrap(paramCharSequence);
    mark = -1;
  }
  
  private void fillBuffer()
  {
    bbuf.compact();
    CoderResult localCoderResult = encoder.encode(cbuf, bbuf, true);
    if (localCoderResult.isError()) {
      localCoderResult.throwException();
    }
    bbuf.flip();
  }
  
  public int available()
  {
    return cbuf.remaining();
  }
  
  public void close() {}
  
  public void mark(int paramInt)
  {
    try
    {
      mark = cbuf.position();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean markSupported()
  {
    return true;
  }
  
  public int read()
  {
    do
    {
      if (bbuf.hasRemaining()) {
        return bbuf.get() & 0xFF;
      }
      fillBuffer();
    } while ((bbuf.hasRemaining()) || (cbuf.hasRemaining()));
    return -1;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int m = 0;
    int i = 0;
    if (paramArrayOfByte == null) {
      throw new NullPointerException("Byte array is null");
    }
    if ((paramInt2 < 0) || (paramInt1 + paramInt2 > paramArrayOfByte.length)) {
      throw new IndexOutOfBoundsException("Array Size=" + paramArrayOfByte.length + ", offset=" + paramInt1 + ", length=" + paramInt2);
    }
    if (paramInt2 == 0) {
      paramInt1 = i;
    }
    label211:
    do
    {
      do
      {
        return paramInt1;
        i = m;
        int j = paramInt1;
        int k = paramInt2;
        if (!bbuf.hasRemaining())
        {
          i = m;
          j = paramInt1;
          k = paramInt2;
          if (!cbuf.hasRemaining()) {
            return -1;
          }
        }
        do
        {
          for (;;)
          {
            if (k <= 0) {
              break label211;
            }
            if (!bbuf.hasRemaining()) {
              break;
            }
            paramInt1 = Math.min(bbuf.remaining(), k);
            bbuf.get(paramArrayOfByte, j, paramInt1);
            j += paramInt1;
            k -= paramInt1;
            i += paramInt1;
          }
          fillBuffer();
        } while ((bbuf.hasRemaining()) || (cbuf.hasRemaining()));
        paramInt1 = i;
      } while (i != 0);
      paramInt1 = i;
    } while (cbuf.hasRemaining());
    return -1;
  }
  
  public void reset()
  {
    try
    {
      if (mark != -1)
      {
        cbuf.position(mark);
        mark = -1;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public long skip(long paramLong)
  {
    int i = 0;
    while ((paramLong > 0L) && (cbuf.hasRemaining()))
    {
      cbuf.get();
      paramLong -= 1L;
      i += 1;
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.input.CharSequenceInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */