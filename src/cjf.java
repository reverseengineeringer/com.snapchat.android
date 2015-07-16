import java.util.HashMap;
import java.util.Map;

public final class cjf
  extends cip
{
  private static final cjf F = a(chl.a, 4);
  private static final Map<chl, cjf[]> G = new HashMap();
  
  private cjf(chg paramchg, int paramInt)
  {
    super(paramchg, paramInt);
  }
  
  public static cjf a(chl paramchl, int paramInt)
  {
    chl localchl = paramchl;
    if (paramchl == null) {
      localchl = chl.a();
    }
    for (;;)
    {
      Object localObject1;
      synchronized (G)
      {
        paramchl = (cjf[])G.get(localchl);
        localObject1 = paramchl;
        if (paramchl == null)
        {
          localObject1 = new cjf[7];
          G.put(localchl, localObject1);
        }
        Object localObject2 = localObject1[(paramInt - 1)];
        paramchl = (chl)localObject2;
        if (localObject2 == null)
        {
          if (localchl == chl.a)
          {
            paramchl = new cjf(null, paramInt);
            break label120;
          }
        }
        else {
          return paramchl;
        }
      }
      paramchl = new cjf(cjh.a(a(chl.a, paramInt), localchl), paramInt);
      label120:
      localObject1[(paramInt - 1)] = paramchl;
    }
  }
  
  public static cjf b(chl paramchl)
  {
    return a(paramchl, 4);
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
  
  public final chg a(chl paramchl)
  {
    chl localchl = paramchl;
    if (paramchl == null) {
      localchl = chl.a();
    }
    if (localchl == a()) {
      return this;
    }
    return a(localchl, 4);
  }
  
  protected final void a(cik.a parama)
  {
    if (a == null)
    {
      super.a(parama);
      E = new ckr(this, E);
      B = new ckr(this, B);
    }
  }
  
  final long b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt1;
    if (paramInt1 <= 0)
    {
      if (paramInt1 == 0) {
        throw new chp(chj.s(), Integer.valueOf(paramInt1), null, null);
      }
      i = paramInt1 + 1;
    }
    return super.b(i, paramInt2, paramInt3);
  }
  
  public final chg b()
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
 * Qualified Name:     cjf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */