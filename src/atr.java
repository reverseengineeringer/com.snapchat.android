import android.text.TextUtils;

public final class atr
{
  public static final String CHANGE_EMAIL_KEY = "change_email_key";
  public static final String CHANGE_EMAIL_MESSAGE_KEY = "change_email_message_key";
  public static final boolean ENABLE_RED_GEAR_PHONE_FEATURE = false;
  public static final String RECOVERY_CODE_MESSAGE_KEY = "recovery_code_message_key";
  public static final String RECOVERY_CODE_SUCCEED_KEY = "recovery_code_succeed_key";
  private ajx mUserPrefs;
  
  public atr()
  {
    this(ajx.a());
  }
  
  public atr(ajx paramajx)
  {
    mUserPrefs = paramajx;
  }
  
  public static boolean a()
  {
    return (TextUtils.isEmpty(ajx.x())) || (TextUtils.getTrimmedLength(ajx.x()) == 0);
  }
  
  public static boolean b()
  {
    return (TextUtils.isEmpty(ajx.G())) || (!ajx.bm()) || (!TextUtils.isEmpty(ajx.bn()));
  }
}

/* Location:
 * Qualified Name:     atr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */