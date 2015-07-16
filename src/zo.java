import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.app.feature.messaging.feed.model.FeedIconChangeType;
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

public final class zo
  implements SendDSnapTask.c
{
  private final aki a;
  private final aya b;
  private final axp c;
  private final afv d;
  private final akr e;
  private final String f = "SendDSnapController";
  
  public zo()
  {
    this(aki.a(), aya.a(), axp.a.a(), new afv(), akr.a());
  }
  
  private zo(@chc aki paramaki, @chc aya paramaya, @chc axp paramaxp, @chc afv paramafv, @chc akr paramakr)
  {
    a = paramaki;
    b = paramaya;
    c = paramaxp;
    d = paramafv;
    e = paramakr;
  }
  
  public final void a(aji paramaji)
  {
    Object localObject = mMediaMailingMetadata;
    switch (zo.1.a[mUploadStatus.ordinal()])
    {
    default: 
      localObject = MediaMailingMetadata.SendStatus.FAILED;
    }
    for (;;)
    {
      a.a(paramaji, (MediaMailingMetadata.SendStatus)localObject);
      localObject = mMediaMailingMetadata;
      switch (zo.1.a[mUploadStatus.ordinal()])
      {
      default: 
        return;
        localObject = MediaMailingMetadata.SendStatus.SENDING;
        continue;
        localObject = MediaMailingMetadata.SendStatus.SENDING_ON_UPLOAD;
      }
    }
    new SendDSnapTask(paramaji, this, new HashMap()).execute();
    return;
    new acw(paramaji, this).execute();
    return;
    ((MediaMailingMetadata)localObject).c();
  }
  
  public final void a(alc paramalc, ChatConversation paramChatConversation)
  {
    aji localaji = (aji)aki.a().f().get(paramalc.d());
    if (localaji == null)
    {
      paramalc.C_();
      paramChatConversation.a(paramalc, FeedIconChangeType.FAILED_TO_SEND);
      bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493164));
      return;
    }
    paramChatConversation = mMediaMailingMetadata;
    if ((paramChatConversation.d() == null) || (paramChatConversation.d().size() == 0)) {
      throw new IllegalStateException("Retrying sending snap with no recipients!");
    }
    if ((aeb)mMediaExtras == null)
    {
      paramChatConversation = new aeb();
      l = paramalc.E();
      m = paramalc.F();
      mMediaExtras = paramChatConversation;
    }
    try
    {
      a(localaji);
      bbo.a().a(new beq());
      return;
    }
    catch (acw.b paramalc)
    {
      for (;;)
      {
        AlertDialogUtils.a(2131493164, SnapchatApplication.b());
        new ErrorMetric(paramalc.getMessage()).a(paramalc).e();
      }
    }
  }
  
  public final void b(aji paramaji)
  {
    axp localaxp = c;
    paramaji = mClientId;
    mCache.c(paramaji);
    mCache.a(true);
  }
  
  public final void c(aji paramaji)
  {
    afv.a(true, mClientId);
    a.a(paramaji, MediaMailingMetadata.SendStatus.SENT);
    paramaji.f();
    paramaji.k();
    akr.aN();
    if ((paramaji instanceof aku))
    {
      String str = ((aku)paramaji).n();
      if (str != null) {
        aya.a(str);
      }
    }
    b(paramaji);
  }
  
  public final void d(aji paramaji)
  {
    if (paramaji == null) {
      return;
    }
    afv.a(false, mClientId);
    e(paramaji);
    a.a(paramaji, MediaMailingMetadata.SendStatus.FAILED);
    paramaji.f();
    paramaji.k();
  }
  
  public final void e(aji paramaji)
  {
    if (paramaji == null) {}
    for (;;)
    {
      return;
      paramaji = ((akg)mMediaMailingMetadata).f();
      int j = paramaji.length;
      int i = 0;
      while (i < j)
      {
        ChatConversation localChatConversation = zi.b(paramaji[i]);
        if (localChatConversation != null) {
          mMyLastSeqNum = mMyLastAckedSeqNum;
        }
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     zo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */