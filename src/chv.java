import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class chv
  extends chj
{
  static final cgq E = new cgq(-12219292800000L);
  private static final Map<cgk, ArrayList<chv>> H = new HashMap();
  cie F;
  cib G;
  private cgq I;
  private long J;
  private long K;
  
  private chv(cgf paramcgf, cie paramcie, cib paramcib, cgq paramcgq)
  {
    super(paramcgf, new Object[] { paramcie, paramcib, paramcgq });
  }
  
  private chv(cie paramcie, cib paramcib, cgq paramcgq)
  {
    super(null, new Object[] { paramcie, paramcib, paramcgq });
  }
  
  static long a(long paramLong, cgf paramcgf1, cgf paramcgf2)
  {
    return paramcgf2.a(paramcgf1.E().a(paramLong), paramcgf1.C().a(paramLong), paramcgf1.u().a(paramLong), paramcgf1.e().a(paramLong));
  }
  
  public static chv a(cgk paramcgk, long paramLong)
  {
    if (paramLong == Ea) {}
    for (Object localObject = null;; localObject = new cgq(paramLong)) {
      return a(paramcgk, (cgz)localObject, 4);
    }
  }
  
  /* Error */
  private static chv a(cgk paramcgk, cgz paramcgz, int paramInt)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic 88	cgj:a	(Lcgk;)Lcgk;
    //   7: astore 5
    //   9: aload_1
    //   10: ifnonnull +99 -> 109
    //   13: getstatic 37	chv:E	Lcgq;
    //   16: astore_0
    //   17: getstatic 43	chv:H	Ljava/util/Map;
    //   20: astore 6
    //   22: aload 6
    //   24: monitorenter
    //   25: getstatic 43	chv:H	Ljava/util/Map;
    //   28: aload 5
    //   30: invokeinterface 94 2 0
    //   35: checkcast 96	java/util/ArrayList
    //   38: astore 4
    //   40: aload 4
    //   42: ifnonnull +124 -> 166
    //   45: new 96	java/util/ArrayList
    //   48: dup
    //   49: iconst_2
    //   50: invokespecial 99	java/util/ArrayList:<init>	(I)V
    //   53: astore_1
    //   54: getstatic 43	chv:H	Ljava/util/Map;
    //   57: aload 5
    //   59: aload_1
    //   60: invokeinterface 103 3 0
    //   65: pop
    //   66: aload 5
    //   68: getstatic 108	cgk:a	Lcgk;
    //   71: if_acmpne +158 -> 229
    //   74: new 2	chv
    //   77: dup
    //   78: aload 5
    //   80: iload_2
    //   81: invokestatic 113	cie:a	(Lcgk;I)Lcie;
    //   84: aload 5
    //   86: iload_2
    //   87: invokestatic 118	cib:a	(Lcgk;I)Lcib;
    //   90: aload_0
    //   91: invokespecial 120	chv:<init>	(Lcie;Lcib;Lcgq;)V
    //   94: astore_0
    //   95: aload_1
    //   96: aload_0
    //   97: invokevirtual 124	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   100: pop
    //   101: aload 6
    //   103: monitorexit
    //   104: ldc 2
    //   106: monitorexit
    //   107: aload_0
    //   108: areturn
    //   109: aload_1
    //   110: invokeinterface 129 1 0
    //   115: astore_0
    //   116: new 131	cgr
    //   119: dup
    //   120: aload_0
    //   121: getfield 80	cgq:a	J
    //   124: aload 5
    //   126: invokestatic 134	cib:b	(Lcgk;)Lcib;
    //   129: invokespecial 137	cgr:<init>	(JLcgf;)V
    //   132: astore_1
    //   133: aload_1
    //   134: getfield 140	cgr:b	Lcgf;
    //   137: invokevirtual 57	cgf:E	()Lcgh;
    //   140: aload_1
    //   141: getfield 141	cgr:a	J
    //   144: invokevirtual 62	cgh:a	(J)I
    //   147: ifgt +123 -> 270
    //   150: new 143	java/lang/IllegalArgumentException
    //   153: dup
    //   154: ldc -111
    //   156: invokespecial 148	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   159: athrow
    //   160: astore_0
    //   161: ldc 2
    //   163: monitorexit
    //   164: aload_0
    //   165: athrow
    //   166: aload 4
    //   168: invokevirtual 152	java/util/ArrayList:size	()I
    //   171: istore_3
    //   172: iload_3
    //   173: iconst_1
    //   174: isub
    //   175: istore_3
    //   176: aload 4
    //   178: astore_1
    //   179: iload_3
    //   180: iflt -114 -> 66
    //   183: aload 4
    //   185: iload_3
    //   186: invokevirtual 155	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   189: checkcast 2	chv
    //   192: astore_1
    //   193: iload_2
    //   194: aload_1
    //   195: getfield 157	chv:G	Lcib;
    //   198: getfield 161	chl:E	I
    //   201: if_icmpne +66 -> 267
    //   204: aload_0
    //   205: aload_1
    //   206: getfield 163	chv:I	Lcgq;
    //   209: invokevirtual 166	cgq:equals	(Ljava/lang/Object;)Z
    //   212: ifeq +55 -> 267
    //   215: aload 6
    //   217: monitorexit
    //   218: aload_1
    //   219: astore_0
    //   220: goto -116 -> 104
    //   223: astore_0
    //   224: aload 6
    //   226: monitorexit
    //   227: aload_0
    //   228: athrow
    //   229: getstatic 108	cgk:a	Lcgk;
    //   232: aload_0
    //   233: iload_2
    //   234: invokestatic 83	chv:a	(Lcgk;Lcgz;I)Lchv;
    //   237: astore_0
    //   238: new 2	chv
    //   241: dup
    //   242: aload_0
    //   243: aload 5
    //   245: invokestatic 171	cig:a	(Lcgf;Lcgk;)Lcig;
    //   248: aload_0
    //   249: getfield 173	chv:F	Lcie;
    //   252: aload_0
    //   253: getfield 157	chv:G	Lcib;
    //   256: aload_0
    //   257: getfield 163	chv:I	Lcgq;
    //   260: invokespecial 175	chv:<init>	(Lcgf;Lcie;Lcib;Lcgq;)V
    //   263: astore_0
    //   264: goto -169 -> 95
    //   267: goto -95 -> 172
    //   270: goto -253 -> 17
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	273	0	paramcgk	cgk
    //   0	273	1	paramcgz	cgz
    //   0	273	2	paramInt	int
    //   171	15	3	i	int
    //   38	146	4	localArrayList	ArrayList
    //   7	237	5	localcgk	cgk
    // Exception table:
    //   from	to	target	type
    //   3	9	160	finally
    //   13	17	160	finally
    //   17	25	160	finally
    //   109	160	160	finally
    //   227	229	160	finally
    //   25	40	223	finally
    //   45	66	223	finally
    //   66	95	223	finally
    //   95	104	223	finally
    //   166	172	223	finally
    //   183	218	223	finally
    //   224	227	223	finally
    //   229	264	223	finally
  }
  
  static long b(long paramLong, cgf paramcgf1, cgf paramcgf2)
  {
    long l = paramcgf2.z().b(0L, paramcgf1.z().a(paramLong));
    l = paramcgf2.x().b(l, paramcgf1.x().a(paramLong));
    l = paramcgf2.t().b(l, paramcgf1.t().a(paramLong));
    return paramcgf2.e().b(l, paramcgf1.e().a(paramLong));
  }
  
  public static chv b(cgk paramcgk)
  {
    return a(paramcgk, null, 4);
  }
  
  public final long a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    cgf localcgf = a;
    long l1;
    if (localcgf != null) {
      l1 = localcgf.a(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    long l2;
    do
    {
      do
      {
        return l1;
        l2 = G.a(paramInt1, paramInt2, paramInt3, paramInt4);
        l1 = l2;
      } while (l2 >= J);
      l2 = F.a(paramInt1, paramInt2, paramInt3, paramInt4);
      l1 = l2;
    } while (l2 < J);
    throw new IllegalArgumentException("Specified date does not exist");
  }
  
  public final long a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    cgf localcgf = a;
    long l1;
    if (localcgf != null) {
      l1 = localcgf.a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7);
    }
    for (;;)
    {
      return l1;
      try
      {
        l2 = G.a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7);
        l1 = l2;
        if (l2 >= J) {
          continue;
        }
        l2 = F.a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7);
        l1 = l2;
        if (l2 < J) {
          continue;
        }
        throw new IllegalArgumentException("Specified date does not exist");
      }
      catch (cgo localcgo)
      {
        do
        {
          if ((paramInt2 != 2) || (paramInt3 != 29)) {
            throw localcgo;
          }
          l1 = G.a(paramInt1, paramInt2, 28, paramInt4, paramInt5, paramInt6, paramInt7);
          long l2 = l1;
        } while (l1 < J);
        throw localcgo;
      }
    }
  }
  
  final long a(long paramLong)
  {
    return a(paramLong, F, G);
  }
  
  public final cgf a(cgk paramcgk)
  {
    cgk localcgk = paramcgk;
    if (paramcgk == null) {
      localcgk = cgk.a();
    }
    if (localcgk == a()) {
      return this;
    }
    return a(localcgk, I, G.E);
  }
  
  public final cgk a()
  {
    cgf localcgf = a;
    if (localcgf != null) {
      return localcgf.a();
    }
    return cgk.a;
  }
  
  protected final void a(chj.a parama)
  {
    Object localObject2 = (Object[])b;
    Object localObject1 = (cie)localObject2[0];
    cib localcib = (cib)localObject2[1];
    localObject2 = (cgq)localObject2[2];
    J = a;
    F = ((cie)localObject1);
    G = localcib;
    I = ((cgq)localObject2);
    if (a != null) {
      return;
    }
    if (E != E) {
      throw new IllegalArgumentException();
    }
    K = (J - a(J));
    parama.a(localcib);
    if (i.a(J) == 0)
    {
      m = new chv.a(h, m, J);
      n = new chv.a(i, n, J);
      o = new chv.a(j, o, J);
      p = new chv.a(k, p, J);
      q = new chv.a(l, q, J);
      r = new chv.a(m, r, J);
      s = new chv.a(n, s, J);
      u = new chv.a(p, u, J);
      t = new chv.a(o, t, J);
      v = new chv.a(q, v, J);
      w = new chv.a(r, w, J);
    }
    I = new chv.a(D, I, J);
    long l = z.e(J);
    z = new chv.a(u, z, l);
    l = w.e(J);
    A = new chv.a(v, A, l, true);
    E = new chv.b(z, E, J);
    j = E.d();
    F = new chv.b(A, F, j, J);
    G = new chv.b(B, G, j, J);
    H = new chv.b(C, H, J);
    k = H.d();
    D = new chv.b(y, D, J);
    i = D.d();
    B = new chv.b(w, B, null, J, true);
    C = new chv.b(x, C, h, J);
    h = B.d();
    localObject1 = new chv.a(t, y, J);
    f = i;
    y = ((cgh)localObject1);
  }
  
  public final cgf b()
  {
    return a(cgk.a);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof chv)) {
        break;
      }
      paramObject = (chv)paramObject;
    } while ((J == J) && (G.E == G.E) && (a().equals(((chv)paramObject).a())));
    return false;
    return false;
  }
  
  public final int hashCode()
  {
    return "GJ".hashCode() * 11 + a().hashCode() + G.E + I.hashCode();
  }
  
  public final String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer(60);
    localStringBuffer.append("GJChronology");
    localStringBuffer.append('[');
    localStringBuffer.append(ac);
    if (J != Ea)
    {
      localStringBuffer.append(",cutover=");
      if (a(cgk.a).v().i(J) != 0L) {
        break label148;
      }
    }
    label148:
    for (cjw localcjw = ckc.a.c();; localcjw = ckc.a.b())
    {
      localcjw.a(a(cgk.a)).a(localStringBuffer, J, null);
      if (G.E != 4)
      {
        localStringBuffer.append(",mdfw=");
        localStringBuffer.append(G.E);
      }
      localStringBuffer.append(']');
      return localStringBuffer.toString();
    }
  }
  
  class a
    extends cjb
  {
    final cgh a;
    final cgh b;
    final long c;
    final boolean d;
    protected cgm e;
    protected cgm f;
    
    a(cgh paramcgh1, cgh paramcgh2, long paramLong)
    {
      this(paramcgh1, paramcgh2, paramLong, false);
    }
    
    a(cgh paramcgh1, cgh paramcgh2, long paramLong, boolean paramBoolean)
    {
      super();
      a = paramcgh1;
      b = paramcgh2;
      c = paramLong;
      d = paramBoolean;
      e = paramcgh2.d();
      paramcgh2 = paramcgh2.e();
      this$1 = paramcgh2;
      if (paramcgh2 == null) {
        this$1 = paramcgh1.e();
      }
      f = chv.this;
    }
    
    public final int a(long paramLong)
    {
      if (paramLong >= c) {
        return b.a(paramLong);
      }
      return a.a(paramLong);
    }
    
    public final int a(Locale paramLocale)
    {
      return Math.max(a.a(paramLocale), b.a(paramLocale));
    }
    
    public long a(long paramLong, int paramInt)
    {
      return b.a(paramLong, paramInt);
    }
    
    public long a(long paramLong1, long paramLong2)
    {
      return b.a(paramLong1, paramLong2);
    }
    
    public final long a(long paramLong, String paramString, Locale paramLocale)
    {
      long l;
      if (paramLong >= c)
      {
        l = b.a(paramLong, paramString, paramLocale);
        paramLong = l;
        if (l < c)
        {
          paramLong = l;
          if (chv.a(chv.this) + l < c) {
            paramLong = k(l);
          }
        }
      }
      do
      {
        do
        {
          return paramLong;
          l = a.a(paramLong, paramString, paramLocale);
          paramLong = l;
        } while (l < c);
        paramLong = l;
      } while (l - chv.a(chv.this) < c);
      return j(l);
    }
    
    public final String a(int paramInt, Locale paramLocale)
    {
      return b.a(paramInt, paramLocale);
    }
    
    public final String a(long paramLong, Locale paramLocale)
    {
      if (paramLong >= c) {
        return b.a(paramLong, paramLocale);
      }
      return a.a(paramLong, paramLocale);
    }
    
    public int b(long paramLong1, long paramLong2)
    {
      return b.b(paramLong1, paramLong2);
    }
    
    public final long b(long paramLong, int paramInt)
    {
      long l2;
      long l1;
      if (paramLong >= c)
      {
        l2 = b.b(paramLong, paramInt);
        paramLong = l2;
        if (l2 < c)
        {
          l1 = l2;
          if (chv.a(chv.this) + l2 < c) {
            l1 = k(l2);
          }
          paramLong = l1;
          if (a(l1) != paramInt) {
            throw new cgo(b.a(), Integer.valueOf(paramInt), null, null);
          }
        }
      }
      else
      {
        l2 = a.b(paramLong, paramInt);
        paramLong = l2;
        if (l2 >= c)
        {
          l1 = l2;
          if (l2 - chv.a(chv.this) >= c) {
            l1 = j(l2);
          }
          paramLong = l1;
          if (a(l1) != paramInt) {
            throw new cgo(a.a(), Integer.valueOf(paramInt), null, null);
          }
        }
      }
      return paramLong;
    }
    
    public final String b(int paramInt, Locale paramLocale)
    {
      return b.b(paramInt, paramLocale);
    }
    
    public final String b(long paramLong, Locale paramLocale)
    {
      if (paramLong >= c) {
        return b.b(paramLong, paramLocale);
      }
      return a.b(paramLong, paramLocale);
    }
    
    public final boolean b(long paramLong)
    {
      if (paramLong >= c) {
        return b.b(paramLong);
      }
      return a.b(paramLong);
    }
    
    public int c(long paramLong)
    {
      int i;
      if (paramLong >= c) {
        i = b.c(paramLong);
      }
      int j;
      do
      {
        return i;
        j = a.c(paramLong);
        i = j;
      } while (a.b(paramLong, j) < c);
      return a.a(a.a(c, -1));
    }
    
    public long c(long paramLong1, long paramLong2)
    {
      return b.c(paramLong1, paramLong2);
    }
    
    public final long d(long paramLong)
    {
      if (paramLong >= c)
      {
        long l = b.d(paramLong);
        paramLong = l;
        if (l < c)
        {
          paramLong = l;
          if (chv.a(chv.this) + l < c) {
            paramLong = k(l);
          }
        }
        return paramLong;
      }
      return a.d(paramLong);
    }
    
    public final cgm d()
    {
      return e;
    }
    
    public final long e(long paramLong)
    {
      if (paramLong >= c) {
        paramLong = b.e(paramLong);
      }
      long l;
      do
      {
        do
        {
          return paramLong;
          l = a.e(paramLong);
          paramLong = l;
        } while (l < c);
        paramLong = l;
      } while (l - chv.a(chv.this) < c);
      return j(l);
    }
    
    public final cgm e()
    {
      return f;
    }
    
    public final cgm f()
    {
      return b.f();
    }
    
    public final int g()
    {
      return a.g();
    }
    
    public final int h()
    {
      return b.h();
    }
    
    protected final long j(long paramLong)
    {
      if (d)
      {
        chv localchv = chv.this;
        return chv.b(paramLong, F, G);
      }
      return a(paramLong);
    }
    
    protected final long k(long paramLong)
    {
      if (d)
      {
        localchv = chv.this;
        return chv.b(paramLong, G, F);
      }
      chv localchv = chv.this;
      return chv.a(paramLong, G, F);
    }
  }
  
  final class b
    extends chv.a
  {
    b(cgh paramcgh1, cgh paramcgh2, long paramLong)
    {
      this(paramcgh1, paramcgh2, null, paramLong, false);
    }
    
    b(cgh paramcgh1, cgh paramcgh2, cgm paramcgm, long paramLong)
    {
      this(paramcgh1, paramcgh2, paramcgm, paramLong, false);
    }
    
    b(cgh paramcgh1, cgh paramcgh2, cgm paramcgm, long paramLong, boolean paramBoolean)
    {
      super(paramcgh1, paramcgh2, paramLong, paramBoolean);
      this$1 = paramcgm;
      if (paramcgm == null) {
        this$1 = new chv.c(e, this);
      }
      e = chv.this;
    }
    
    public final long a(long paramLong, int paramInt)
    {
      long l;
      if (paramLong >= c)
      {
        l = b.a(paramLong, paramInt);
        paramLong = l;
        if (l < c)
        {
          paramLong = l;
          if (chv.a(chv.this) + l < c)
          {
            if (!d) {
              break label107;
            }
            paramLong = l;
            if (bw.a(l) <= 0) {
              paramLong = bw.a(l, -1);
            }
            paramLong = k(paramLong);
          }
        }
      }
      label107:
      do
      {
        do
        {
          return paramLong;
          paramLong = l;
          if (bz.a(l) > 0) {
            break;
          }
          paramLong = bz.a(l, -1);
          break;
          l = a.a(paramLong, paramInt);
          paramLong = l;
        } while (l < c);
        paramLong = l;
      } while (l - chv.a(chv.this) < c);
      return j(l);
    }
    
    public final long a(long paramLong1, long paramLong2)
    {
      if (paramLong1 >= c)
      {
        paramLong2 = b.a(paramLong1, paramLong2);
        paramLong1 = paramLong2;
        if (paramLong2 < c)
        {
          paramLong1 = paramLong2;
          if (chv.a(chv.this) + paramLong2 < c)
          {
            if (!d) {
              break label99;
            }
            paramLong1 = paramLong2;
            if (bw.a(paramLong2) <= 0) {
              paramLong1 = bw.a(paramLong2, -1);
            }
            paramLong1 = k(paramLong1);
          }
        }
      }
      label99:
      do
      {
        do
        {
          return paramLong1;
          paramLong1 = paramLong2;
          if (bz.a(paramLong2) > 0) {
            break;
          }
          paramLong1 = bz.a(paramLong2, -1);
          break;
          paramLong2 = a.a(paramLong1, paramLong2);
          paramLong1 = paramLong2;
        } while (paramLong2 < c);
        paramLong1 = paramLong2;
      } while (paramLong2 - chv.a(chv.this) < c);
      return j(paramLong2);
    }
    
    public final int b(long paramLong1, long paramLong2)
    {
      if (paramLong1 >= c)
      {
        if (paramLong2 >= c) {
          return b.b(paramLong1, paramLong2);
        }
        paramLong1 = k(paramLong1);
        return a.b(paramLong1, paramLong2);
      }
      if (paramLong2 < c) {
        return a.b(paramLong1, paramLong2);
      }
      paramLong1 = j(paramLong1);
      return b.b(paramLong1, paramLong2);
    }
    
    public final int c(long paramLong)
    {
      if (paramLong >= c) {
        return b.c(paramLong);
      }
      return a.c(paramLong);
    }
    
    public final long c(long paramLong1, long paramLong2)
    {
      if (paramLong1 >= c)
      {
        if (paramLong2 >= c) {
          return b.c(paramLong1, paramLong2);
        }
        paramLong1 = k(paramLong1);
        return a.c(paramLong1, paramLong2);
      }
      if (paramLong2 < c) {
        return a.c(paramLong1, paramLong2);
      }
      paramLong1 = j(paramLong1);
      return b.c(paramLong1, paramLong2);
    }
  }
  
  static final class c
    extends cje
  {
    private final chv.b a;
    
    c(cgm paramcgm, chv.b paramb)
    {
      super(paramcgm.a());
      a = paramb;
    }
    
    public final long a(long paramLong, int paramInt)
    {
      return a.a(paramLong, paramInt);
    }
    
    public final long a(long paramLong1, long paramLong2)
    {
      return a.a(paramLong1, paramLong2);
    }
    
    public final int b(long paramLong1, long paramLong2)
    {
      return a.b(paramLong1, paramLong2);
    }
    
    public final long c(long paramLong1, long paramLong2)
    {
      return a.c(paramLong1, paramLong2);
    }
  }
}

/* Location:
 * Qualified Name:     chv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */