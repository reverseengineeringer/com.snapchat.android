import java.util.HashMap;
import java.util.Map;

public final class cib
  extends cho
{
  private static final cib F = a(cgk.a, 4);
  private static final Map<cgk, cib[]> G = new HashMap();
  
  private cib(cgf paramcgf, int paramInt)
  {
    super(paramcgf, paramInt);
  }
  
  public static cib W()
  {
    return F;
  }
  
  public static cib a(cgk paramcgk, int paramInt)
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
        paramcgk = (cib[])G.get(localcgk);
        localObject1 = paramcgk;
        if (paramcgk == null)
        {
          localObject1 = new cib[7];
          G.put(localcgk, localObject1);
        }
        Object localObject2 = localObject1[(paramInt - 1)];
        paramcgk = (cgk)localObject2;
        if (localObject2 == null)
        {
          if (localcgk == cgk.a)
          {
            paramcgk = new cib(null, paramInt);
            break label120;
          }
        }
        else {
          return paramcgk;
        }
      }
      paramcgk = new cib(cig.a(a(cgk.a, paramInt), localcgk), paramInt);
      label120:
      localObject1[(paramInt - 1)] = paramcgk;
    }
  }
  
  public static cib b(cgk paramcgk)
  {
    return a(paramcgk, 4);
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
    if (a == null) {
      super.a(parama);
    }
  }
  
  public final cgf b()
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
 * Qualified Name:     cib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */