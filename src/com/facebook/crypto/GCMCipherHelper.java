package com.facebook.crypto;

import com.facebook.crypto.cipher.NativeGCMCipher;
import com.facebook.crypto.keychain.KeyChain;
import com.facebook.crypto.streams.NativeGCMCipherInputStream;
import com.facebook.crypto.streams.NativeGCMCipherOutputStream;
import com.facebook.crypto.util.Assertions;
import com.facebook.crypto.util.NativeCryptoLibrary;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

class GCMCipherHelper
{
  private final KeyChain mKeyChain;
  private final NativeCryptoLibrary mNativeCryptoLibrary;
  
  public GCMCipherHelper(KeyChain paramKeyChain, NativeCryptoLibrary paramNativeCryptoLibrary)
  {
    mKeyChain = paramKeyChain;
    mNativeCryptoLibrary = paramNativeCryptoLibrary;
  }
  
  public void computeCipherAad(NativeGCMCipher paramNativeGCMCipher, byte paramByte1, byte paramByte2, byte[] paramArrayOfByte)
  {
    paramNativeGCMCipher.updateAad(new byte[] { paramByte1 }, 1);
    paramNativeGCMCipher.updateAad(new byte[] { paramByte2 }, 1);
    paramNativeGCMCipher.updateAad(paramArrayOfByte, paramArrayOfByte.length);
  }
  
  public InputStream getCipherInputStream(InputStream paramInputStream, Entity paramEntity, byte paramByte1, byte paramByte2)
  {
    boolean bool2 = true;
    if (paramByte1 == 1)
    {
      bool1 = true;
      Assertions.checkArgumentForIO(bool1, "Unexpected crypto version " + paramByte1);
      if (paramByte2 != 1) {
        break label116;
      }
    }
    byte[] arrayOfByte;
    label116:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      Assertions.checkArgumentForIO(bool1, "Unexpected cipher ID " + paramByte2);
      arrayOfByte = new byte[12];
      int i = paramInputStream.read(arrayOfByte);
      if (i == 12) {
        break label122;
      }
      throw new IOException("Not enough bytes for iv: " + i);
      bool1 = false;
      break;
    }
    label122:
    NativeGCMCipher localNativeGCMCipher = new NativeGCMCipher(mNativeCryptoLibrary);
    localNativeGCMCipher.decryptInit(mKeyChain.getCipherKey(), arrayOfByte);
    computeCipherAad(localNativeGCMCipher, paramByte1, paramByte2, paramEntity.getBytes());
    return new NativeGCMCipherInputStream(paramInputStream, localNativeGCMCipher);
  }
  
  public int getCipherMetaDataLength()
  {
    return 30;
  }
  
  public OutputStream getCipherOutputStream(OutputStream paramOutputStream, Entity paramEntity)
  {
    paramOutputStream.write(1);
    paramOutputStream.write(1);
    byte[] arrayOfByte = mKeyChain.getNewIV();
    NativeGCMCipher localNativeGCMCipher = new NativeGCMCipher(mNativeCryptoLibrary);
    localNativeGCMCipher.encryptInit(mKeyChain.getCipherKey(), arrayOfByte);
    paramOutputStream.write(arrayOfByte);
    computeCipherAad(localNativeGCMCipher, (byte)1, (byte)1, paramEntity.getBytes());
    return new NativeGCMCipherOutputStream(paramOutputStream, localNativeGCMCipher);
  }
}

/* Location:
 * Qualified Name:     com.facebook.crypto.GCMCipherHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */