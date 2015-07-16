import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class qx
{
  private Map<String, re> mProviderMap;
  @Inject
  protected ri mScProvider;
  @Inject
  protected td mSquareProvider;
  
  @Inject
  public qx()
  {
    SnapchatApplication.b().c().a(this);
    mProviderMap = new HashMap();
    mProviderMap.put("snapcash", mScProvider);
    mProviderMap.put("SQUARE", mSquareProvider);
  }
  
  public static void a()
  {
    bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493341));
  }
  
  @chd
  public final re a(@chc String paramString)
  {
    return (re)mProviderMap.get(paramString);
  }
  
  public final boolean b(@chc String paramString)
  {
    return mProviderMap.containsKey(paramString);
  }
}

/* Location:
 * Qualified Name:     qx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */