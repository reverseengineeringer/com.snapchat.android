import android.content.Context;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.ui.caption.CaptionTypeEnums;
import com.squareup.otto.Bus;
import org.apache.commons.lang3.StringUtils;

public final class aev
{
  public final nb a;
  
  public aev()
  {
    this(new nb());
  }
  
  private aev(nb paramnb)
  {
    a = paramnb;
  }
  
  public static int a(String paramString)
  {
    if (StringUtils.isNumeric(paramString))
    {
      int i = Integer.parseInt(paramString);
      if ((i >= 0) && (i <= CaptionTypeEnums.values().length)) {
        return i;
      }
    }
    return -1;
  }
  
  public static void a(adb paramadb, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramadb == null) {
      return;
    }
    i = paramInt4;
    h = paramInt3;
    f = paramInt1;
    g = paramInt2;
  }
  
  public static void a(boolean paramBoolean, @cgb String paramString)
  {
    SnapchatApplication localSnapchatApplication = SnapchatApplication.b();
    if (localSnapchatApplication == null) {
      return;
    }
    Bus localBus = ban.a();
    paramString = "sent-" + paramString;
    if (paramBoolean)
    {
      localBus.a(new bcs(paramString));
      return;
    }
    localBus.a(new bcy(paramString, new bbg(null, localSnapchatApplication.getString(2131493132), AndroidNotificationManager.a, -1, true, paramString)));
  }
}

/* Location:
 * Qualified Name:     aev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */