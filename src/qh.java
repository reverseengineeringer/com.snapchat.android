import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class qh
{
  private Map<String, qo> mProviderMap;
  @Inject
  protected qs mScProvider;
  @Inject
  protected sn mSquareProvider;
  
  @Inject
  public qh()
  {
    SnapchatApplication.b().c().a(this);
    mProviderMap = new HashMap();
    mProviderMap.put("snapcash", mScProvider);
    mProviderMap.put("SQUARE", mSquareProvider);
  }
  
  public static void a()
  {
    ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493341));
  }
  
  @cgc
  public final qo a(@cgb String paramString)
  {
    return (qo)mProviderMap.get(paramString);
  }
  
  public final boolean b(@cgb String paramString)
  {
    return mProviderMap.containsKey(paramString);
  }
}

/* Location:
 * Qualified Name:     qh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */