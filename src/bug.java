import java.util.concurrent.ThreadFactory;

public final class bug
  implements ThreadFactory
{
  public final Thread newThread(Runnable paramRunnable)
  {
    return new buf(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     bug
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */