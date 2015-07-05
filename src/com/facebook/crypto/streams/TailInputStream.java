package com.facebook.crypto.streams;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class TailInputStream
  extends FilterInputStream
{
  private int mCount;
  private boolean mEOF;
  private final byte[] mTail;
  private final int mTailTength;
  
  protected TailInputStream(InputStream paramInputStream, int paramInt)
  {
    super(paramInputStream);
    mTail = new byte[paramInt];
    mTailTength = paramInt;
  }
  
  private int extractTail(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    int j = mTailTength - paramInt2;
    int i = Math.max(0, paramInt1 - j) + paramInt3;
    paramInt1 = Math.min(j, paramInt1);
    if (paramInt1 > 0)
    {
      if (paramInt2 > 0) {
        System.arraycopy(mTail, 0, mTail, paramInt1, paramInt2);
      }
      System.arraycopy(paramArrayOfByte, i, mTail, 0, paramInt1);
    }
    mCount = (paramInt1 + paramInt2);
    return i - paramInt3;
  }
  
  private int readTail(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    int j;
    int k;
    if (paramInt2 >= mCount)
    {
      j = mCount;
      j = in.read(paramArrayOfByte, mCount + paramInt1, paramInt2 - j);
      if (j == -1)
      {
        mEOF = true;
        return -1;
      }
      if (mCount > 0) {
        System.arraycopy(mTail, 0, paramArrayOfByte, paramInt1, mCount);
      }
      k = mCount;
      paramInt2 = in.read(mTail, 0, mTailTength);
      if (paramInt2 != -1) {
        break label228;
      }
      mEOF = true;
      paramInt2 = i;
    }
    label228:
    for (;;)
    {
      return extractTail(paramArrayOfByte, k + j, paramInt2, paramInt1);
      i = mCount - paramInt2;
      System.arraycopy(mTail, 0, paramArrayOfByte, paramInt1, paramInt2);
      System.arraycopy(mTail, paramInt2, mTail, 0, i);
      j = in.read(mTail, i, mTailTength - i);
      if (j == -1)
      {
        System.arraycopy(mTail, 0, mTail, paramInt2, i);
        System.arraycopy(paramArrayOfByte, paramInt1, mTail, 0, paramInt2);
        mEOF = true;
        return -1;
      }
      return extractTail(paramArrayOfByte, paramInt2, j + i, paramInt1);
    }
  }
  
  public byte[] getTail()
  {
    if (mCount != mTailTength) {
      throw new IOException("Not enough tail data");
    }
    return mTail;
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    byte[] arrayOfByte = new byte[1];
    for (int i = read(arrayOfByte, 0, 1); i == 0; i = read(arrayOfByte, 0, 1)) {}
    if (i == -1) {
      return -1;
    }
    return arrayOfByte[0] & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int j = 0;
    int i = 0;
    if (mEOF) {
      i = -1;
    }
    while (paramInt2 == 0) {
      return i;
    }
    for (;;)
    {
      i = j;
      if (j != 0) {
        break;
      }
      j = readTail(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.crypto.streams.TailInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */