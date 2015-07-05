package com.snapchat.android.util;

import android.os.Handler;
import android.os.Looper;

public class WaitDoneHandler
  extends Handler
{
  private static final String TAG = "WaitDoneHandler";
  
  public WaitDoneHandler(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  /* Error */
  public boolean waitDone()
  {
    // Byte code:
    //   0: new 21	java/lang/Object
    //   3: dup
    //   4: invokespecial 24	java/lang/Object:<init>	()V
    //   7: astore_1
    //   8: new 6	com/snapchat/android/util/WaitDoneHandler$1
    //   11: dup
    //   12: aload_0
    //   13: aload_1
    //   14: invokespecial 27	com/snapchat/android/util/WaitDoneHandler$1:<init>	(Lcom/snapchat/android/util/WaitDoneHandler;Ljava/lang/Object;)V
    //   17: astore_2
    //   18: aload_1
    //   19: monitorenter
    //   20: aload_0
    //   21: aload_2
    //   22: invokevirtual 31	com/snapchat/android/util/WaitDoneHandler:post	(Ljava/lang/Runnable;)Z
    //   25: pop
    //   26: aload_1
    //   27: invokevirtual 34	java/lang/Object:wait	()V
    //   30: aload_1
    //   31: monitorexit
    //   32: iconst_1
    //   33: ireturn
    //   34: astore_2
    //   35: ldc 10
    //   37: ldc 36
    //   39: iconst_0
    //   40: anewarray 21	java/lang/Object
    //   43: invokestatic 42	com/snapchat/android/Timber:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   46: aload_1
    //   47: monitorexit
    //   48: iconst_0
    //   49: ireturn
    //   50: astore_2
    //   51: aload_1
    //   52: monitorexit
    //   53: aload_2
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	WaitDoneHandler
    //   7	45	1	localObject1	Object
    //   17	5	2	local1	1
    //   34	1	2	localInterruptedException	InterruptedException
    //   50	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   26	30	34	java/lang/InterruptedException
    //   20	26	50	finally
    //   26	30	50	finally
    //   30	32	50	finally
    //   35	48	50	finally
    //   51	53	50	finally
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.WaitDoneHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */