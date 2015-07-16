import android.text.TextUtils;

public final class aup
{
  public static final String CHANGE_EMAIL_KEY = "change_email_key";
  public static final String CHANGE_EMAIL_MESSAGE_KEY = "change_email_message_key";
  public static final boolean ENABLE_RED_GEAR_PHONE_FEATURE = false;
  public static final String RECOVERY_CODE_MESSAGE_KEY = "recovery_code_message_key";
  public static final String RECOVERY_CODE_SUCCEED_KEY = "recovery_code_succeed_key";
  private akr mUserPrefs;
  
  public aup()
  {
    this(akr.a());
  }
  
  public aup(akr paramakr)
  {
    mUserPrefs = paramakr;
  }
  
  public static boolean a()
  {
    return (TextUtils.isEmpty(akr.x())) || (TextUtils.getTrimmedLength(akr.x()) == 0);
  }
  
  public static boolean b()
  {
    return (TextUtils.isEmpty(akr.G())) || (!akr.bj()) || (!TextUtils.isEmpty(akr.bk()));
  }
}

/* Location:
 * Qualified Name:     aup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */