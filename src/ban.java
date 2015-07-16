import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Inject;

public final class ban
{
  private final bah mCrashSampler;
  private final ReleaseManager mReleaseManager;
  
  @Inject
  public ban()
  {
    this(ReleaseManager.a(), bah.a());
  }
  
  private ban(@chc ReleaseManager paramReleaseManager, @chc bah parambah)
  {
    mReleaseManager = paramReleaseManager;
    mCrashSampler = parambah;
  }
  
  protected static void c(@chc Throwable paramThrowable)
  {
    bwd.a(paramThrowable, new bav());
    d(paramThrowable);
  }
  
  private static void d(@chc Throwable paramThrowable)
  {
    for (Throwable localThrowable = paramThrowable.getCause(); localThrowable != null; localThrowable = localThrowable.getCause()) {
      az.a(localThrowable.toString());
    }
    az.a(paramThrowable);
  }
  
  public final void a(@chc Throwable paramThrowable)
  {
    if (mCrashSampler.b()) {
      d(paramThrowable);
    }
  }
  
  public final void b(@chc Throwable paramThrowable)
  {
    if (ReleaseManager.b()) {
      throw new RuntimeException(paramThrowable);
    }
    if (mCrashSampler.b()) {
      c(paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     ban
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */