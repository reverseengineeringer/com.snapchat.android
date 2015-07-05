import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Inject;

public final class azo
{
  private final azi mCrashSampler;
  private final ReleaseManager mReleaseManager;
  
  @Inject
  public azo()
  {
    this(ReleaseManager.a(), azi.a());
  }
  
  private azo(@cgb ReleaseManager paramReleaseManager, @cgb azi paramazi)
  {
    mReleaseManager = paramReleaseManager;
    mCrashSampler = paramazi;
  }
  
  protected static void c(@cgb Throwable paramThrowable)
  {
    bvc.a(paramThrowable, new azw());
    d(paramThrowable);
  }
  
  private static void d(@cgb Throwable paramThrowable)
  {
    for (Throwable localThrowable = paramThrowable.getCause(); localThrowable != null; localThrowable = localThrowable.getCause()) {
      az.a(localThrowable.toString());
    }
    az.a(paramThrowable);
  }
  
  public final void a(@cgb Throwable paramThrowable)
  {
    if (mCrashSampler.b()) {
      d(paramThrowable);
    }
  }
  
  public final void b(@cgb Throwable paramThrowable)
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
 * Qualified Name:     azo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */