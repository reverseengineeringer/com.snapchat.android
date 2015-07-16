import android.os.Bundle;
import com.google.gson.Gson;

public final class pw
  extends pk
{
  private static final String TAG = "UpdateFeatureSettingsTask";
  private static final String TASK_NAME = "UpdateFeatureSettingsTask";
  private aph mSnapchatServiceManager;
  
  public pw()
  {
    this(aph.a());
  }
  
  private pw(aph paramaph)
  {
    mSnapchatServiceManager = paramaph;
  }
  
  protected final String a()
  {
    return "/bq/update_feature_settings";
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("username", akr.l());
    bit localbit = new bit().a(Boolean.valueOf(akr.aa())).b(Boolean.valueOf(akr.ab()));
    localBundle.putString("settings", aul.a().toJson(localbit));
    return localBundle;
  }
  
  protected final void b(alp paramalp)
  {
    mSnapchatServiceManager.a(false, false);
  }
  
  protected final String c()
  {
    return "UpdateFeatureSettingsTask";
  }
}

/* Location:
 * Qualified Name:     pw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */