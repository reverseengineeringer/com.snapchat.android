import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class bqg
  extends ThreadPoolExecutor
{
  bqg()
  {
    super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new bqp.b());
  }
  
  final void a(int paramInt)
  {
    setCorePoolSize(paramInt);
    setMaximumPoolSize(paramInt);
  }
  
  public final Future<?> submit(Runnable paramRunnable)
  {
    paramRunnable = new bqg.a((bpm)paramRunnable);
    execute(paramRunnable);
    return paramRunnable;
  }
  
  static final class a
    extends FutureTask<bpm>
    implements Comparable<a>
  {
    private final bpm a;
    
    public a(bpm parambpm)
    {
      super(null);
      a = parambpm;
    }
  }
}

/* Location:
 * Qualified Name:     bqg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */