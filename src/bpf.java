import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class bpf
  extends ThreadPoolExecutor
{
  bpf()
  {
    super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new bpo.b());
  }
  
  final void a(int paramInt)
  {
    setCorePoolSize(paramInt);
    setMaximumPoolSize(paramInt);
  }
  
  public final Future<?> submit(Runnable paramRunnable)
  {
    paramRunnable = new bpf.a((bol)paramRunnable);
    execute(paramRunnable);
    return paramRunnable;
  }
  
  static final class a
    extends FutureTask<bol>
    implements Comparable<a>
  {
    private final bol a;
    
    public a(bol parambol)
    {
      super(null);
      a = parambol;
    }
  }
}

/* Location:
 * Qualified Name:     bpf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */