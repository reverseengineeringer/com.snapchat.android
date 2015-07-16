import java.util.concurrent.ThreadFactory;

final class bqp$b
  implements ThreadFactory
{
  public final Thread newThread(Runnable paramRunnable)
  {
    return new bqp.a(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     bqp.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */