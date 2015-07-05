import java.util.concurrent.ThreadFactory;

final class bpo$b
  implements ThreadFactory
{
  public final Thread newThread(Runnable paramRunnable)
  {
    return new bpo.a(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     bpo.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */