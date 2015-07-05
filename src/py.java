import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.Timber;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;

public class py
  extends th
  implements ts.b<biz>
{
  static final int MAX_RETRIES = 3;
  public static final String PATH = "/loq/register";
  public static final int SC_SIGNUP_FAILED_EMAIL_EXISTS_CODE = -201;
  public static final int SC_SIGNUP_FAILED_EMAIL_INVALID_CODE = -200;
  public static final int SC_SIGNUP_FAILED_PASSWORD_TOO_COMMON_CODE = 8;
  public static final int SC_SIGNUP_FAILED_PASSWORD_TOO_EASY_CODE = 9;
  public static final int SC_SIGNUP_FAILED_PASSWORD_TOO_SHORT_CODE = 7;
  public static final int SC_SIGNUP_FAILED_PASSWORD_TOO_SIMILAR_TO_EMAIL_CODE = 11;
  public static final int SC_SIGNUP_FAILED_PASSWORD_TOO_SIMILAR_TO_USERNAME_CODE = 10;
  private static final String TAG = "SignupTask";
  private String mAge = null;
  protected String mBirthday = null;
  private final aya mDeviceTokenManager;
  protected final String mEmail;
  private final Handler mHandler;
  private int mNumRetries = 0;
  private final String mPassword;
  private long mRetryMillis = 500L;
  private final py.b mSignupCallback;
  
  static
  {
    if (!py.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public py(String paramString1, String paramString2, GregorianCalendar paramGregorianCalendar, py.b paramb)
  {
    this(paramString1, paramString2, paramGregorianCalendar, paramb, aya.a(), new Handler(Looper.getMainLooper()));
  }
  
  private py(String paramString1, String paramString2, GregorianCalendar paramGregorianCalendar, py.b paramb, aya paramaya, Handler paramHandler)
  {
    mEmail = paramString1;
    mPassword = paramString2;
    if (paramGregorianCalendar != null)
    {
      paramString1 = new SimpleDateFormat("yyyy-MM-dd", new Locale("en"));
      paramString1.setCalendar(paramGregorianCalendar);
      mBirthday = paramString1.format(paramGregorianCalendar.getTime());
      paramString1 = new StringBuilder();
      paramString2 = new GregorianCalendar();
      int i = paramString2.get(1);
      int k = paramString2.get(2);
      int m = paramString2.get(5);
      int j = i - paramGregorianCalendar.get(1);
      if (k >= paramGregorianCalendar.get(2))
      {
        i = j;
        if (k == paramGregorianCalendar.get(2))
        {
          i = j;
          if (m >= paramGregorianCalendar.get(5)) {}
        }
      }
      else
      {
        i = j - 1;
      }
      mAge = i;
    }
    mSignupCallback = paramb;
    mDeviceTokenManager = paramaya;
    mHandler = paramHandler;
    a(biz.class, this);
  }
  
  final void a(@cgc biz parambiz, @cgb uc paramuc)
  {
    if (parambiz == null)
    {
      parambiz = atx.a(null, 2131493328, new Object[0]);
      mSignupCallback.a(mResponseCode, parambiz);
      return;
    }
    if (!StringUtils.isEmpty(parambiz.d()))
    {
      mSignupCallback.a(aud.a(parambiz.e()), parambiz.d());
      return;
    }
    mSignupCallback.a(mEmail, mBirthday, parambiz);
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
        Timber.e("SignupTask", "Retry signup after receiving SC_UNAUTHORIZED result.", new Object[0]);
        mHandler.postDelayed(new Runnable()
        {
          public final void run()
          {
            py.a(py.this);
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
    py.a locala = new py.a();
    assert ((locala.a() != null) && (locala.b() != null));
    locala.p(mEmail);
    locala.b(mPassword);
    locala.q(mAge);
    locala.r(mBirthday);
    locala.n(lx.a().a(new String[] { mEmail, mPassword, locala.a(), "/loq/register" }));
    Object localObject = ajx.w();
    if (localObject != null) {
      locala.i((String)localObject);
    }
    localObject = mDeviceTokenManager.a(false);
    if ((localObject != null) && (mId != null) && (mValue != null))
    {
      locala.j(mId);
      locala.k(aya.a((axz)localObject, mEmail, mPassword, locala.a(), locala.b()));
    }
    for (;;)
    {
      localObject = ajx.aE();
      if ((localObject != null) && (!((String)localObject).equals("{}"))) {
        locala.s((String)localObject);
      }
      return locala;
      locala.l("1");
    }
  }
  
  protected final String d()
  {
    return "/loq/register";
  }
  
  @tn
  public static final class a
    extends biy
  {
    a()
    {
      ts.b(this);
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(int paramInt, String paramString);
    
    public abstract void a(String paramString1, String paramString2, biz parambiz);
  }
}

/* Location:
 * Qualified Name:     py
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */