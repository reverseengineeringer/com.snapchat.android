import com.snapchat.android.util.debug.ReleaseManager;

public final class mw
{
  private ReleaseManager a;
  private akn b;
  
  public mw()
  {
    this(akn.a(), ReleaseManager.a());
  }
  
  private mw(akn paramakn, ReleaseManager paramReleaseManager)
  {
    b = paramakn;
    a = paramReleaseManager;
  }
  
  public final boolean a()
  {
    if ((!ReleaseManager.c()) && (!ReleaseManager.b())) {
      return false;
    }
    return b.a("EarlyUploadSnaps", "early_upload_snaps", false);
  }
}

/* Location:
 * Qualified Name:     mw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */