import com.google.gson.annotations.SerializedName;
import com.snapchat.android.Timber;

public final class su
  extends sq
{
  public static final int SC_TOO_MANY_ATTEMPTS_STATUS_CODE = 429;
  private static final String TAG = "UpdateSquareSettingsTask";
  @cgc
  String mPasscode;
  boolean mPasscodeEnabled;
  @cgb
  private su.b mUpdateSuccessListener;
  
  public su(@cgc String paramString, su.b paramb)
  {
    mPasscodeEnabled = false;
    mPasscode = paramString;
    mUpdateSuccessListener = paramb;
  }
  
  public su(su.b paramb)
  {
    mPasscodeEnabled = true;
    mUpdateSuccessListener = paramb;
  }
  
  public final void a(@cgb uc paramuc)
  {
    Timber.b("UpdateSquareSettingsTask", "CASH-LOG: UpdateSquareSettingsTask finished with status code %d", new Object[] { Integer.valueOf(mResponseCode) });
    if (mResponseCode == 200)
    {
      mUpdateSuccessListener.a();
      return;
    }
    mUpdateSuccessListener.a(mResponseCode);
  }
  
  public final Object b()
  {
    return new su.a();
  }
  
  protected final String e()
  {
    return "cash/settings/passcode";
  }
  
  @tx
  final class a
  {
    @SerializedName("passcode")
    final String passcode = mPasscode;
    @SerializedName("passcode_confirmation_enabled")
    final boolean passcodeConfirmation = mPasscodeEnabled;
    
    a() {}
  }
  
  public static abstract interface b
  {
    public abstract void a();
    
    public abstract void a(int paramInt);
  }
}

/* Location:
 * Qualified Name:     su
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */