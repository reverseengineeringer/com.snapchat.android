import android.content.Context;
import com.snapchat.android.Timber;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Inject;

public final class bac
{
  private static final String TAG = "AnrReporter";
  public final bkz mAnrDetector;
  private final azi mCrashSampler;
  final azp mExceptionHandler;
  private final ReleaseManager mReleaseManager;
  
  @Inject
  bac(azi paramazi, bkz parambkz, ReleaseManager paramReleaseManager, azp paramazp, Context paramContext)
  {
    mCrashSampler = paramazi;
    mAnrDetector = parambkz;
    mReleaseManager = paramReleaseManager;
    mExceptionHandler = paramazp;
    if (mCrashSampler.b())
    {
      paramazi = new baf(paramContext, "c06b8797877eb662616000c11de0d338", ReleaseManager.d());
      mAnrDetector.a(paramazi);
      mAnrDetector.a(new bae());
    }
    if (ReleaseManager.c()) {
      mAnrDetector.a(new bac.a(paramContext, (byte)0));
    }
    mAnrDetector.a(new blb()
    {
      public final void a(String paramAnonymousString, bla paramAnonymousbla)
      {
        Timber.f("AnrReporter", paramAnonymousString, new Object[0]);
      }
    });
    mAnrDetector.b = new Thread.UncaughtExceptionHandler()
    {
      public final void uncaughtException(Thread paramAnonymousThread, Throwable paramAnonymousThrowable)
      {
        mExceptionHandler.a(paramAnonymousThrowable);
      }
    };
  }
  
  static final class a
    implements blb
  {
    final Context mContext;
    
    private a(@cgb Context paramContext)
    {
      mContext = paramContext;
    }
    
    public final void a(String paramString, bla parambla)
    {
      bgp.a(new Runnable()
      {
        public final void run()
        {
          AlertDialogUtils.a("ANR detected from Snapchat! See more details in notification", mContext, 1);
        }
      });
      AndroidNotificationManager.a();
      AndroidNotificationManager.c(mContext, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     bac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */