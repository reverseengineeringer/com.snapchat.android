package com.facebook.crypto.streams;

import com.facebook.crypto.mac.NativeMac;
import java.io.IOException;
import java.io.InputStream;

public class NativeMacLayeredInputStream
  extends InputStream
{
  private static final String MAC_DOES_NOT_MATCH = "Mac does not match";
  private final TailInputStream mInputDelegate;
  private final NativeMac mMac;
  private boolean mMacChecked = false;
  
  public NativeMacLayeredInputStream(NativeMac paramNativeMac, InputStream paramInputStream)
  {
    mMac = paramNativeMac;
    mInputDelegate = new TailInputStream(paramInputStream, paramNativeMac.getMacLength());
  }
  
  private boolean constantTimeEquals(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1.length != paramArrayOfByte2.length) {}
    int j;
    do
    {
      return false;
      int i = 0;
      j = 0;
      while (i < paramArrayOfByte1.length)
      {
        j |= paramArrayOfByte1[i] ^ paramArrayOfByte2[i];
        i += 1;
      }
    } while (j != 0);
    return true;
  }
  
  private void ensureMacValid()
  {
    if (mMacChecked) {
      return;
    }
    mMacChecked = true;
    try
    {
      byte[] arrayOfByte = mMac.doFinal();
      if (!constantTimeEquals(mInputDelegate.getTail(), arrayOfByte)) {
        throw new IOException("Mac does not match");
      }
    }
    finally
    {
      mMac.destroy();
    }
    mMac.destroy();
  }
  
  public int available()
  {
    return mInputDelegate.available();
  }
  
  public void close()
  {
    try
    {
      ensureMacValid();
      return;
    }
    finally
    {
      mInputDelegate.close();
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
    byte[] arrayOfByte = new byte[1];
    for (int i = read(arrayOfByte, 0, 1); i == 0; i = read(arrayOfByte, 0, 1)) {}
    if (i == -1) {
      return -1;
    }
    return arrayOfByte[0] & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt2 = mInputDelegate.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt2 == -1)
    {
      ensureMacValid();
      return -1;
    }
    if (paramInt2 > 0) {
      mMac.update(paramArrayOfByte, paramInt1, paramInt2);
    }
    return paramInt2;
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
 * Qualified Name:     com.facebook.crypto.streams.NativeMacLayeredInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */