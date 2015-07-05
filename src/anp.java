import android.content.Context;
import java.util.concurrent.ExecutorService;

public final class anp
{
  final ExecutorService a;
  anm b;
  private final avp c;
  
  public anp(Context paramContext)
  {
    this(auh.HIGH_PRIORITY_EXECUTOR, new avp(paramContext));
  }
  
  private anp(ExecutorService paramExecutorService, avp paramavp)
  {
    a = paramExecutorService;
    c = paramavp;
  }
  
  public static abstract interface a
  {
    public abstract void a(anq paramanq);
  }
}

/* Location:
 * Qualified Name:     anp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */