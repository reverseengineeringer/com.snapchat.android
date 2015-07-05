import com.snapchat.android.Timber;

public final class azt
{
  private static final String TAG = "NativeTaskFlagWatcher";
  private final azo mExceptionReporter;
  
  public azt()
  {
    this(new azo());
  }
  
  private azt(azo paramazo)
  {
    mExceptionReporter = paramazo;
  }
  
  public static void a()
  {
    boolean bool = ajx.bh();
    Timber.c("NativeTaskFlagWatcher", "getTranscodingInProgressFlag is " + bool, new Object[0]);
    if (bool)
    {
      azo.c(new bex("Transcoding flag was still set"));
      ajx.r(false);
    }
  }
}

/* Location:
 * Qualified Name:     azt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */