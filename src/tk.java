import com.google.gson.annotations.SerializedName;

public final class tk
  extends tg
{
  public static final int SC_TOO_MANY_ATTEMPTS_STATUS_CODE = 429;
  private static final String TAG = "UpdateSquareSettingsTask";
  @chd
  String mPasscode;
  boolean mPasscodeEnabled;
  @chc
  private tk.b mUpdateSuccessListener;
  
  public tk(@chd String paramString, tk.b paramb)
  {
    mPasscodeEnabled = false;
    mPasscode = paramString;
    mUpdateSuccessListener = paramb;
  }
  
  public tk(tk.b paramb)
  {
    mPasscodeEnabled = true;
    mUpdateSuccessListener = paramb;
  }
  
  protected final String a()
  {
    return "cash/settings/passcode";
  }
  
  public final Object getRequestPayload()
  {
    return new tk.a();
  }
  
  public final void onResult(@chc us paramus)
  {
    int i = mResponseCode;
    if (mResponseCode == 200)
    {
      mUpdateSuccessListener.a();
      return;
    }
    mUpdateSuccessListener.a(mResponseCode);
  }
  
  @un
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
 * Qualified Name:     tk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */