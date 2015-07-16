import java.io.Serializable;
import java.util.HashMap;
import java.util.Locale;

public final class ckt
  extends chi
  implements Serializable
{
  private static HashMap<chj, ckt> a;
  private final chj b;
  private final chn c;
  
  private ckt(chj paramchj, chn paramchn)
  {
    if ((paramchj == null) || (paramchn == null)) {
      throw new IllegalArgumentException();
    }
    b = paramchj;
    c = paramchn;
  }
  
  /* Error */
  public static ckt a(chj paramchj, chn paramchn)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 29	ckt:a	Ljava/util/HashMap;
    //   6: ifnonnull +47 -> 53
    //   9: new 31	java/util/HashMap
    //   12: dup
    //   13: bipush 7
    //   15: invokespecial 34	java/util/HashMap:<init>	(I)V
    //   18: putstatic 29	ckt:a	Ljava/util/HashMap;
    //   21: aconst_null
    //   22: astore_2
    //   23: aload_2
    //   24: astore_3
    //   25: aload_2
    //   26: ifnonnull +22 -> 48
    //   29: new 2	ckt
    //   32: dup
    //   33: aload_0
    //   34: aload_1
    //   35: invokespecial 36	ckt:<init>	(Lchj;Lchn;)V
    //   38: astore_3
    //   39: getstatic 29	ckt:a	Ljava/util/HashMap;
    //   42: aload_0
    //   43: aload_3
    //   44: invokevirtual 40	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   47: pop
    //   48: ldc 2
    //   50: monitorexit
    //   51: aload_3
    //   52: areturn
    //   53: getstatic 29	ckt:a	Ljava/util/HashMap;
    //   56: aload_0
    //   57: invokevirtual 44	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   60: checkcast 2	ckt
    //   63: astore_3
    //   64: aload_3
    //   65: astore_2
    //   66: aload_3
    //   67: ifnull -44 -> 23
    //   70: aload_3
    //   71: getfield 25	ckt:c	Lchn;
    //   74: astore 4
    //   76: aload_3
    //   77: astore_2
    //   78: aload 4
    //   80: aload_1
    //   81: if_acmpeq -58 -> 23
    //   84: aconst_null
    //   85: astore_2
    //   86: goto -63 -> 23
    //   89: astore_0
    //   90: ldc 2
    //   92: monitorexit
    //   93: aload_0
    //   94: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	95	0	paramchj	chj
    //   0	95	1	paramchn	chn
    //   22	64	2	localObject1	Object
    //   24	53	3	localObject2	Object
    //   74	5	4	localchn	chn
    // Exception table:
    //   from	to	target	type
    //   3	21	89	finally
    //   29	48	89	finally
    //   53	64	89	finally
    //   70	76	89	finally
  }
  
  private UnsupportedOperationException i()
  {
    return new UnsupportedOperationException(b + " field is unsupported");
  }
  
  public final int a(long paramLong)
  {
    throw i();
  }
  
  public final int a(Locale paramLocale)
  {
    throw i();
  }
  
  public final long a(long paramLong, int paramInt)
  {
    return c.a(paramLong, paramInt);
  }
  
  public final long a(long paramLong1, long paramLong2)
  {
    return c.a(paramLong1, paramLong2);
  }
  
  public final long a(long paramLong, String paramString, Locale paramLocale)
  {
    throw i();
  }
  
  public final chj a()
  {
    return b;
  }
  
  public final String a(int paramInt, Locale paramLocale)
  {
    throw i();
  }
  
  public final String a(long paramLong, Locale paramLocale)
  {
    throw i();
  }
  
  public final String a(cic paramcic, Locale paramLocale)
  {
    throw i();
  }
  
  public final int b(long paramLong1, long paramLong2)
  {
    return c.b(paramLong1, paramLong2);
  }
  
  public final long b(long paramLong, int paramInt)
  {
    throw i();
  }
  
  public final String b()
  {
    return b.a;
  }
  
  public final String b(int paramInt, Locale paramLocale)
  {
    throw i();
  }
  
  public final String b(long paramLong, Locale paramLocale)
  {
    throw i();
  }
  
  public final String b(cic paramcic, Locale paramLocale)
  {
    throw i();
  }
  
  public final boolean b(long paramLong)
  {
    throw i();
  }
  
  public final int c(long paramLong)
  {
    throw i();
  }
  
  public final long c(long paramLong1, long paramLong2)
  {
    return c.c(paramLong1, paramLong2);
  }
  
  public final boolean c()
  {
    return false;
  }
  
  public final long d(long paramLong)
  {
    throw i();
  }
  
  public final chn d()
  {
    return c;
  }
  
  public final long e(long paramLong)
  {
    throw i();
  }
  
  public final chn e()
  {
    return null;
  }
  
  public final long f(long paramLong)
  {
    throw i();
  }
  
  public final chn f()
  {
    return null;
  }
  
  public final int g()
  {
    throw i();
  }
  
  public final long g(long paramLong)
  {
    throw i();
  }
  
  public final int h()
  {
    throw i();
  }
  
  public final long h(long paramLong)
  {
    throw i();
  }
  
  public final long i(long paramLong)
  {
    throw i();
  }
  
  public final String toString()
  {
    return "UnsupportedDateTimeField";
  }
}

/* Location:
 * Qualified Name:     ckt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */