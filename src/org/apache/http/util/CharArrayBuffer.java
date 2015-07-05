package org.apache.http.util;

import java.io.Serializable;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.protocol.HTTP;

@NotThreadSafe
public final class CharArrayBuffer
  implements Serializable
{
  private static final long serialVersionUID = -6208952725094867135L;
  private char[] buffer;
  private int len;
  
  public CharArrayBuffer(int paramInt)
  {
    Args.notNegative(paramInt, "Buffer capacity");
    buffer = new char[paramInt];
  }
  
  private void expand(int paramInt)
  {
    char[] arrayOfChar = new char[Math.max(buffer.length << 1, paramInt)];
    System.arraycopy(buffer, 0, arrayOfChar, 0, len);
    buffer = arrayOfChar;
  }
  
  public final void append(char paramChar)
  {
    int i = len + 1;
    if (i > buffer.length) {
      expand(i);
    }
    buffer[len] = paramChar;
    len = i;
  }
  
  public final void append(Object paramObject)
  {
    append(String.valueOf(paramObject));
  }
  
  public final void append(String paramString)
  {
    if (paramString != null) {}
    for (;;)
    {
      int i = paramString.length();
      int j = len + i;
      if (j > buffer.length) {
        expand(j);
      }
      paramString.getChars(0, i, buffer, len);
      len = j;
      return;
      paramString = "null";
    }
  }
  
  public final void append(ByteArrayBuffer paramByteArrayBuffer, int paramInt1, int paramInt2)
  {
    if (paramByteArrayBuffer == null) {
      return;
    }
    append(paramByteArrayBuffer.buffer(), paramInt1, paramInt2);
  }
  
  public final void append(CharArrayBuffer paramCharArrayBuffer)
  {
    if (paramCharArrayBuffer == null) {
      return;
    }
    append(buffer, 0, len);
  }
  
  public final void append(CharArrayBuffer paramCharArrayBuffer, int paramInt1, int paramInt2)
  {
    if (paramCharArrayBuffer == null) {
      return;
    }
    append(buffer, paramInt1, paramInt2);
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
      buffer[paramInt2] = ((char)(paramArrayOfByte[i] & 0xFF));
      i += 1;
      paramInt2 += 1;
    }
    len = k;
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
    int i = len + paramInt2;
    if (i > buffer.length) {
      expand(i);
    }
    System.arraycopy(paramArrayOfChar, paramInt1, buffer, len, paramInt2);
    len = i;
  }
  
  public final char[] buffer()
  {
    return buffer;
  }
  
  public final int capacity()
  {
    return buffer.length;
  }
  
  public final char charAt(int paramInt)
  {
    return buffer[paramInt];
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
  
  public final int indexOf(int paramInt)
  {
    return indexOf(paramInt, 0, len);
  }
  
  public final int indexOf(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt2;
    if (paramInt2 < 0) {
      i = 0;
    }
    paramInt2 = paramInt3;
    if (paramInt3 > len) {
      paramInt2 = len;
    }
    if (i > paramInt2) {}
    for (;;)
    {
      return -1;
      while (i < paramInt2)
      {
        if (buffer[i] == paramInt1) {
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
  
  public final String substring(int paramInt1, int paramInt2)
  {
    return new String(buffer, paramInt1, paramInt2 - paramInt1);
  }
  
  public final String substringTrimmed(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      throw new IndexOutOfBoundsException("Negative beginIndex: " + paramInt1);
    }
    if (paramInt2 > len) {
      throw new IndexOutOfBoundsException("endIndex: " + paramInt2 + " > length: " + len);
    }
    int i = paramInt1;
    if (paramInt1 > paramInt2) {
      throw new IndexOutOfBoundsException("beginIndex: " + paramInt1 + " > endIndex: " + paramInt2);
    }
    for (;;)
    {
      paramInt1 = paramInt2;
      if (i >= paramInt2) {
        break;
      }
      paramInt1 = paramInt2;
      if (!HTTP.isWhitespace(buffer[i])) {
        break;
      }
      i += 1;
    }
    while ((paramInt1 > i) && (HTTP.isWhitespace(buffer[(paramInt1 - 1)]))) {
      paramInt1 -= 1;
    }
    return new String(buffer, i, paramInt1 - i);
  }
  
  public final char[] toCharArray()
  {
    char[] arrayOfChar = new char[len];
    if (len > 0) {
      System.arraycopy(buffer, 0, arrayOfChar, 0, len);
    }
    return arrayOfChar;
  }
  
  public final String toString()
  {
    return new String(buffer, 0, len);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.util.CharArrayBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */