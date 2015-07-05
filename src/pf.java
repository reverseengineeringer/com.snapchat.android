import android.os.Bundle;
import com.google.gson.Gson;
import com.snapchat.android.Timber;

public final class pf
  extends ot
{
  private static final String TAG = "UpdateFeatureSettingsTask";
  private static final String TASK_NAME = "UpdateFeatureSettingsTask";
  private aol mSnapchatServiceManager;
  
  public pf()
  {
    this(aol.a());
  }
  
  private pf(aol paramaol)
  {
    mSnapchatServiceManager = paramaol;
  }
  
  protected final String a()
  {
    return "/bq/update_feature_settings";
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("username", ajx.l());
    bht localbht = new bht().a(Boolean.valueOf(ajx.ab())).c(Boolean.valueOf(ajx.aa())).b(Boolean.valueOf(ajx.ac()));
    localBundle.putString("settings", atn.a().toJson(localbht));
    return localBundle;
  }
  
  protected final void b(aku paramaku)
  {
    Timber.c("UpdateFeatureSettingsTask", "UpdateFeatureSettingsTask: SUCCESS", new Object[0]);
    mSnapchatServiceManager.a(false, false);
  }
  
  protected final String c()
  {
    return "UpdateFeatureSettingsTask";
  }
}

/* Location:
 * Qualified Name:     pf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */