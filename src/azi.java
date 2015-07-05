import com.snapchat.android.util.debug.ReleaseManager;
import java.util.UUID;

public final class azi
{
  protected static final double BETA_SAMPLING_RATE = 0.5D;
  private static final azi INSTANCE = new azi();
  protected static final double PRODUCTION_SAMPLING_RATE = 0.009999999776482582D;
  private boolean mInitialized;
  private final ReleaseManager mReleaseManager;
  private boolean mShouldReportCrashes;
  
  private azi()
  {
    this(ReleaseManager.a());
  }
  
  private azi(ReleaseManager paramReleaseManager)
  {
    mReleaseManager = paramReleaseManager;
  }
  
  public static azi a()
  {
    return INSTANCE;
  }
  
  private static boolean a(double paramDouble)
  {
    UUID localUUID = ajx.bw();
    if (localUUID == null) {
      return a(paramDouble, UUID.randomUUID().toString());
    }
    return a(paramDouble, localUUID.toString());
  }
  
  private static boolean a(double paramDouble, @cgb String paramString)
  {
    return Math.abs(paramString.hashCode() / 2.147483647E9D) < paramDouble;
  }
  
  public final boolean b()
  {
    for (;;)
    {
      try
      {
        if (!mInitialized)
        {
          if (ReleaseManager.b())
          {
            mShouldReportCrashes = false;
            mInitialized = true;
          }
        }
        else
        {
          boolean bool = mShouldReportCrashes;
          return bool;
        }
        if (ReleaseManager.c())
        {
          mShouldReportCrashes = true;
          continue;
        }
        if (!ReleaseManager.d()) {
          break label72;
        }
      }
      finally {}
      mShouldReportCrashes = a(0.5D);
      continue;
      label72:
      mShouldReportCrashes = a(0.009999999776482582D);
    }
  }
}

/* Location:
 * Qualified Name:     azi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */