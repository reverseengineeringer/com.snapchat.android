import android.content.Context;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.ui.caption.CaptionTypeEnums;
import com.squareup.otto.Bus;
import org.apache.commons.lang3.StringUtils;

public final class afv
{
  public final ns a;
  
  public afv()
  {
    this(new ns());
  }
  
  private afv(ns paramns)
  {
    a = paramns;
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
  
  public static void a(aeb paramaeb, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramaeb == null) {
      return;
    }
    i = paramInt4;
    h = paramInt3;
    f = paramInt1;
    g = paramInt2;
  }
  
  public static void a(boolean paramBoolean, @chc String paramString)
  {
    SnapchatApplication localSnapchatApplication = SnapchatApplication.b();
    if (localSnapchatApplication == null) {
      return;
    }
    Bus localBus = bbo.a();
    paramString = "sent-" + paramString;
    if (paramBoolean)
    {
      localBus.a(new bds(paramString));
      return;
    }
    localBus.a(new bdy(paramString, new bcg(localSnapchatApplication.getString(2131493132), AndroidNotificationManager.a, -1, paramString)));
  }
}

/* Location:
 * Qualified Name:     afv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */