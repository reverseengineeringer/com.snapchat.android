import java.util.HashMap;
import java.util.Map;

public final class cie
  extends cho
{
  private static final cie F = a(cgk.a, 4);
  private static final Map<cgk, cie[]> G = new HashMap();
  
  private cie(cgf paramcgf, int paramInt)
  {
    super(paramcgf, paramInt);
  }
  
  public static cie a(cgk paramcgk, int paramInt)
  {
    cgk localcgk = paramcgk;
    if (paramcgk == null) {
      localcgk = cgk.a();
    }
    for (;;)
    {
      Object localObject1;
      synchronized (G)
      {
        paramcgk = (cie[])G.get(localcgk);
        localObject1 = paramcgk;
        if (paramcgk == null)
        {
          localObject1 = new cie[7];
          G.put(localcgk, localObject1);
        }
        Object localObject2 = localObject1[(paramInt - 1)];
        paramcgk = (cgk)localObject2;
        if (localObject2 == null)
        {
          if (localcgk == cgk.a)
          {
            paramcgk = new cie(null, paramInt);
            break label120;
          }
        }
        else {
          return paramcgk;
        }
      }
      paramcgk = new cie(cig.a(a(cgk.a, paramInt), localcgk), paramInt);
      label120:
      localObject1[(paramInt - 1)] = paramcgk;
    }
  }
  
  public static cie b(cgk paramcgk)
  {
    return a(paramcgk, 4);
  }
  
  final int N()
  {
    return -292269054;
  }
  
  final int O()
  {
    return 292272992;
  }
  
  final long Q()
  {
    return 31557600000L;
  }
  
  final long R()
  {
    return 15778800000L;
  }
  
  final long S()
  {
    return 2629800000L;
  }
  
  final long T()
  {
    return 31083663600000L;
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
    return a(localcgk, 4);
  }
  
  protected final void a(chj.a parama)
  {
    if (a == null)
    {
      super.a(parama);
      E = new cjq(this, E);
      B = new cjq(this, B);
    }
  }
  
  final long b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt1;
    if (paramInt1 <= 0)
    {
      if (paramInt1 == 0) {
        throw new cgo(cgi.s(), Integer.valueOf(paramInt1), null, null);
      }
      i = paramInt1 + 1;
    }
    return super.b(i, paramInt2, paramInt3);
  }
  
  public final cgf b()
  {
    return F;
  }
  
  final boolean c(int paramInt)
  {
    return (paramInt & 0x3) == 0;
  }
  
  final long d(int paramInt)
  {
    int k = paramInt - 1968;
    int i;
    if (k <= 0) {
      i = k + 3 >> 2;
    }
    for (;;)
    {
      long l = k;
      return (i + l * 365L) * 86400000L - 62035200000L;
      int j = k >> 2;
      i = j;
      if (!c(paramInt)) {
        i = j + 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     cie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */