import android.content.Intent;
import java.util.ArrayList;
import java.util.List;

public final class apf
{
  private final List<Intent> a = new ArrayList(8);
  
  public apf()
  {
    this((byte)0);
  }
  
  private apf(byte paramByte) {}
  
  /* Error */
  public final Intent a(android.content.Context paramContext, Class<?> paramClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 22	apf:a	Ljava/util/List;
    //   6: invokeinterface 29 1 0
    //   11: ifeq +37 -> 48
    //   14: new 31	android/content/Intent
    //   17: dup
    //   18: invokespecial 32	android/content/Intent:<init>	()V
    //   21: astore_3
    //   22: aload_3
    //   23: new 34	android/content/ComponentName
    //   26: dup
    //   27: aload_1
    //   28: aload_2
    //   29: invokespecial 37	android/content/ComponentName:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   32: invokevirtual 41	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   35: pop
    //   36: aload_3
    //   37: ldc 43
    //   39: iconst_1
    //   40: invokevirtual 47	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   43: pop
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_3
    //   47: areturn
    //   48: aload_0
    //   49: getfield 22	apf:a	Ljava/util/List;
    //   52: iconst_0
    //   53: invokeinterface 51 2 0
    //   58: checkcast 31	android/content/Intent
    //   61: astore 4
    //   63: aload 4
    //   65: invokevirtual 55	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   68: invokevirtual 61	android/os/Bundle:keySet	()Ljava/util/Set;
    //   71: invokeinterface 67 1 0
    //   76: astore 5
    //   78: aload 4
    //   80: astore_3
    //   81: aload 5
    //   83: invokeinterface 72 1 0
    //   88: ifeq -66 -> 22
    //   91: aload 4
    //   93: aload 5
    //   95: invokeinterface 76 1 0
    //   100: checkcast 78	java/lang/String
    //   103: invokevirtual 82	android/content/Intent:removeExtra	(Ljava/lang/String;)V
    //   106: goto -28 -> 78
    //   109: astore_1
    //   110: aload_0
    //   111: monitorexit
    //   112: aload_1
    //   113: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	this	apf
    //   0	114	1	paramContext	android.content.Context
    //   0	114	2	paramClass	Class<?>
    //   21	60	3	localObject	Object
    //   61	31	4	localIntent	Intent
    //   76	18	5	localIterator	java.util.Iterator
    // Exception table:
    //   from	to	target	type
    //   2	22	109	finally
    //   22	44	109	finally
    //   48	78	109	finally
    //   81	106	109	finally
  }
  
  public final void a(Intent paramIntent)
  {
    try
    {
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
 * Qualified Name:     apf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */