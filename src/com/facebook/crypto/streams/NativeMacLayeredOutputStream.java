package com.facebook.crypto.streams;

import com.facebook.crypto.mac.NativeMac;
import java.io.OutputStream;

public class NativeMacLayeredOutputStream
  extends OutputStream
{
  private final NativeMac mMac;
  private final OutputStream mOutputDelegate;
  
  public NativeMacLayeredOutputStream(NativeMac paramNativeMac, OutputStream paramOutputStream)
  {
    mMac = paramNativeMac;
    mOutputDelegate = paramOutputStream;
  }
  
  /* Error */
  public void close()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 15	com/facebook/crypto/streams/NativeMacLayeredOutputStream:mMac	Lcom/facebook/crypto/mac/NativeMac;
    //   4: invokevirtual 25	com/facebook/crypto/mac/NativeMac:doFinal	()[B
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 17	com/facebook/crypto/streams/NativeMacLayeredOutputStream:mOutputDelegate	Ljava/io/OutputStream;
    //   12: aload_1
    //   13: invokevirtual 29	java/io/OutputStream:write	([B)V
    //   16: aload_0
    //   17: getfield 17	com/facebook/crypto/streams/NativeMacLayeredOutputStream:mOutputDelegate	Ljava/io/OutputStream;
    //   20: invokevirtual 31	java/io/OutputStream:close	()V
    //   23: aload_0
    //   24: getfield 15	com/facebook/crypto/streams/NativeMacLayeredOutputStream:mMac	Lcom/facebook/crypto/mac/NativeMac;
    //   27: invokevirtual 34	com/facebook/crypto/mac/NativeMac:destroy	()V
    //   30: return
    //   31: astore_1
    //   32: aload_0
    //   33: getfield 15	com/facebook/crypto/streams/NativeMacLayeredOutputStream:mMac	Lcom/facebook/crypto/mac/NativeMac;
    //   36: invokevirtual 34	com/facebook/crypto/mac/NativeMac:destroy	()V
    //   39: aload_1
    //   40: athrow
    //   41: astore_1
    //   42: aload_0
    //   43: getfield 17	com/facebook/crypto/streams/NativeMacLayeredOutputStream:mOutputDelegate	Ljava/io/OutputStream;
    //   46: invokevirtual 31	java/io/OutputStream:close	()V
    //   49: aload_0
    //   50: getfield 15	com/facebook/crypto/streams/NativeMacLayeredOutputStream:mMac	Lcom/facebook/crypto/mac/NativeMac;
    //   53: invokevirtual 34	com/facebook/crypto/mac/NativeMac:destroy	()V
    //   56: aload_1
    //   57: athrow
    //   58: astore_1
    //   59: aload_0
    //   60: getfield 15	com/facebook/crypto/streams/NativeMacLayeredOutputStream:mMac	Lcom/facebook/crypto/mac/NativeMac;
    //   63: invokevirtual 34	com/facebook/crypto/mac/NativeMac:destroy	()V
    //   66: aload_1
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	this	NativeMacLayeredOutputStream
    //   7	6	1	arrayOfByte	byte[]
    //   31	9	1	localObject1	Object
    //   41	16	1	localObject2	Object
    //   58	9	1	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   16	23	31	finally
    //   0	16	41	finally
    //   42	49	58	finally
  }
  
  public void flush()
  {
    mOutputDelegate.flush();
  }
  
  public void write(int paramInt)
  {
    mMac.update((byte)paramInt);
    mOutputDelegate.write(paramInt);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    mMac.update(paramArrayOfByte, paramInt1, paramInt2);
    mOutputDelegate.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.facebook.crypto.streams.NativeMacLayeredOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */