package com.facebook.crypto.streams;

import com.facebook.crypto.cipher.NativeGCMCipher;
import java.io.OutputStream;

public class NativeGCMCipherOutputStream
  extends OutputStream
{
  private static final int UPDATE_BUFFER_SIZE = 256;
  private final NativeGCMCipher mCipher;
  private final OutputStream mCipherDelegate;
  private final byte[] mTag = new byte[16];
  private final byte[] mUpdateBuffer;
  
  public NativeGCMCipherOutputStream(OutputStream paramOutputStream, NativeGCMCipher paramNativeGCMCipher)
  {
    mCipherDelegate = paramOutputStream;
    mCipher = paramNativeGCMCipher;
    mUpdateBuffer = new byte[mCipher.getCipherBlockSize() + 256];
  }
  
  /* Error */
  public void close()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 25	com/facebook/crypto/streams/NativeGCMCipherOutputStream:mCipher	Lcom/facebook/crypto/cipher/NativeGCMCipher;
    //   4: aload_0
    //   5: getfield 21	com/facebook/crypto/streams/NativeGCMCipherOutputStream:mTag	[B
    //   8: aload_0
    //   9: getfield 21	com/facebook/crypto/streams/NativeGCMCipherOutputStream:mTag	[B
    //   12: arraylength
    //   13: invokevirtual 39	com/facebook/crypto/cipher/NativeGCMCipher:encryptFinal	([BI)V
    //   16: aload_0
    //   17: getfield 23	com/facebook/crypto/streams/NativeGCMCipherOutputStream:mCipherDelegate	Ljava/io/OutputStream;
    //   20: aload_0
    //   21: getfield 21	com/facebook/crypto/streams/NativeGCMCipherOutputStream:mTag	[B
    //   24: invokevirtual 43	java/io/OutputStream:write	([B)V
    //   27: aload_0
    //   28: getfield 25	com/facebook/crypto/streams/NativeGCMCipherOutputStream:mCipher	Lcom/facebook/crypto/cipher/NativeGCMCipher;
    //   31: invokevirtual 46	com/facebook/crypto/cipher/NativeGCMCipher:destroy	()V
    //   34: aload_0
    //   35: getfield 23	com/facebook/crypto/streams/NativeGCMCipherOutputStream:mCipherDelegate	Ljava/io/OutputStream;
    //   38: invokevirtual 48	java/io/OutputStream:close	()V
    //   41: return
    //   42: astore_1
    //   43: aload_0
    //   44: getfield 23	com/facebook/crypto/streams/NativeGCMCipherOutputStream:mCipherDelegate	Ljava/io/OutputStream;
    //   47: invokevirtual 48	java/io/OutputStream:close	()V
    //   50: aload_1
    //   51: athrow
    //   52: astore_1
    //   53: aload_0
    //   54: getfield 25	com/facebook/crypto/streams/NativeGCMCipherOutputStream:mCipher	Lcom/facebook/crypto/cipher/NativeGCMCipher;
    //   57: invokevirtual 46	com/facebook/crypto/cipher/NativeGCMCipher:destroy	()V
    //   60: aload_0
    //   61: getfield 23	com/facebook/crypto/streams/NativeGCMCipherOutputStream:mCipherDelegate	Ljava/io/OutputStream;
    //   64: invokevirtual 48	java/io/OutputStream:close	()V
    //   67: aload_1
    //   68: athrow
    //   69: astore_1
    //   70: aload_0
    //   71: getfield 23	com/facebook/crypto/streams/NativeGCMCipherOutputStream:mCipherDelegate	Ljava/io/OutputStream;
    //   74: invokevirtual 48	java/io/OutputStream:close	()V
    //   77: aload_1
    //   78: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	this	NativeGCMCipherOutputStream
    //   42	9	1	localObject1	Object
    //   52	16	1	localObject2	Object
    //   69	9	1	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   27	34	42	finally
    //   0	27	52	finally
    //   53	60	69	finally
  }
  
  public void flush()
  {
    mCipherDelegate.flush();
  }
  
  public void write(int paramInt)
  {
    write(new byte[] { (byte)paramInt }, 0, 1);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte.length < paramInt1 + paramInt2) {
      throw new ArrayIndexOutOfBoundsException(paramInt1 + paramInt2);
    }
    int j = paramInt2 / 256;
    int k = paramInt2 % 256;
    int i = 0;
    paramInt2 = paramInt1;
    paramInt1 = i;
    while (paramInt1 < j)
    {
      i = mCipher.update(paramArrayOfByte, paramInt2, 256, mUpdateBuffer);
      mCipherDelegate.write(mUpdateBuffer, 0, i);
      paramInt2 += 256;
      paramInt1 += 1;
    }
    if (k > 0)
    {
      paramInt1 = mCipher.update(paramArrayOfByte, paramInt2, k, mUpdateBuffer);
      mCipherDelegate.write(mUpdateBuffer, 0, paramInt1);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.crypto.streams.NativeGCMCipherOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */