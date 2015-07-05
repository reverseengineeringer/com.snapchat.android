import java.io.Serializable;
import java.util.HashMap;

public final class cjt
  extends cgm
  implements Serializable
{
  private static HashMap<cgn, cjt> a;
  private final cgn b;
  
  private cjt(cgn paramcgn)
  {
    b = paramcgn;
  }
  
  /* Error */
  public static cjt a(cgn paramcgn)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 22	cjt:a	Ljava/util/HashMap;
    //   6: ifnonnull +46 -> 52
    //   9: new 24	java/util/HashMap
    //   12: dup
    //   13: bipush 7
    //   15: invokespecial 27	java/util/HashMap:<init>	(I)V
    //   18: putstatic 22	cjt:a	Ljava/util/HashMap;
    //   21: aconst_null
    //   22: astore_1
    //   23: aload_1
    //   24: astore_2
    //   25: aload_1
    //   26: ifnonnull +21 -> 47
    //   29: new 2	cjt
    //   32: dup
    //   33: aload_0
    //   34: invokespecial 29	cjt:<init>	(Lcgn;)V
    //   37: astore_2
    //   38: getstatic 22	cjt:a	Ljava/util/HashMap;
    //   41: aload_0
    //   42: aload_2
    //   43: invokevirtual 33	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   46: pop
    //   47: ldc 2
    //   49: monitorexit
    //   50: aload_2
    //   51: areturn
    //   52: getstatic 22	cjt:a	Ljava/util/HashMap;
    //   55: aload_0
    //   56: invokevirtual 37	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   59: checkcast 2	cjt
    //   62: astore_1
    //   63: goto -40 -> 23
    //   66: astore_0
    //   67: ldc 2
    //   69: monitorexit
    //   70: aload_0
    //   71: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	paramcgn	cgn
    //   22	41	1	localcjt1	cjt
    //   24	27	2	localcjt2	cjt
    // Exception table:
    //   from	to	target	type
    //   3	21	66	finally
    //   29	47	66	finally
    //   52	63	66	finally
  }
  
  private UnsupportedOperationException e()
  {
    return new UnsupportedOperationException(b + " field is unsupported");
  }
  
  public final long a(long paramLong, int paramInt)
  {
    throw e();
  }
  
  public final long a(long paramLong1, long paramLong2)
  {
    throw e();
  }
  
  public final cgn a()
  {
    return b;
  }
  
  public final int b(long paramLong1, long paramLong2)
  {
    throw e();
  }
  
  public final boolean b()
  {
    return false;
  }
  
  public final long c(long paramLong1, long paramLong2)
  {
    throw e();
  }
  
  public final boolean c()
  {
    return true;
  }
  
  public final long d()
  {
    return 0L;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof cjt)) {
        break label59;
      }
      paramObject = (cjt)paramObject;
      if (b.m != null) {
        break;
      }
    } while (b.m == null);
    return false;
    return b.m.equals(b.m);
    label59:
    return false;
  }
  
  public final int hashCode()
  {
    return b.m.hashCode();
  }
  
  public final String toString()
  {
    return "UnsupportedDurationField[" + b.m + ']';
  }
}

/* Location:
 * Qualified Name:     cjt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */