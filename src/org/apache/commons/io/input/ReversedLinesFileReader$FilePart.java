package org.apache.commons.io.input;

import java.io.RandomAccessFile;

class ReversedLinesFileReader$FilePart
{
  private int currentLastBytePos;
  private final byte[] data;
  private byte[] leftOver;
  private final long no;
  
  private ReversedLinesFileReader$FilePart(ReversedLinesFileReader paramReversedLinesFileReader, long paramLong, int paramInt, byte[] paramArrayOfByte)
  {
    no = paramLong;
    if (paramArrayOfByte != null) {}
    for (int i = paramArrayOfByte.length;; i = 0)
    {
      data = new byte[i + paramInt];
      long l = ReversedLinesFileReader.access$300(paramReversedLinesFileReader);
      if (paramLong <= 0L) {
        break;
      }
      ReversedLinesFileReader.access$400(paramReversedLinesFileReader).seek((paramLong - 1L) * l);
      if (ReversedLinesFileReader.access$400(paramReversedLinesFileReader).read(data, 0, paramInt) == paramInt) {
        break;
      }
      throw new IllegalStateException("Count of requested bytes and actually read bytes don't match");
    }
    if (paramArrayOfByte != null) {
      System.arraycopy(paramArrayOfByte, 0, data, paramInt, paramArrayOfByte.length);
    }
    currentLastBytePos = (data.length - 1);
    leftOver = null;
  }
  
  private void createLeftOver()
  {
    int i = currentLastBytePos + 1;
    if (i > 0)
    {
      leftOver = new byte[i];
      System.arraycopy(data, 0, leftOver, 0, i);
    }
    for (;;)
    {
      currentLastBytePos = -1;
      return;
      leftOver = null;
    }
  }
  
  private int getNewLineMatchByteCount(byte[] paramArrayOfByte, int paramInt)
  {
    int n = 0;
    byte[][] arrayOfByte = ReversedLinesFileReader.access$800(this$0);
    int i1 = arrayOfByte.length;
    int i = 0;
    for (;;)
    {
      int j = n;
      if (i < i1)
      {
        byte[] arrayOfByte1 = arrayOfByte[i];
        j = arrayOfByte1.length - 1;
        int k = 1;
        if (j >= 0)
        {
          int m = paramInt + j - (arrayOfByte1.length - 1);
          if ((m >= 0) && (paramArrayOfByte[m] == arrayOfByte1[j])) {}
          for (m = 1;; m = 0)
          {
            k &= m;
            j -= 1;
            break;
          }
        }
        if (k != 0) {
          j = arrayOfByte1.length;
        }
      }
      else
      {
        return j;
      }
      i += 1;
    }
  }
  
  private String readLine()
  {
    int i;
    int j;
    label16:
    Object localObject;
    if (no == 1L)
    {
      i = 1;
      j = currentLastBytePos;
      if (j < 0) {
        break label214;
      }
      if ((i != 0) || (j >= ReversedLinesFileReader.access$600(this$0))) {
        break label86;
      }
      createLeftOver();
      localObject = null;
    }
    for (;;)
    {
      if ((i == 0) || (leftOver == null)) {
        break label220;
      }
      localObject = new String(leftOver, ReversedLinesFileReader.access$500(this$0));
      leftOver = null;
      return (String)localObject;
      i = 0;
      break;
      label86:
      int k = getNewLineMatchByteCount(data, j);
      if (k > 0)
      {
        int m = j + 1;
        int n = currentLastBytePos - m + 1;
        if (n < 0) {
          throw new IllegalStateException("Unexpected negative line length=" + n);
        }
        localObject = new byte[n];
        System.arraycopy(data, m, localObject, 0, n);
        localObject = new String((byte[])localObject, ReversedLinesFileReader.access$500(this$0));
        currentLastBytePos = (j - k);
      }
      else
      {
        k = j - ReversedLinesFileReader.access$700(this$0);
        j = k;
        if (k >= 0) {
          break label16;
        }
        createLeftOver();
        label214:
        localObject = null;
      }
    }
    label220:
    return (String)localObject;
  }
  
  private FilePart rollOver()
  {
    if (currentLastBytePos >= 0) {
      throw new IllegalStateException("Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos=" + currentLastBytePos);
    }
    if (no > 1L) {
      return new FilePart(this$0, no - 1L, ReversedLinesFileReader.access$300(this$0), leftOver);
    }
    if (leftOver != null) {
      throw new IllegalStateException("Unexpected leftover of the last block: leftOverOfThisFilePart=" + new String(leftOver, ReversedLinesFileReader.access$500(this$0)));
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.input.ReversedLinesFileReader.FilePart
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */