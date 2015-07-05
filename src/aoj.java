import android.content.Intent;
import com.snapchat.android.Timber;
import java.util.ArrayList;
import java.util.List;

public final class aoj
{
  private final List<Intent> a = new ArrayList(8);
  
  public aoj()
  {
    this((byte)0);
  }
  
  private aoj(byte paramByte) {}
  
  /* Error */
  public final Intent a(android.content.Context paramContext, Class<?> paramClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 22	aoj:a	Ljava/util/List;
    //   6: invokeinterface 29 1 0
    //   11: ifeq +48 -> 59
    //   14: ldc 31
    //   16: ldc 33
    //   18: iconst_0
    //   19: anewarray 4	java/lang/Object
    //   22: invokestatic 39	com/snapchat/android/Timber:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   25: new 41	android/content/Intent
    //   28: dup
    //   29: invokespecial 42	android/content/Intent:<init>	()V
    //   32: astore_3
    //   33: aload_3
    //   34: new 44	android/content/ComponentName
    //   37: dup
    //   38: aload_1
    //   39: aload_2
    //   40: invokespecial 47	android/content/ComponentName:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   43: invokevirtual 51	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   46: pop
    //   47: aload_3
    //   48: ldc 53
    //   50: iconst_1
    //   51: invokevirtual 57	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   54: pop
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_3
    //   58: areturn
    //   59: ldc 31
    //   61: ldc 59
    //   63: iconst_0
    //   64: anewarray 4	java/lang/Object
    //   67: invokestatic 39	com/snapchat/android/Timber:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   70: aload_0
    //   71: getfield 22	aoj:a	Ljava/util/List;
    //   74: iconst_0
    //   75: invokeinterface 63 2 0
    //   80: checkcast 41	android/content/Intent
    //   83: astore 4
    //   85: aload 4
    //   87: invokevirtual 67	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   90: invokevirtual 73	android/os/Bundle:keySet	()Ljava/util/Set;
    //   93: invokeinterface 79 1 0
    //   98: astore 5
    //   100: aload 4
    //   102: astore_3
    //   103: aload 5
    //   105: invokeinterface 84 1 0
    //   110: ifeq -77 -> 33
    //   113: aload 4
    //   115: aload 5
    //   117: invokeinterface 88 1 0
    //   122: checkcast 90	java/lang/String
    //   125: invokevirtual 94	android/content/Intent:removeExtra	(Ljava/lang/String;)V
    //   128: goto -28 -> 100
    //   131: astore_1
    //   132: aload_0
    //   133: monitorexit
    //   134: aload_1
    //   135: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	136	0	this	aoj
    //   0	136	1	paramContext	android.content.Context
    //   0	136	2	paramClass	Class<?>
    //   32	71	3	localObject	Object
    //   83	31	4	localIntent	Intent
    //   98	18	5	localIterator	java.util.Iterator
    // Exception table:
    //   from	to	target	type
    //   2	33	131	finally
    //   33	55	131	finally
    //   59	100	131	finally
    //   103	128	131	finally
  }
  
  public final void a(Intent paramIntent)
  {
    try
    {
      Timber.c("IntentPool", "Puts the intent back into the pool", new Object[0]);
      a.add(paramIntent);
      return;
    }
    finally
    {
      paramIntent = finally;
      throw paramIntent;
    }
  }
}

/* Location:
 * Qualified Name:     aoj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */