import android.net.NetworkInfo;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.inject.Provider;

public final class amg
{
  public static final Provider<amg> a = new Provider() {};
  public final ExecutorService b;
  private final ama c;
  private final qb d;
  
  public amg()
  {
    this(new qb(), Executors.newSingleThreadExecutor(amh.a()), ama.a());
  }
  
  private amg(qb paramqb, ExecutorService paramExecutorService, ama paramama)
  {
    c = paramama;
    d = paramqb;
    b = paramExecutorService;
  }
  
  @awj
  protected final us a(aly paramaly, bgl parambgl)
  {
    Object localObject1 = c.b();
    String str;
    if (localObject1 != null)
    {
      str = ((NetworkInfo)localObject1).getTypeName();
      if ((localObject1 != null) && (((NetworkInfo)localObject1).getType() != 1)) {
        break label84;
      }
    }
    label84:
    for (int i = 1;; i = 0)
    {
      if (akr.m()) {
        break label89;
      }
      parambgl = new IllegalStateException("Attempting to download media when user is logged out");
      paramaly = new us.a(d, str);
      mCaughtException = parambgl;
      return paramaly.a();
      str = "Unknown";
      break;
    }
    label89:
    if ((i == 0) && (a))
    {
      parambgl = new amb("Operation only allowed on wifi");
      paramaly = new us.a(d, str);
      mCaughtException = parambgl;
      return paramaly.a();
    }
    Object localObject2;
    if (i != null)
    {
      i = 1;
      if (i == 0) {
        break label199;
      }
      localObject1 = d;
      localObject2 = i;
      if (localObject2 != null) {
        break label183;
      }
      parambgl = qb.a((String)localObject1, parambgl);
    }
    for (;;)
    {
      try
      {
        parambgl = parambgl.executeSynchronously();
        return parambgl;
      }
      catch (Exception parambgl)
      {
        label183:
        label199:
        paramaly = new us.a(d, str);
        mCaughtException = parambgl;
      }
      i = 0;
      break;
      parambgl = new qn((String)localObject1, parambgl, localObject2);
      continue;
      parambgl = qb.a(d, parambgl);
    }
    return paramaly.a();
  }
  
  public static abstract interface a
  {
    public abstract void a(@chc amg paramamg, @chc aly paramaly, @chc bgl parambgl, @chd us paramus, @chd Object paramObject);
  }
}

/* Location:
 * Qualified Name:     amg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */