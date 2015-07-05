import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.util.debug.ScApplicationInfo;
import com.squareup.otto.Bus;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import javax.inject.Provider;
import org.apache.commons.lang3.StringUtils;

public class pw
  extends th
  implements ts.b<big>
{
  private static final String IO_EXCEPTION = "ie";
  static final int MAX_RETRIES = 3;
  protected static final String PATH = "/loq/login";
  private static final int ROOT_FLAG = 1;
  public static final int SC_LOGIN_FAILED_CANNOT_FIND_ACCOUNT_CODE = -101;
  public static final int SC_LOGIN_FAILED_INVALID_PASSWORD_CODE = -100;
  public static final int SC_LOGIN_FAILED_UNKNOWN_ERROR = 2147483642;
  private static final String TAG = "LoginTask";
  private final Bus mBus;
  private final aya mDeviceTokenManager;
  private final ExecutorService mExecutorService;
  private final lx mGoogleAuthManager;
  private final GoogleCloudMessaging mGoogleCloudMessage;
  private final Handler mHandler;
  private final pw.a mLoginCallback;
  protected final String mLoginName;
  private int mNumRetries = 0;
  private final String mPassword;
  private String mPreAuthToken;
  private long mRetryMillis = 500L;
  private final aug mRetryUtil;
  private final bgn mRootDetector;
  private final ov mScreenParameterProvider;
  private final ayg mSlightlySecurePreferences;
  private final ajx mUserPrefs;
  private final Provider<ajv> mUserProvider;
  
  static
  {
    if (!pw.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private pw(String paramString1, String paramString2, @cgb pw.a parama, String paramString3, aya paramaya, ov paramov, GoogleCloudMessaging paramGoogleCloudMessaging, lx paramlx, aug paramaug, ExecutorService paramExecutorService, bgn parambgn, Handler paramHandler, ayg paramayg, Bus paramBus, Provider<ajv> paramProvider, ajx paramajx)
  {
    mLoginName = paramString1;
    mPassword = paramString2;
    mLoginCallback = parama;
    mPreAuthToken = paramString3;
    mDeviceTokenManager = paramaya;
    mScreenParameterProvider = paramov;
    mGoogleCloudMessage = paramGoogleCloudMessaging;
    mGoogleAuthManager = paramlx;
    mRetryUtil = paramaug;
    mExecutorService = paramExecutorService;
    mRootDetector = parambgn;
    mHandler = paramHandler;
    mSlightlySecurePreferences = paramayg;
    mBus = paramBus;
    mUserProvider = paramProvider;
    mUserPrefs = paramajx;
    a(big.class, this);
  }
  
  public pw(String paramString1, String paramString2, @cgb pw.a parama, String paramString3, ayg paramayg, Provider<ajv> paramProvider)
  {
    this(paramString1, paramString2, parama, paramString3, aya.a(), ov.a(), GoogleCloudMessaging.getInstance(SnapchatApplication.b().getApplicationContext()), lx.a(), new aug(), auh.NETWORK_EXECUTOR, bgn.a(), new Handler(Looper.getMainLooper()), paramayg, ban.a(), paramProvider, ajx.a());
  }
  
  private void a(@cgc String paramString1, @cgc String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null)) {
      mDeviceTokenManager.a(new axz(paramString1, paramString2));
    }
  }
  
  private String e()
  {
    Context localContext = SnapchatApplication.b().getApplicationContext();
    try
    {
      String str = (String)mRetryUtil.a(new Callable() {}).call();
      alz.a(localContext, str);
      Timber.c("LoginTask", "GcmRegistrationId: " + str, new Object[0]);
      return str;
    }
    catch (Exception localException)
    {
      Timber.f("LoginTask", "getGcmRegistrationId IOException: " + localException.getMessage(), new Object[0]);
    }
    return "ie";
  }
  
  final void a(@cgc big parambig, @cgb uc paramuc)
  {
    boolean bool2 = true;
    if (parambig == null)
    {
      parambig = atx.a(null, 2131493328, new Object[0]);
      mLoginCallback.a(mResponseCode, parambig);
      return;
    }
    if (!StringUtils.isEmpty(parambig.l()))
    {
      mLoginCallback.a(aud.a(parambig.m()), parambig.l());
      return;
    }
    if ((parambig.e()) && (TextUtils.isEmpty(parambig.d().n())))
    {
      ajx.a(parambig.d());
      paramuc = (ajv)mUserProvider.get();
      if (paramuc != null) {
        paramuc.a(null);
      }
      a(parambig.n(), parambig.o());
      mLoginCallback.a();
      return;
    }
    if ((parambig.e()) && (parambig.w()))
    {
      paramuc = parambig.d().n();
      ajx.a(parambig.d());
      ajx.b(paramuc);
      paramuc = (ajv)mUserProvider.get();
      if (paramuc != null) {
        paramuc.a(null);
      }
      a(parambig.n(), parambig.o());
      boolean bool1;
      if ((parambig.w()) && (parambig.v().a() == bkr.a.NEEDS_PHONE_VERIFIED))
      {
        bool1 = true;
        ajx.a(bool1);
        if ((!parambig.w()) || (parambig.v().a() != bkr.a.NEEDS_CAPTCHA)) {
          break label290;
        }
        bool1 = bool2;
        label252:
        ajx.b(bool1);
        if (!parambig.w()) {
          break label295;
        }
      }
      label290:
      label295:
      for (parambig = parambig.v().b();; parambig = null)
      {
        ajx.c(parambig);
        mLoginCallback.x_();
        return;
        bool1 = false;
        break;
        bool1 = false;
        break label252;
      }
    }
    if (aud.a(parambig.p()))
    {
      ajx.b(parambig.q());
      ajx.v(parambig.r());
      mLoginCallback.a(parambig);
      return;
    }
    auc.a(SharedPreferenceKey.LAST_SUCCESSFUL_LOGIN_USERNAME.getKey(), mLoginName);
    if (!TextUtils.equals(auc.a(SharedPreferenceKey.LAST_SUCCESSFUL_LOGIN_USERNAME.getKey()), mLoginName)) {
      mSlightlySecurePreferences.d();
    }
    ajx.c(false);
    paramuc = (ajv)mUserProvider.get();
    if (paramuc != null)
    {
      paramuc.a(parambig, true);
      paramuc.a(null);
    }
    a(parambig.n(), parambig.o());
    AnalyticsEvents.m();
    mBus.a(new beh(mUUID, true, true, new ajv.a(true, true, true, true)));
    mLoginCallback.b(parambig);
  }
  
  public final void a(@cgb uc paramuc)
  {
    int i;
    if (mResponseCode == 401)
    {
      i = mNumRetries;
      mNumRetries = (i + 1);
      if (i < 3)
      {
        i = 1;
        Timber.e("LoginTask", "Retry login after receiving SC_UNAUTHORIZED result.", new Object[0]);
        mHandler.postDelayed(new Runnable()
        {
          public final void run()
          {
            pw.d(pw.this);
            f();
          }
        }, mRetryMillis);
      }
    }
    for (;;)
    {
      if (i == 0) {
        super.a(paramuc);
      }
      return;
      i = 0;
    }
  }
  
  public final Object b()
  {
    final pw.b localb = new pw.b();
    assert ((localb.a() != null) && (localb.b() != null));
    localb.m(ScApplicationInfo.a());
    localb.g(mLoginName);
    localb.b(mPassword);
    localb.a(mPreAuthToken);
    localb.i(e());
    Future localFuture = mExecutorService.submit(new Callable() {});
    axz localaxz = mDeviceTokenManager.a(false);
    if ((localaxz != null) && (mId != null) && (mValue != null))
    {
      localb.j(mId);
      localb.k(aya.a(localaxz, mLoginName, mPassword, localb.a(), localb.b()));
    }
    try
    {
      for (;;)
      {
        localb.n((String)localFuture.get());
        localb.a(Integer.valueOf(mScreenParameterProvider.mResolution.b()));
        localb.b(Integer.valueOf(mScreenParameterProvider.mResolution.a()));
        localb.c(Integer.valueOf(mScreenParameterProvider.mMaxVideoHeight));
        localb.d(Integer.valueOf(mScreenParameterProvider.mMaxVideoWidth));
        if ((!bgn.b()) && (!bgn.c()) && (!bgn.d()) && (!bgn.e())) {
          break;
        }
        i = 1;
        if (i == 0) {
          break label334;
        }
        i = 1;
        localb.o(Integer.toString(i));
        return localb;
        localb.l("1");
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        Timber.f("LoginTask", "getAttestation exception: " + localInterruptedException.getMessage(), new Object[0]);
        localb.n("ie");
        continue;
        i = 0;
      }
    }
    catch (ExecutionException localExecutionException)
    {
      for (;;)
      {
        continue;
        label334:
        int i = 0;
      }
    }
  }
  
  protected final String d()
  {
    return "/loq/login";
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(int paramInt, String paramString);
    
    public abstract void a(big parambig);
    
    public abstract void b(big parambig);
    
    public abstract void x_();
  }
  
  @tn
  public static final class b
    extends bif
  {
    b()
    {
      ts.b(this);
    }
  }
}

/* Location:
 * Qualified Name:     pw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */