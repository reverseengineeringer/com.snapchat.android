import java.util.HashMap;
import java.util.Map;

public final class cjc
  extends cip
{
  private static final cjc F = a(chl.a, 4);
  private static final Map<chl, cjc[]> G = new HashMap();
  
  private cjc(chg paramchg, int paramInt)
  {
    super(paramchg, paramInt);
  }
  
  public static cjc W()
  {
    return F;
  }
  
  public static cjc a(chl paramchl, int paramInt)
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
        paramchl = (cjc[])G.get(localchl);
        localObject1 = paramchl;
        if (paramchl == null)
        {
          localObject1 = new cjc[7];
          G.put(localchl, localObject1);
        }
        Object localObject2 = localObject1[(paramInt - 1)];
        paramchl = (chl)localObject2;
        if (localObject2 == null)
        {
          if (localchl == chl.a)
          {
            paramchl = new cjc(null, paramInt);
            break label120;
          }
        }
        else {
          return paramchl;
        }
      }
      paramchl = new cjc(cjh.a(a(chl.a, paramInt), localchl), paramInt);
      label120:
      localObject1[(paramInt - 1)] = paramchl;
    }
  }
  
  public static cjc b(chl paramchl)
  {
    return a(paramchl, 4);
  }
  
  final int N()
  {
    return -292275054;
  }
  
  final int O()
  {
    return 292278993;
  }
  
  final long Q()
  {
    return 31556952000L;
  }
  
  final long R()
  {
    return 15778476000L;
  }
  
  final long S()
  {
    return 2629746000L;
  }
  
  final long T()
  {
    return 31083597720000L;
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
    if (a == null) {
      super.a(parama);
    }
  }
  
  public final chg b()
  {
    return F;
  }
  
  final boolean c(int paramInt)
  {
    return ((paramInt & 0x3) == 0) && ((paramInt % 100 != 0) || (paramInt % 400 == 0));
  }
  
  final long d(int paramInt)
  {
    int i = paramInt / 100;
    if (paramInt < 0) {
      i = (i + 3 >> 2) + ((paramInt + 3 >> 2) - i) - 1;
    }
    for (;;)
    {
      long l = paramInt;
      return (i - 719527 + l * 365L) * 86400000L;
      int j = (i >> 2) + ((paramInt >> 2) - i);
      i = j;
      if (c(paramInt)) {
        i = j - 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     cjc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */