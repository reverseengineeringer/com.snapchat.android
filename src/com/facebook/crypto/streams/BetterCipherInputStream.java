package com.facebook.crypto.streams;

import java.io.FilterInputStream;
import java.io.InputStream;
import javax.crypto.Cipher;
import javax.crypto.ShortBufferException;

public class BetterCipherInputStream
  extends FilterInputStream
{
  private static final int UPDATE_BUFFER_SIZE = 256;
  private final Cipher mCipher;
  private final byte[] mUpdateBuffer;
  
  public BetterCipherInputStream(InputStream paramInputStream, Cipher paramCipher)
  {
    super(paramInputStream);
    mCipher = paramCipher;
    mUpdateBuffer = new byte['Ā'];
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    j = 0;
    paramInt2 = in.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt2 == -1) {
      return -1;
    }
    int k = paramInt2 / 256;
    int m = paramInt2 % 256;
    paramInt2 = paramInt1;
    int i = paramInt1;
    for (;;)
    {
      if (j < k) {}
      try
      {
        int n = mCipher.update(paramArrayOfByte, i, 256, mUpdateBuffer);
        System.arraycopy(mUpdateBuffer, 0, paramArrayOfByte, paramInt2, n);
        i += 256;
        j += 1;
        paramInt2 = n + paramInt2;
      }
      catch (ShortBufferException paramArrayOfByte)
      {
        for (;;)
        {
          j = paramInt2;
        }
      }
    }
    j = paramInt2;
    if (m > 0)
    {
      i = mCipher.update(paramArrayOfByte, i, m, mUpdateBuffer);
      System.arraycopy(mUpdateBuffer, 0, paramArrayOfByte, paramInt2, i);
      j = paramInt2 + i;
    }
    return j - paramInt1;
  }
}

/* Location:
 * Qualified Name:     com.facebook.crypto.streams.BetterCipherInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */