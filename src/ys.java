import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.discover.api2.SendDSnapTask;
import com.snapchat.android.discover.api2.SendDSnapTask.c;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.MediaMailingMetadata.SendStatus;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.cache.DiscoverShareCache;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

public final class ys
  implements SendDSnapTask.c
{
  private final ajn a;
  private final axc b;
  private final awr c;
  private final aev d;
  private final ajx e;
  private final String f = "SendDSnapController";
  
  public ys()
  {
    this(ajn.a(), axc.a(), awr.a.a(), new aev(), ajx.a());
  }
  
  private ys(@cgb ajn paramajn, @cgb axc paramaxc, @cgb awr paramawr, @cgb aev paramaev, @cgb ajx paramajx)
  {
    a = paramajn;
    b = paramaxc;
    c = paramawr;
    d = paramaev;
    e = paramajx;
  }
  
  public final void a(aim paramaim)
  {
    Object localObject = mMediaMailingMetadata;
    switch (ys.1.a[mUploadStatus.ordinal()])
    {
    default: 
      localObject = MediaMailingMetadata.SendStatus.FAILED;
    }
    for (;;)
    {
      a.a(paramaim, (MediaMailingMetadata.SendStatus)localObject);
      localObject = mMediaMailingMetadata;
      switch (ys.1.a[mUploadStatus.ordinal()])
      {
      default: 
        return;
        localObject = MediaMailingMetadata.SendStatus.SENDING;
        continue;
        localObject = MediaMailingMetadata.SendStatus.SENDING_ON_UPLOAD;
      }
    }
    new SendDSnapTask(paramaim, this, new HashMap()).f();
    return;
    new abw(paramaim, this).f();
    return;
    ((MediaMailingMetadata)localObject).c();
  }
  
  public final void a(akh paramakh)
  {
    aim localaim = (aim)ajn.a().f().get(paramakh.d());
    if (localaim == null)
    {
      paramakh.p();
      Timber.f("SendDSnapController", "Failed DSnap not found by given snapId.", new Object[0]);
      ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493165));
      return;
    }
    Object localObject = mMediaMailingMetadata;
    if ((((MediaMailingMetadata)localObject).d() == null) || (((MediaMailingMetadata)localObject).d().size() == 0)) {
      throw new IllegalStateException("Retrying sending snap with no recipients!");
    }
    if ((adb)mMediaExtras == null)
    {
      localObject = new adb();
      l = paramakh.D();
      m = paramakh.E();
      mMediaExtras = ((aiz)localObject);
    }
    try
    {
      a(localaim);
      ban.a().a(new bdq());
      return;
    }
    catch (abw.b paramakh)
    {
      for (;;)
      {
        AlertDialogUtils.a(2131493165, SnapchatApplication.b());
        new ErrorMetric(paramakh.getMessage()).a(paramakh).d();
      }
    }
  }
  
  public final void b(aim paramaim)
  {
    awr localawr = c;
    paramaim = mClientId;
    mCache.c(paramaim);
    mCache.a(true);
  }
  
  public final void c(aim paramaim)
  {
    aev.a(true, mClientId);
    a.a(paramaim, MediaMailingMetadata.SendStatus.SENT);
    paramaim.f();
    paramaim.k();
    ajx.aO();
    if ((paramaim instanceof ajm))
    {
      String str = ((ajm)paramaim).n();
      if (str != null) {
        axc.a(str);
      }
    }
    b(paramaim);
  }
  
  public final void d(aim paramaim)
  {
    if (paramaim == null) {
      return;
    }
    aev.a(false, mClientId);
    e(paramaim);
    a.a(paramaim, MediaMailingMetadata.SendStatus.FAILED);
    paramaim.f();
    paramaim.k();
  }
  
  public final void e(aim paramaim)
  {
    if (paramaim == null) {}
    for (;;)
    {
      return;
      paramaim = ((ajk)mMediaMailingMetadata).f();
      int j = paramaim.length;
      int i = 0;
      while (i < j)
      {
        ChatConversation localChatConversation = ym.b(paramaim[i]);
        if (localChatConversation != null) {
          mMyLastSeqNum = mMyLastAckedSeqNum;
        }
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     ys
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */