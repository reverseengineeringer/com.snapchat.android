import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class ciw
  extends cik
{
  static final chr E = new chr(-12219292800000L);
  private static final Map<chl, ArrayList<ciw>> H = new HashMap();
  cjf F;
  cjc G;
  private chr I;
  private long J;
  private long K;
  
  private ciw(chg paramchg, cjf paramcjf, cjc paramcjc, chr paramchr)
  {
    super(paramchg, new Object[] { paramcjf, paramcjc, paramchr });
  }
  
  private ciw(cjf paramcjf, cjc paramcjc, chr paramchr)
  {
    super(null, new Object[] { paramcjf, paramcjc, paramchr });
  }
  
  static long a(long paramLong, chg paramchg1, chg paramchg2)
  {
    return paramchg2.a(paramchg1.E().a(paramLong), paramchg1.C().a(paramLong), paramchg1.u().a(paramLong), paramchg1.e().a(paramLong));
  }
  
  public static ciw a(chl paramchl, long paramLong)
  {
    if (paramLong == Ea) {}
    for (Object localObject = null;; localObject = new chr(paramLong)) {
      return a(paramchl, (cia)localObject, 4);
    }
  }
  
  /* Error */
  private static ciw a(chl paramchl, cia paramcia, int paramInt)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic 88	chk:a	(Lchl;)Lchl;
    //   7: astore 5
    //   9: aload_1
    //   10: ifnonnull +99 -> 109
    //   13: getstatic 37	ciw:E	Lchr;
    //   16: astore_0
    //   17: getstatic 43	ciw:H	Ljava/util/Map;
    //   20: astore 6
    //   22: aload 6
    //   24: monitorenter
    //   25: getstatic 43	ciw:H	Ljava/util/Map;
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
    //   54: getstatic 43	ciw:H	Ljava/util/Map;
    //   57: aload 5
    //   59: aload_1
    //   60: invokeinterface 103 3 0
    //   65: pop
    //   66: aload 5
    //   68: getstatic 108	chl:a	Lchl;
    //   71: if_acmpne +158 -> 229
    //   74: new 2	ciw
    //   77: dup
    //   78: aload 5
    //   80: iload_2
    //   81: invokestatic 113	cjf:a	(Lchl;I)Lcjf;
    //   84: aload 5
    //   86: iload_2
    //   87: invokestatic 118	cjc:a	(Lchl;I)Lcjc;
    //   90: aload_0
    //   91: invokespecial 120	ciw:<init>	(Lcjf;Lcjc;Lchr;)V
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
    //   116: new 131	chs
    //   119: dup
    //   120: aload_0
    //   121: getfield 80	chr:a	J
    //   124: aload 5
    //   126: invokestatic 134	cjc:b	(Lchl;)Lcjc;
    //   129: invokespecial 137	chs:<init>	(JLchg;)V
    //   132: astore_1
    //   133: aload_1
    //   134: getfield 140	chs:b	Lchg;
    //   137: invokevirtual 57	chg:E	()Lchi;
    //   140: aload_1
    //   141: getfield 141	chs:a	J
    //   144: invokevirtual 62	chi:a	(J)I
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
    //   189: checkcast 2	ciw
    //   192: astore_1
    //   193: iload_2
    //   194: aload_1
    //   195: getfield 157	ciw:G	Lcjc;
    //   198: getfield 161	cim:E	I
    //   201: if_icmpne +66 -> 267
    //   204: aload_0
    //   205: aload_1
    //   206: getfield 163	ciw:I	Lchr;
    //   209: invokevirtual 166	chr:equals	(Ljava/lang/Object;)Z
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
    //   229: getstatic 108	chl:a	Lchl;
    //   232: aload_0
    //   233: iload_2
    //   234: invokestatic 83	ciw:a	(Lchl;Lcia;I)Lciw;
    //   237: astore_0
    //   238: new 2	ciw
    //   241: dup
    //   242: aload_0
    //   243: aload 5
    //   245: invokestatic 171	cjh:a	(Lchg;Lchl;)Lcjh;
    //   248: aload_0
    //   249: getfield 173	ciw:F	Lcjf;
    //   252: aload_0
    //   253: getfield 157	ciw:G	Lcjc;
    //   256: aload_0
    //   257: getfield 163	ciw:I	Lchr;
    //   260: invokespecial 175	ciw:<init>	(Lchg;Lcjf;Lcjc;Lchr;)V
    //   263: astore_0
    //   264: goto -169 -> 95
    //   267: goto -95 -> 172
    //   270: goto -253 -> 17
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	273	0	paramchl	chl
    //   0	273	1	paramcia	cia
    //   0	273	2	paramInt	int
    //   171	15	3	i	int
    //   38	146	4	localArrayList	ArrayList
    //   7	237	5	localchl	chl
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
  
  static long b(long paramLong, chg paramchg1, chg paramchg2)
  {
    long l = paramchg2.z().b(0L, paramchg1.z().a(paramLong));
    l = paramchg2.x().b(l, paramchg1.x().a(paramLong));
    l = paramchg2.t().b(l, paramchg1.t().a(paramLong));
    return paramchg2.e().b(l, paramchg1.e().a(paramLong));
  }
  
  public static ciw b(chl paramchl)
  {
    return a(paramchl, null, 4);
  }
  
  public final long a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    chg localchg = a;
    long l1;
    if (localchg != null) {
      l1 = localchg.a(paramInt1, paramInt2, paramInt3, paramInt4);
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
    chg localchg = a;
    long l1;
    if (localchg != null) {
      l1 = localchg.a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7);
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
      catch (chp localchp)
      {
        do
        {
          if ((paramInt2 != 2) || (paramInt3 != 29)) {
            throw localchp;
          }
          l1 = G.a(paramInt1, paramInt2, 28, paramInt4, paramInt5, paramInt6, paramInt7);
          long l2 = l1;
        } while (l1 < J);
        throw localchp;
      }
    }
  }
  
  final long a(long paramLong)
  {
    return a(paramLong, F, G);
  }
  
  public final chg a(chl paramchl)
  {
    chl localchl = paramchl;
    if (paramchl == null) {
      localchl = chl.a();
    }
    if (localchl == a()) {
      return this;
    }
    return a(localchl, I, G.E);
  }
  
  public final chl a()
  {
    chg localchg = a;
    if (localchg != null) {
      return localchg.a();
    }
    return chl.a;
  }
  
  protected final void a(cik.a parama)
  {
    Object localObject2 = (Object[])b;
    Object localObject1 = (cjf)localObject2[0];
    cjc localcjc = (cjc)localObject2[1];
    localObject2 = (chr)localObject2[2];
    J = a;
    F = ((cjf)localObject1);
    G = localcjc;
    I = ((chr)localObject2);
    if (a != null) {
      return;
    }
    if (E != E) {
      throw new IllegalArgumentException();
    }
    K = (J - a(J));
    parama.a(localcjc);
    if (i.a(J) == 0)
    {
      m = new ciw.a(h, m, J);
      n = new ciw.a(i, n, J);
      o = new ciw.a(j, o, J);
      p = new ciw.a(k, p, J);
      q = new ciw.a(l, q, J);
      r = new ciw.a(m, r, J);
      s = new ciw.a(n, s, J);
      u = new ciw.a(p, u, J);
      t = new ciw.a(o, t, J);
      v = new ciw.a(q, v, J);
      w = new ciw.a(r, w, J);
    }
    I = new ciw.a(D, I, J);
    long l = z.e(J);
    z = new ciw.a(u, z, l);
    l = w.e(J);
    A = new ciw.a(v, A, l, true);
    E = new ciw.b(z, E, J);
    j = E.d();
    F = new ciw.b(A, F, j, J);
    G = new ciw.b(B, G, j, J);
    H = new ciw.b(C, H, J);
    k = H.d();
    D = new ciw.b(y, D, J);
    i = D.d();
    B = new ciw.b(w, B, null, J, true);
    C = new ciw.b(x, C, h, J);
    h = B.d();
    localObject1 = new ciw.a(t, y, J);
    f = i;
    y = ((chi)localObject1);
  }
  
  public final chg b()
  {
    return a(chl.a);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof ciw)) {
        break;
      }
      paramObject = (ciw)paramObject;
    } while ((J == J) && (G.E == G.E) && (a().equals(((ciw)paramObject).a())));
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
      if (a(chl.a).v().i(J) != 0L) {
        break label148;
      }
    }
    label148:
    for (ckx localckx = cld.a.c();; localckx = cld.a.b())
    {
      localckx.a(a(chl.a)).a(localStringBuffer, J, null);
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
    extends ckc
  {
    final chi a;
    final chi b;
    final long c;
    final boolean d;
    protected chn e;
    protected chn f;
    
    a(chi paramchi1, chi paramchi2, long paramLong)
    {
      this(paramchi1, paramchi2, paramLong, false);
    }
    
    a(chi paramchi1, chi paramchi2, long paramLong, boolean paramBoolean)
    {
      super();
      a = paramchi1;
      b = paramchi2;
      c = paramLong;
      d = paramBoolean;
      e = paramchi2.d();
      paramchi2 = paramchi2.e();
      this$1 = paramchi2;
      if (paramchi2 == null) {
        this$1 = paramchi1.e();
      }
      f = ciw.this;
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
          if (ciw.a(ciw.this) + l < c) {
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
      } while (l - ciw.a(ciw.this) < c);
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
          if (ciw.a(ciw.this) + l2 < c) {
            l1 = k(l2);
          }
          paramLong = l1;
          if (a(l1) != paramInt) {
            throw new chp(b.a(), Integer.valueOf(paramInt), null, null);
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
          if (l2 - ciw.a(ciw.this) >= c) {
            l1 = j(l2);
          }
          paramLong = l1;
          if (a(l1) != paramInt) {
            throw new chp(a.a(), Integer.valueOf(paramInt), null, null);
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
          if (ciw.a(ciw.this) + l < c) {
            paramLong = k(l);
          }
        }
        return paramLong;
      }
      return a.d(paramLong);
    }
    
    public final chn d()
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
      } while (l - ciw.a(ciw.this) < c);
      return j(l);
    }
    
    public final chn e()
    {
      return f;
    }
    
    public final chn f()
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
        ciw localciw = ciw.this;
        return ciw.b(paramLong, F, G);
      }
      return a(paramLong);
    }
    
    protected final long k(long paramLong)
    {
      if (d)
      {
        localciw = ciw.this;
        return ciw.b(paramLong, G, F);
      }
      ciw localciw = ciw.this;
      return ciw.a(paramLong, G, F);
    }
  }
  
  final class b
    extends ciw.a
  {
    b(chi paramchi1, chi paramchi2, long paramLong)
    {
      this(paramchi1, paramchi2, null, paramLong, false);
    }
    
    b(chi paramchi1, chi paramchi2, chn paramchn, long paramLong)
    {
      this(paramchi1, paramchi2, paramchn, paramLong, false);
    }
    
    b(chi paramchi1, chi paramchi2, chn paramchn, long paramLong, boolean paramBoolean)
    {
      super(paramchi1, paramchi2, paramLong, paramBoolean);
      this$1 = paramchn;
      if (paramchn == null) {
        this$1 = new ciw.c(e, this);
      }
      e = ciw.this;
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
          if (ciw.a(ciw.this) + l < c)
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
      } while (l - ciw.a(ciw.this) < c);
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
          if (ciw.a(ciw.this) + paramLong2 < c)
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
      } while (paramLong2 - ciw.a(ciw.this) < c);
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
    extends ckf
  {
    private final ciw.b a;
    
    c(chn paramchn, ciw.b paramb)
    {
      super(paramchn.a());
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
 * Qualified Name:     ciw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */