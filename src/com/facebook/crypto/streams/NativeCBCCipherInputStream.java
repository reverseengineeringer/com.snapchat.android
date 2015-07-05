package com.facebook.crypto.streams;

import com.facebook.crypto.cipher.NativeCBCCipher;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class NativeCBCCipherInputStream
  extends FilterInputStream
{
  private static final int UPDATE_BUFFER_SIZE = 1024;
  private final NativeCBCCipher mCipher;
  private boolean mDidFinal = false;
  private final byte[] mUpdateBuffer;
  private int mUpdateRemainder;
  private int mUpdateRemainderOffset;
  
  public NativeCBCCipherInputStream(InputStream paramInputStream, NativeCBCCipher paramNativeCBCCipher)
  {
    super(paramInputStream);
    mCipher = paramNativeCBCCipher;
    mUpdateBuffer = new byte[mCipher.getCipherBlockSize() + 1024];
    mUpdateRemainder = 0;
  }
  
  public void mark(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    byte[] arrayOfByte = new byte[1];
    if (read(arrayOfByte, 0, 1) == 1) {
      throw new IOException();
    }
    return arrayOfByte[0];
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    int i = read(paramArrayOfByte, 0, paramArrayOfByte.length);
    if (i == -1) {
      return -1;
    }
    int j = i;
    while ((j != -1) && (i < paramArrayOfByte.length))
    {
      j = read(paramArrayOfByte, i, paramArrayOfByte.length - i);
      i += j;
    }
    if (j != -1) {
      return i;
    }
    return i + 1;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = -1;
    if (mUpdateRemainder > 0)
    {
      i = Math.min(paramInt2, mUpdateRemainder);
      System.arraycopy(mUpdateBuffer, mUpdateRemainderOffset, paramArrayOfByte, paramInt1, i);
      mUpdateRemainder -= i;
      mUpdateRemainderOffset += i;
    }
    while (mDidFinal) {
      return i;
    }
    try
    {
      i = in.read(paramArrayOfByte, paramInt1, Math.min(paramInt2, 1024));
      if (i == -1) {
        try
        {
          i = mCipher.doFinal(mUpdateBuffer);
          paramInt2 = Math.min(paramInt2, i);
          System.arraycopy(mUpdateBuffer, 0, paramArrayOfByte, paramInt1, paramInt2);
          mDidFinal = true;
          mUpdateRemainder = (i - paramInt2);
          mUpdateRemainderOffset = paramInt2;
          return paramInt2;
        }
        finally
        {
          mCipher.destroy();
        }
      }
      int m = i / 1024;
      int n = i % 1024;
      int k = 0;
      i = paramInt1;
      int j = paramInt1;
      while (k < m)
      {
        int i1 = mCipher.update(paramArrayOfByte, j, 1024, mUpdateBuffer);
        System.arraycopy(mUpdateBuffer, 0, paramArrayOfByte, i, i1);
        j += 1024;
        k += 1;
        i = i1 + i;
      }
      k = i;
      if (n > 0)
      {
        j = mCipher.update(paramArrayOfByte, j, n, mUpdateBuffer);
        paramInt2 = Math.min(paramInt2 - (i - paramInt1), j);
        System.arraycopy(mUpdateBuffer, 0, paramArrayOfByte, i, paramInt2);
        k = i + paramInt2;
        mUpdateRemainder = (j - paramInt2);
        mUpdateRemainderOffset = paramInt2;
      }
      return k - paramInt1;
    }
    catch (IOException paramArrayOfByte) {}
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.facebook.crypto.streams.NativeCBCCipherInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */