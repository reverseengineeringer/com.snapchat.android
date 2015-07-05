import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class bj
{
  private static int l = 0;
  public bl a;
  public boolean b;
  final String c;
  public final bj.a d = new bj.a((byte)0);
  final bj.a e = new bj.a((byte)0);
  final bj.a f = new bj.a((byte)0);
  double g;
  public double h;
  boolean i = true;
  bh<bn> j = new bh();
  double k = 0.0D;
  private double m = 0.005D;
  private double n = 0.005D;
  private final bf o;
  
  bj(bf parambf)
  {
    if (parambf == null) {
      throw new IllegalArgumentException("Spring cannot be created outside of a BaseSpringSystem");
    }
    o = parambf;
    parambf = new StringBuilder("spring:");
    int i1 = l;
    l = i1 + 1;
    c = i1;
    a(bl.c);
  }
  
  public final bj a(double paramDouble)
  {
    g = paramDouble;
    d.a = paramDouble;
    Iterator localIterator = j.iterator();
    while (localIterator.hasNext()) {
      ((bn)localIterator.next()).a(this);
    }
    return this;
  }
  
  public final bj a(bl parambl)
  {
    if (parambl == null) {
      throw new IllegalArgumentException("springConfig is required");
    }
    a = parambl;
    return this;
  }
  
  public final bj a(bn parambn)
  {
    j.a(parambn);
    return this;
  }
  
  public final void a()
  {
    j.a();
    bf localbf = o;
    if (this == null) {
      throw new IllegalArgumentException("spring is required");
    }
    b.remove(this);
    a.remove(c);
  }
  
  /* Error */
  public final bj b(double paramDouble)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 151	bj:h	D
    //   4: dload_1
    //   5: dcmpl
    //   6: ifne +12 -> 18
    //   9: aload_0
    //   10: invokevirtual 153	bj:b	()Z
    //   13: ifeq +5 -> 18
    //   16: aload_0
    //   17: areturn
    //   18: aload_0
    //   19: aload_0
    //   20: getfield 44	bj:d	Lbj$a;
    //   23: getfield 99	bj$a:a	D
    //   26: putfield 97	bj:g	D
    //   29: aload_0
    //   30: dload_1
    //   31: putfield 151	bj:h	D
    //   34: aload_0
    //   35: getfield 72	bj:o	Lbf;
    //   38: astore_3
    //   39: aload_0
    //   40: getfield 87	bj:c	Ljava/lang/String;
    //   43: astore 4
    //   45: aload_3
    //   46: getfield 144	bf:a	Ljava/util/Map;
    //   49: aload 4
    //   51: invokeinterface 156 2 0
    //   56: checkcast 2	bj
    //   59: astore 5
    //   61: aload 5
    //   63: ifnonnull +33 -> 96
    //   66: new 65	java/lang/IllegalArgumentException
    //   69: dup
    //   70: new 74	java/lang/StringBuilder
    //   73: dup
    //   74: ldc -98
    //   76: invokespecial 77	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   79: aload 4
    //   81: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: ldc -93
    //   86: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   92: invokespecial 70	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   95: athrow
    //   96: aload_3
    //   97: monitorenter
    //   98: aload_3
    //   99: getfield 135	bf:b	Ljava/util/Set;
    //   102: aload 5
    //   104: invokeinterface 166 2 0
    //   109: pop
    //   110: aload_3
    //   111: getfield 168	bf:d	Z
    //   114: ifeq +15 -> 129
    //   117: aload_3
    //   118: iconst_0
    //   119: putfield 168	bf:d	Z
    //   122: aload_3
    //   123: getfield 171	bf:c	Lbo;
    //   126: invokevirtual 174	bo:a	()V
    //   129: aload_3
    //   130: monitorexit
    //   131: aload_0
    //   132: getfield 61	bj:j	Lbh;
    //   135: invokevirtual 103	bh:iterator	()Ljava/util/Iterator;
    //   138: astore_3
    //   139: aload_3
    //   140: invokeinterface 109 1 0
    //   145: ifeq -129 -> 16
    //   148: aload_3
    //   149: invokeinterface 113 1 0
    //   154: pop
    //   155: goto -16 -> 139
    //   158: astore 4
    //   160: aload_3
    //   161: monitorexit
    //   162: aload 4
    //   164: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	165	0	this	bj
    //   0	165	1	paramDouble	double
    //   38	123	3	localObject1	Object
    //   43	37	4	str	String
    //   158	5	4	localObject2	Object
    //   59	44	5	localbj	bj
    // Exception table:
    //   from	to	target	type
    //   98	129	158	finally
    //   129	131	158	finally
    //   160	162	158	finally
  }
  
  public final boolean b()
  {
    if (Math.abs(d.b) <= m)
    {
      bj.a locala = d;
      if (Math.abs(h - a) <= n) {
        return true;
      }
    }
    return false;
  }
  
  public final bj c(double paramDouble)
  {
    d.b = paramDouble;
    return this;
  }
  
  public static final class a
  {
    public double a;
    public double b;
  }
}

/* Location:
 * Qualified Name:     bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */