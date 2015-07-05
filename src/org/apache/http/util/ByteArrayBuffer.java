package org.apache.http.util;

import java.io.Serializable;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
public final class ByteArrayBuffer
  implements Serializable
{
  private static final long serialVersionUID = 4359112959524048036L;
  private byte[] buffer;
  private int len;
  
  public ByteArrayBuffer(int paramInt)
  {
    Args.notNegative(paramInt, "Buffer capacity");
    buffer = new byte[paramInt];
  }
  
  private void expand(int paramInt)
  {
    byte[] arrayOfByte = new byte[Math.max(buffer.length << 1, paramInt)];
    System.arraycopy(buffer, 0, arrayOfByte, 0, len);
    buffer = arrayOfByte;
  }
  
  public final void append(int paramInt)
  {
    int i = len + 1;
    if (i > buffer.length) {
      expand(i);
    }
    buffer[len] = ((byte)paramInt);
    len = i;
  }
  
  public final void append(CharArrayBuffer paramCharArrayBuffer, int paramInt1, int paramInt2)
  {
    if (paramCharArrayBuffer == null) {
      return;
    }
    append(paramCharArrayBuffer.buffer(), paramInt1, paramInt2);
  }
  
  public final void append(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null) {}
    do
    {
      return;
      if ((paramInt1 < 0) || (paramInt1 > paramArrayOfByte.length) || (paramInt2 < 0) || (paramInt1 + paramInt2 < 0) || (paramInt1 + paramInt2 > paramArrayOfByte.length)) {
        throw new IndexOutOfBoundsException("off: " + paramInt1 + " len: " + paramInt2 + " b.length: " + paramArrayOfByte.length);
      }
    } while (paramInt2 == 0);
    int i = len + paramInt2;
    if (i > buffer.length) {
      expand(i);
    }
    System.arraycopy(paramArrayOfByte, paramInt1, buffer, len, paramInt2);
    len = i;
  }
  
  public final void append(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (paramArrayOfChar == null) {}
    do
    {
      return;
      if ((paramInt1 < 0) || (paramInt1 > paramArrayOfChar.length) || (paramInt2 < 0) || (paramInt1 + paramInt2 < 0) || (paramInt1 + paramInt2 > paramArrayOfChar.length)) {
        throw new IndexOutOfBoundsException("off: " + paramInt1 + " len: " + paramInt2 + " b.length: " + paramArrayOfChar.length);
      }
    } while (paramInt2 == 0);
    int j = len;
    int k = j + paramInt2;
    paramInt2 = j;
    int i = paramInt1;
    if (k > buffer.length)
    {
      expand(k);
      i = paramInt1;
      paramInt2 = j;
    }
    while (paramInt2 < k)
    {
      buffer[paramInt2] = ((byte)paramArrayOfChar[i]);
      i += 1;
      paramInt2 += 1;
    }
    len = k;
  }
  
  public final byte[] buffer()
  {
    return buffer;
  }
  
  public final int byteAt(int paramInt)
  {
    return buffer[paramInt];
  }
  
  public final int capacity()
  {
    return buffer.length;
  }
  
  public final void clear()
  {
    len = 0;
  }
  
  public final void ensureCapacity(int paramInt)
  {
    if (paramInt <= 0) {}
    while (paramInt <= buffer.length - len) {
      return;
    }
    expand(len + paramInt);
  }
  
  public final int indexOf(byte paramByte)
  {
    return indexOf(paramByte, 0, len);
  }
  
  public final int indexOf(byte paramByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    if (paramInt1 < 0) {
      i = 0;
    }
    paramInt1 = paramInt2;
    if (paramInt2 > len) {
      paramInt1 = len;
    }
    if (i > paramInt1) {}
    for (;;)
    {
      return -1;
      while (i < paramInt1)
      {
        if (buffer[i] == paramByte) {
          return i;
        }
        i += 1;
      }
    }
  }
  
  public final boolean isEmpty()
  {
    return len == 0;
  }
  
  public final boolean isFull()
  {
    return len == buffer.length;
  }
  
  public final int length()
  {
    return len;
  }
  
  public final void setLength(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > buffer.length)) {
      throw new IndexOutOfBoundsException("len: " + paramInt + " < 0 or > buffer len: " + buffer.length);
    }
    len = paramInt;
  }
  
  public final byte[] toByteArray()
  {
    byte[] arrayOfByte = new byte[len];
    if (len > 0) {
      System.arraycopy(buffer, 0, arrayOfByte, 0, len);
    }
    return arrayOfByte;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.util.ByteArrayBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */