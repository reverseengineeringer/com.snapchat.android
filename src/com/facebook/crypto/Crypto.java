package com.facebook.crypto;

import com.facebook.crypto.keychain.KeyChain;
import com.facebook.crypto.mac.NativeMac;
import com.facebook.crypto.streams.FixedSizeByteArrayOutputStream;
import com.facebook.crypto.streams.NativeMacLayeredInputStream;
import com.facebook.crypto.streams.NativeMacLayeredOutputStream;
import com.facebook.crypto.util.Assertions;
import com.facebook.crypto.util.NativeCryptoLibrary;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class Crypto
{
  private final GCMCipherHelper mGCMCipherHelper;
  private final KeyChain mKeyChain;
  private final NativeCryptoLibrary mNativeCryptoLibrary;
  
  public Crypto(KeyChain paramKeyChain, NativeCryptoLibrary paramNativeCryptoLibrary)
  {
    mKeyChain = paramKeyChain;
    mNativeCryptoLibrary = paramNativeCryptoLibrary;
    mGCMCipherHelper = new GCMCipherHelper(mKeyChain, mNativeCryptoLibrary);
  }
  
  private static void computeMacAad(NativeMac paramNativeMac, byte paramByte1, byte paramByte2, byte[] paramArrayOfByte)
  {
    paramNativeMac.update(new byte[] { paramByte1 }, 0, 1);
    paramNativeMac.update(new byte[] { paramByte2 }, 0, 1);
    paramNativeMac.update(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public byte[] decrypt(byte[] paramArrayOfByte, Entity paramEntity)
  {
    byte b1 = paramArrayOfByte[0];
    byte b2 = paramArrayOfByte[1];
    int i = paramArrayOfByte.length;
    paramArrayOfByte = new ByteArrayInputStream(paramArrayOfByte, 2, i);
    paramArrayOfByte = mGCMCipherHelper.getCipherInputStream(paramArrayOfByte, paramEntity, b1, b2);
    paramEntity = new FixedSizeByteArrayOutputStream(i - mGCMCipherHelper.getCipherMetaDataLength());
    byte[] arrayOfByte = new byte['Ѐ'];
    for (;;)
    {
      i = paramArrayOfByte.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      paramEntity.write(arrayOfByte, 0, i);
    }
    paramArrayOfByte.close();
    return paramEntity.getBytes();
  }
  
  public byte[] encrypt(byte[] paramArrayOfByte, Entity paramEntity)
  {
    FixedSizeByteArrayOutputStream localFixedSizeByteArrayOutputStream = new FixedSizeByteArrayOutputStream(paramArrayOfByte.length + mGCMCipherHelper.getCipherMetaDataLength());
    paramEntity = mGCMCipherHelper.getCipherOutputStream(localFixedSizeByteArrayOutputStream, paramEntity);
    paramEntity.write(paramArrayOfByte);
    paramEntity.close();
    return localFixedSizeByteArrayOutputStream.getBytes();
  }
  
  public InputStream getGCMCipherInputStream(InputStream paramInputStream, Entity paramEntity)
  {
    byte b1 = (byte)paramInputStream.read();
    byte b2 = (byte)paramInputStream.read();
    return mGCMCipherHelper.getCipherInputStream(paramInputStream, paramEntity, b1, b2);
  }
  
  public OutputStream getGCMCipherOutputStream(OutputStream paramOutputStream, Entity paramEntity)
  {
    return mGCMCipherHelper.getCipherOutputStream(paramOutputStream, paramEntity);
  }
  
  public InputStream getMacInputStream(InputStream paramInputStream, Entity paramEntity)
  {
    boolean bool2 = false;
    byte b = (byte)paramInputStream.read();
    if (b == 1) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      Assertions.checkArgumentForIO(bool1, "Unexpected mac version " + b);
      int i = (byte)paramInputStream.read();
      bool1 = bool2;
      if (i == 1) {
        bool1 = true;
      }
      Assertions.checkArgumentForIO(bool1, "Unexpected mac ID " + i);
      NativeMac localNativeMac = new NativeMac(mNativeCryptoLibrary);
      byte[] arrayOfByte = mKeyChain.getMacKey();
      localNativeMac.init(arrayOfByte, arrayOfByte.length);
      computeMacAad(localNativeMac, b, (byte)1, paramEntity.getBytes());
      return new NativeMacLayeredInputStream(localNativeMac, paramInputStream);
    }
  }
  
  public OutputStream getMacOutputStream(OutputStream paramOutputStream, Entity paramEntity)
  {
    paramOutputStream.write(1);
    paramOutputStream.write(1);
    NativeMac localNativeMac = new NativeMac(mNativeCryptoLibrary);
    byte[] arrayOfByte = mKeyChain.getMacKey();
    localNativeMac.init(arrayOfByte, arrayOfByte.length);
    computeMacAad(localNativeMac, (byte)1, (byte)1, paramEntity.getBytes());
    return new NativeMacLayeredOutputStream(localNativeMac, paramOutputStream);
  }
  
  public boolean isAvailable()
  {
    try
    {
      mNativeCryptoLibrary.ensureCryptoLoaded();
      return true;
    }
    catch (Throwable localThrowable) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     com.facebook.crypto.Crypto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */