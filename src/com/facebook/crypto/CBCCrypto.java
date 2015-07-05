package com.facebook.crypto;

import com.facebook.crypto.cipher.NativeCBCCipher;
import com.facebook.crypto.streams.NativeCBCCipherInputStream;
import com.facebook.crypto.util.NativeCryptoLibrary;
import com.facebook.crypto.util.SystemNativeCryptoLibrary;
import java.io.InputStream;

public enum CBCCrypto
{
  INSTANCE;
  
  private final NativeCryptoLibrary mNativeCryptoLibrary = new SystemNativeCryptoLibrary();
  
  private CBCCrypto() {}
  
  public static CBCCrypto getInstance()
  {
    return INSTANCE;
  }
  
  public final InputStream getCipherInputStream(InputStream paramInputStream, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    NativeCBCCipher localNativeCBCCipher = new NativeCBCCipher(mNativeCryptoLibrary);
    localNativeCBCCipher.encryptInit(paramArrayOfByte1, paramArrayOfByte2);
    return new NativeCBCCipherInputStream(paramInputStream, localNativeCBCCipher);
  }
  
  public final InputStream getDecipherInputStream(InputStream paramInputStream, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    NativeCBCCipher localNativeCBCCipher = new NativeCBCCipher(mNativeCryptoLibrary);
    localNativeCBCCipher.decryptInit(paramArrayOfByte1, paramArrayOfByte2);
    return new NativeCBCCipherInputStream(paramInputStream, localNativeCBCCipher);
  }
  
  public final boolean isAvailable()
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
 * Qualified Name:     com.facebook.crypto.CBCCrypto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */