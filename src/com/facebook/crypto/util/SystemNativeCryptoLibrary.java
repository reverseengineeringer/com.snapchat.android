package com.facebook.crypto.util;

import com.facebook.crypto.exception.CryptoInitializationException;
import java.util.ArrayList;

public class SystemNativeCryptoLibrary
  implements NativeCryptoLibrary
{
  private static final ArrayList<String> LIBS = new ArrayList() {};
  private boolean mLibrariesLoaded = false;
  private volatile UnsatisfiedLinkError mLinkError = null;
  private boolean mLoadLibraries = true;
  
  /* Error */
  private boolean loadLibraries()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 27	com/facebook/crypto/util/SystemNativeCryptoLibrary:mLoadLibraries	Z
    //   6: ifne +12 -> 18
    //   9: aload_0
    //   10: getfield 29	com/facebook/crypto/util/SystemNativeCryptoLibrary:mLibrariesLoaded	Z
    //   13: istore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: iload_1
    //   17: ireturn
    //   18: getstatic 23	com/facebook/crypto/util/SystemNativeCryptoLibrary:LIBS	Ljava/util/ArrayList;
    //   21: invokevirtual 41	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   24: astore_2
    //   25: aload_2
    //   26: invokeinterface 46 1 0
    //   31: ifeq +42 -> 73
    //   34: aload_2
    //   35: invokeinterface 50 1 0
    //   40: checkcast 52	java/lang/String
    //   43: invokestatic 58	java/lang/System:loadLibrary	(Ljava/lang/String;)V
    //   46: goto -21 -> 25
    //   49: astore_2
    //   50: aload_0
    //   51: aload_2
    //   52: putfield 31	com/facebook/crypto/util/SystemNativeCryptoLibrary:mLinkError	Ljava/lang/UnsatisfiedLinkError;
    //   55: aload_0
    //   56: iconst_0
    //   57: putfield 29	com/facebook/crypto/util/SystemNativeCryptoLibrary:mLibrariesLoaded	Z
    //   60: aload_0
    //   61: iconst_0
    //   62: putfield 27	com/facebook/crypto/util/SystemNativeCryptoLibrary:mLoadLibraries	Z
    //   65: aload_0
    //   66: getfield 29	com/facebook/crypto/util/SystemNativeCryptoLibrary:mLibrariesLoaded	Z
    //   69: istore_1
    //   70: goto -56 -> 14
    //   73: aload_0
    //   74: iconst_1
    //   75: putfield 29	com/facebook/crypto/util/SystemNativeCryptoLibrary:mLibrariesLoaded	Z
    //   78: goto -18 -> 60
    //   81: astore_2
    //   82: aload_0
    //   83: monitorexit
    //   84: aload_2
    //   85: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	this	SystemNativeCryptoLibrary
    //   13	57	1	bool	boolean
    //   24	11	2	localIterator	java.util.Iterator
    //   49	3	2	localUnsatisfiedLinkError	UnsatisfiedLinkError
    //   81	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   18	25	49	java/lang/UnsatisfiedLinkError
    //   25	46	49	java/lang/UnsatisfiedLinkError
    //   73	78	49	java/lang/UnsatisfiedLinkError
    //   2	14	81	finally
    //   18	25	81	finally
    //   25	46	81	finally
    //   50	60	81	finally
    //   60	70	81	finally
    //   73	78	81	finally
  }
  
  public void ensureCryptoLoaded()
  {
    try
    {
      if (!loadLibraries()) {
        throw new CryptoInitializationException(mLinkError);
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.facebook.crypto.util.SystemNativeCryptoLibrary
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */