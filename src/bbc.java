import android.content.Context;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Inject;

public final class bbc
{
  private static final String TAG = "AnrReporter";
  public final bma mAnrDetector;
  private final bah mCrashSampler;
  final bao mExceptionHandler;
  private final ReleaseManager mReleaseManager;
  
  @Inject
  bbc(bah parambah, bma parambma, ReleaseManager paramReleaseManager, bao parambao, Context paramContext)
  {
    mCrashSampler = parambah;
    mAnrDetector = parambma;
    mReleaseManager = paramReleaseManager;
    mExceptionHandler = parambao;
    if (mCrashSampler.b())
    {
      parambah = new bbf(paramContext, "c06b8797877eb662616000c11de0d338", ReleaseManager.d());
      mAnrDetector.a(parambah);
      mAnrDetector.a(new bbe());
    }
    if (ReleaseManager.c()) {
      mAnrDetector.a(new bbc.a(paramContext, (byte)0));
    }
    mAnrDetector.a(new bmc()
    {
      public final void a(String paramAnonymousString, bmb paramAnonymousbmb) {}
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
    implements bmc
  {
    final Context mContext;
    
    private a(@chc Context paramContext)
    {
      mContext = paramContext;
    }
    
    public final void a(String paramString, bmb parambmb)
    {
      bhp.a(new Runnable()
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
 * Qualified Name:     bbc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */