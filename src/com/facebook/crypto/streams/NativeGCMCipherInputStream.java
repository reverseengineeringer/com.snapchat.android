package com.facebook.crypto.streams;

import com.facebook.crypto.cipher.NativeGCMCipher;
import java.io.InputStream;

public class NativeGCMCipherInputStream
  extends InputStream
{
  private static final int UPDATE_BUFFER_SIZE = 256;
  private final NativeGCMCipher mCipher;
  private final TailInputStream mCipherDelegate;
  private boolean mTagChecked = false;
  private final byte[] mUpdateBuffer;
  
  public NativeGCMCipherInputStream(InputStream paramInputStream, NativeGCMCipher paramNativeGCMCipher)
  {
    mCipherDelegate = new TailInputStream(paramInputStream, 16);
    mCipher = paramNativeGCMCipher;
    mUpdateBuffer = new byte[mCipher.getCipherBlockSize() + 256];
  }
  
  private void ensureTagValid()
  {
    if (mTagChecked) {
      return;
    }
    mTagChecked = true;
    try
    {
      mCipher.decryptFinal(mCipherDelegate.getTail(), 16);
      return;
    }
    finally
    {
      mCipher.destroy();
    }
  }
  
  public int available()
  {
    return mCipherDelegate.available();
  }
  
  public void close()
  {
    try
    {
      ensureTagValid();
      return;
    }
    finally
    {
      mCipherDelegate.close();
    }
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
    throw new UnsupportedOperationException();
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte.length < paramInt1 + paramInt2) {
      throw new ArrayIndexOutOfBoundsException(paramInt1 + paramInt2);
    }
    paramInt2 = mCipherDelegate.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt2 == -1)
    {
      ensureTagValid();
      return -1;
    }
    int k = paramInt2 / 256;
    int m = paramInt2 % 256;
    int j = 0;
    paramInt2 = paramInt1;
    int i = paramInt1;
    while (j < k)
    {
      int n = mCipher.update(paramArrayOfByte, i, 256, mUpdateBuffer);
      System.arraycopy(mUpdateBuffer, 0, paramArrayOfByte, paramInt2, n);
      i += 256;
      j += 1;
      paramInt2 = n + paramInt2;
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
  
  public void reset()
  {
    try
    {
      throw new UnsupportedOperationException();
    }
    finally {}
  }
  
  public long skip(long paramLong)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     com.facebook.crypto.streams.NativeGCMCipherInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */