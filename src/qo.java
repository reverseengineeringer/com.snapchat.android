import android.os.Handler;
import android.os.Looper;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;

public class qo
  extends tx
  implements ui.b<bka>
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
  private final ayy mDeviceTokenManager;
  protected final String mEmail;
  private final Handler mHandler;
  private int mNumRetries = 0;
  private final String mPassword;
  private long mRetryMillis = 500L;
  private final qo.b mSignupCallback;
  
  static
  {
    if (!qo.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public qo(String paramString1, String paramString2, GregorianCalendar paramGregorianCalendar, qo.b paramb)
  {
    this(paramString1, paramString2, paramGregorianCalendar, paramb, ayy.a(), new Handler(Looper.getMainLooper()));
  }
  
  private qo(String paramString1, String paramString2, GregorianCalendar paramGregorianCalendar, qo.b paramb, ayy paramayy, Handler paramHandler)
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
    mDeviceTokenManager = paramayy;
    mHandler = paramHandler;
    registerCallback(bka.class, this);
  }
  
  final void a(@chd bka parambka, @chc us paramus)
  {
    if (parambka == null)
    {
      parambka = auv.a(null, 2131493328, new Object[0]);
      mSignupCallback.a(mResponseCode, parambka);
      return;
    }
    if (!StringUtils.isEmpty(parambka.d()))
    {
      mSignupCallback.a(avb.a(parambka.e()), parambka.d());
      return;
    }
    mSignupCallback.a(mEmail, mBirthday, parambka);
  }
  
  protected String getPath()
  {
    return "/loq/register";
  }
  
  public Object getRequestPayload()
  {
    qo.a locala = new qo.a();
    assert ((locala.a() != null) && (locala.b() != null));
    locala.p(mEmail);
    locala.b(mPassword);
    locala.q(mAge);
    locala.r(mBirthday);
    locala.n(mp.a().a(new String[] { mEmail, mPassword, locala.a(), "/loq/register" }));
    Object localObject = akr.w();
    if (localObject != null) {
      locala.i((String)localObject);
    }
    localObject = mDeviceTokenManager.a(false);
    if ((localObject != null) && (mId != null) && (mValue != null))
    {
      locala.j(mId);
      locala.k(ayy.a((ayx)localObject, mEmail, mPassword, locala.a(), locala.b()));
    }
    for (;;)
    {
      localObject = akr.aD();
      if ((localObject != null) && (!((String)localObject).equals("{}"))) {
        locala.s((String)localObject);
      }
      return locala;
      locala.l("1");
    }
  }
  
  public void onResult(@chc us paramus)
  {
    int j = 0;
    int i = j;
    if (mResponseCode == 401)
    {
      int k = mNumRetries;
      mNumRetries = (k + 1);
      i = j;
      if (k < 3)
      {
        i = 1;
        mHandler.postDelayed(new Runnable()
        {
          public final void run()
          {
            qo.a(qo.this);
            execute();
          }
        }, mRetryMillis);
      }
    }
    if (i == 0) {
      super.onResult(paramus);
    }
  }
  
  @ud
  public static final class a
    extends bjz
  {
    a()
    {
      ui.buildStaticAuthPayload(this);
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(int paramInt, String paramString);
    
    public abstract void a(String paramString1, String paramString2, bka parambka);
  }
}

/* Location:
 * Qualified Name:     qo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */