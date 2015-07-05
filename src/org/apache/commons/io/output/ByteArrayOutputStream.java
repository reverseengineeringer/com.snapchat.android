package org.apache.commons.io.output;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.input.ClosedInputStream;

public class ByteArrayOutputStream
  extends OutputStream
{
  private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
  private final List<byte[]> buffers = new ArrayList();
  private int count;
  private byte[] currentBuffer;
  private int currentBufferIndex;
  private int filledBufferSum;
  
  public ByteArrayOutputStream()
  {
    this(1024);
  }
  
  public ByteArrayOutputStream(int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("Negative initial size: " + paramInt);
    }
    try
    {
      needNewBuffer(paramInt);
      return;
    }
    finally {}
  }
  
  private void needNewBuffer(int paramInt)
  {
    if (currentBufferIndex < buffers.size() - 1)
    {
      filledBufferSum += currentBuffer.length;
      currentBufferIndex += 1;
      currentBuffer = ((byte[])buffers.get(currentBufferIndex));
      return;
    }
    if (currentBuffer == null) {}
    for (filledBufferSum = 0;; filledBufferSum += currentBuffer.length)
    {
      currentBufferIndex += 1;
      currentBuffer = new byte[paramInt];
      buffers.add(currentBuffer);
      return;
      paramInt = Math.max(currentBuffer.length << 1, paramInt - filledBufferSum);
    }
  }
  
  private InputStream toBufferedInputStream()
  {
    int i = count;
    if (i == 0) {
      return new ClosedInputStream();
    }
    ArrayList localArrayList = new ArrayList(buffers.size());
    Iterator localIterator = buffers.iterator();
    for (;;)
    {
      if (localIterator.hasNext())
      {
        byte[] arrayOfByte = (byte[])localIterator.next();
        int j = Math.min(arrayOfByte.length, i);
        localArrayList.add(new ByteArrayInputStream(arrayOfByte, 0, j));
        i -= j;
        if (i != 0) {}
      }
      else
      {
        return new SequenceInputStream(Collections.enumeration(localArrayList));
      }
    }
  }
  
  public static InputStream toBufferedInputStream(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    localByteArrayOutputStream.write(paramInputStream);
    return localByteArrayOutputStream.toBufferedInputStream();
  }
  
  public void close() {}
  
  public void reset()
  {
    try
    {
      count = 0;
      filledBufferSum = 0;
      currentBufferIndex = 0;
      currentBuffer = ((byte[])buffers.get(currentBufferIndex));
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int size()
  {
    try
    {
      int i = count;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public byte[] toByteArray()
  {
    for (;;)
    {
      try
      {
        int j = count;
        if (j == 0)
        {
          arrayOfByte1 = EMPTY_BYTE_ARRAY;
          return arrayOfByte1;
        }
        byte[] arrayOfByte1 = new byte[j];
        Iterator localIterator = buffers.iterator();
        int i = 0;
        int k;
        if (localIterator.hasNext())
        {
          byte[] arrayOfByte2 = (byte[])localIterator.next();
          k = Math.min(arrayOfByte2.length, j);
          System.arraycopy(arrayOfByte2, 0, arrayOfByte1, i, k);
          j -= k;
          if (j == 0) {}
        }
        else
        {
          i += k;
        }
      }
      finally {}
    }
  }
  
  public String toString()
  {
    return new String(toByteArray());
  }
  
  public String toString(String paramString)
  {
    return new String(toByteArray(), paramString);
  }
  
  public int write(InputStream paramInputStream)
  {
    try
    {
      int j = count - filledBufferSum;
      int i = paramInputStream.read(currentBuffer, j, currentBuffer.length - j);
      int m;
      for (int k = 0; i != -1; k = m)
      {
        m = k + i;
        j += i;
        count = (i + count);
        i = j;
        if (j == currentBuffer.length)
        {
          needNewBuffer(currentBuffer.length);
          i = 0;
        }
        k = paramInputStream.read(currentBuffer, i, currentBuffer.length - i);
        j = i;
        i = k;
      }
      return k;
    }
    finally {}
  }
  
  public void write(int paramInt)
  {
    try
    {
      int j = count - filledBufferSum;
      int i = j;
      if (j == currentBuffer.length)
      {
        needNewBuffer(count + 1);
        i = 0;
      }
      currentBuffer[i] = ((byte)paramInt);
      count += 1;
      return;
    }
    finally {}
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt1 > paramArrayOfByte.length) || (paramInt2 < 0) || (paramInt1 + paramInt2 > paramArrayOfByte.length) || (paramInt1 + paramInt2 < 0)) {
      throw new IndexOutOfBoundsException();
    }
    if (paramInt2 == 0) {
      return;
    }
    try
    {
      int m = count + paramInt2;
      int j = count - filledBufferSum;
      int i = paramInt2;
      while (i > 0)
      {
        int k = Math.min(i, currentBuffer.length - j);
        System.arraycopy(paramArrayOfByte, paramInt1 + paramInt2 - i, currentBuffer, j, k);
        k = i - k;
        i = k;
        if (k > 0)
        {
          needNewBuffer(m);
          j = 0;
          i = k;
        }
      }
      count = m;
      return;
    }
    finally {}
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    for (;;)
    {
      try
      {
        int i = count;
        Iterator localIterator = buffers.iterator();
        if (localIterator.hasNext())
        {
          byte[] arrayOfByte = (byte[])localIterator.next();
          int j = Math.min(arrayOfByte.length, i);
          paramOutputStream.write(arrayOfByte, 0, j);
          i -= j;
          if (i != 0) {}
        }
        else
        {
          return;
        }
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.output.ByteArrayOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */