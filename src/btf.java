import java.util.concurrent.ThreadFactory;

public final class btf
  implements ThreadFactory
{
  public final Thread newThread(Runnable paramRunnable)
  {
    return new bte(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     btf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */