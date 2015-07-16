import android.content.Context;
import android.os.SystemClock;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.MediaMailingMetadata.PostStatus;
import com.snapchat.android.model.MediaMailingMetadata.SendStatus;
import com.snapchat.android.model.MediaMailingMetadata.UploadStatus;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class zp
  implements ph.a, po.a
{
  public final aki a;
  public final axv b;
  public final nz c;
  private final NetworkAnalytics d;
  private final aya e;
  private final oh f;
  private final og g;
  private final ama h;
  private final oe i;
  
  public zp()
  {
    this(aki.a(), NetworkAnalytics.a(), axv.a(), aya.a(), new oh(), og.a(), ama.a(), oe.a(), nz.a());
  }
  
  private zp(@chc aki paramaki, @chc NetworkAnalytics paramNetworkAnalytics, @chc axv paramaxv, @chc aya paramaya, @chc oh paramoh, @chc og paramog, @chc ama paramama, @chc oe paramoe, @chc nz paramnz)
  {
    a = paramaki;
    d = paramNetworkAnalytics;
    b = paramaxv;
    e = paramaya;
    f = paramoh;
    g = paramog;
    h = paramama;
    i = paramoe;
    c = paramnz;
  }
  
  private static void a(@chc aku paramaku)
  {
    paramaku = paramaku.n();
    if (paramaku != null) {
      aya.a(paramaku);
    }
  }
  
  private static void a(@chc MediaMailingMetadata paramMediaMailingMetadata)
  {
    if ((paramMediaMailingMetadata.d() == null) || (paramMediaMailingMetadata.d().size() == 0)) {
      throw new IllegalStateException("Sending snap with no recipients! Did you intend to post a story?");
    }
  }
  
  private boolean a()
  {
    if (!h.d())
    {
      SnapchatApplication localSnapchatApplication = SnapchatApplication.b();
      if (localSnapchatApplication != null) {
        AlertDialogUtils.a(localSnapchatApplication.getString(2131493252), localSnapchatApplication);
      }
      return false;
    }
    return true;
  }
  
  private MediaMailingMetadata.SendStatus j(aji paramaji)
  {
    paramaji = mMediaMailingMetadata;
    switch (zp.3.a[mUploadStatus.ordinal()])
    {
    default: 
      return MediaMailingMetadata.SendStatus.FAILED;
    case 1: 
    case 2: 
      f.a();
      return MediaMailingMetadata.SendStatus.SENDING;
    }
    f.a();
    return MediaMailingMetadata.SendStatus.SENDING_ON_UPLOAD;
  }
  
  private static MediaMailingMetadata.PostStatus k(aji paramaji)
  {
    paramaji = mMediaMailingMetadata;
    switch (zp.3.a[mUploadStatus.ordinal()])
    {
    default: 
      return MediaMailingMetadata.PostStatus.FAILED;
    case 1: 
    case 2: 
    case 5: 
      return MediaMailingMetadata.PostStatus.POSTING;
    }
    return MediaMailingMetadata.PostStatus.POSTING_ON_UPLOAD;
  }
  
  private static void l(@chc aji paramaji)
  {
    String str = mClientId;
    paramaji.f();
    paramaji.k();
  }
  
  public final void a(@chc aji paramaji)
  {
    int k = 1;
    og.c(paramaji);
    d.a("STORY_POST_DELAY", "SNAP_SENT_STORY_DUMMY", mClientId, avr.a(paramaji), mTimerValueOrDuration, true);
    a.a(paramaji, MediaMailingMetadata.PostStatus.POSTED);
    MediaMailingMetadata localMediaMailingMetadata = mMediaMailingMetadata;
    LinkedHashSet localLinkedHashSet = localMediaMailingMetadata.d();
    int j = k;
    if (localLinkedHashSet != null)
    {
      if (!localLinkedHashSet.isEmpty()) {
        break label94;
      }
      j = k;
    }
    for (;;)
    {
      if (j != 0)
      {
        if ((paramaji instanceof aku)) {
          a((aku)paramaji);
        }
        l(paramaji);
      }
      return;
      label94:
      j = k;
      if (mSendStatus != MediaMailingMetadata.SendStatus.SENT) {
        j = 0;
      }
    }
  }
  
  public final boolean a(@chc final aji paramaji, final boolean paramBoolean1, final boolean paramBoolean2)
  {
    if (!a())
    {
      if (paramBoolean1) {
        a.a(paramaji, MediaMailingMetadata.SendStatus.FAILED);
      }
      if (paramBoolean2) {
        a.a(paramaji, MediaMailingMetadata.PostStatus.FAILED);
      }
      return false;
    }
    Object localObject = d;
    String str = mClientId;
    if (paramBoolean1) {
      ((NetworkAnalytics)localObject).a("SNAP_SENT_DELAY", str, "retry_send_failed_snap");
    }
    if (paramBoolean2) {
      ((NetworkAnalytics)localObject).a("STORY_POST_DELAY", str, "retry_post_failed_story");
    }
    localObject = mMediaMailingMetadata;
    if (paramBoolean1) {
      a((MediaMailingMetadata)localObject);
    }
    if (paramBoolean2)
    {
      localObject = (akg)localObject;
      if ((mPostToStories == null) || (mPostToStories.size() == 0)) {
        throw new IllegalStateException("Posting story with no post-to stories! Did you mean to send as snap?");
      }
    }
    bhp.b(new Runnable()
    {
      public final void run()
      {
        if (axv.a(paramaji) != null)
        {
          if (paramBoolean1)
          {
            f(paramaji);
            g(paramaji);
          }
          if (paramBoolean2)
          {
            h(paramaji);
            i(paramaji);
          }
          return;
        }
        b(paramaji, paramBoolean1, paramBoolean2);
      }
    });
    return true;
  }
  
  public final void b(@chc aji paramaji)
  {
    if (paramaji == null) {
      return;
    }
    d.a("STORY_POST_DELAY", "SNAP_SENT_STORY_DUMMY", mClientId, avr.a(paramaji), mTimerValueOrDuration, false);
    a();
    a.a(paramaji, MediaMailingMetadata.PostStatus.FAILED);
  }
  
  public final void b(final aji paramaji, final boolean paramBoolean1, final boolean paramBoolean2)
  {
    if (paramBoolean2)
    {
      a.a(paramaji, MediaMailingMetadata.PostStatus.WILL_POST_AFTER_SAVE);
      bbo.a().a(new bfa());
    }
    new axu()
    {
      protected final void a(@chc Boolean paramAnonymousBoolean)
      {
        super.a(paramAnonymousBoolean);
        if (paramBoolean1)
        {
          if (!paramAnonymousBoolean.booleanValue()) {
            break label56;
          }
          g(paramaji);
        }
        for (;;)
        {
          if (paramBoolean2)
          {
            if (!paramAnonymousBoolean.booleanValue()) {
              break;
            }
            i(paramaji);
          }
          return;
          label56:
          String str = paramajimClientId;
          a.a(paramaji, MediaMailingMetadata.SendStatus.FAILED);
        }
        paramAnonymousBoolean = paramajimClientId;
        a.a(paramaji, MediaMailingMetadata.PostStatus.FAILED);
      }
      
      protected final void onPreExecute()
      {
        super.onPreExecute();
        if (paramBoolean1) {
          f(paramaji);
        }
        if (paramBoolean2) {
          h(paramaji);
        }
      }
    }.executeOnExecutor(avf.MISCELLANEOUS_EXECUTOR, new aji[] { paramaji });
  }
  
  public final void c(@chc aji paramaji)
  {
    int k = 1;
    og.b(paramaji);
    MediaMailingMetadata localMediaMailingMetadata = mMediaMailingMetadata;
    Object localObject = f;
    if (mTimePressSend == -1L)
    {
      if (ReleaseManager.e()) {
        throw new IllegalStateException();
      }
    }
    else
    {
      long l1 = SystemClock.elapsedRealtime();
      long l2 = mTimePressSend;
      new EasyMetric("SNAP_SEND_TIMED").a("success", Boolean.valueOf(true)).a("reachability", mReachability).a(l1 - l2).e();
      mTimePressSend = -1L;
    }
    d.a("SNAP_SENT_DELAY", "SNAP_SENT_SNAP_DUMMY", mClientId, avr.a(paramaji), mTimerValueOrDuration, true);
    localObject = i;
    mSnapSends.incrementAndGet();
    mSnapEngagement.incrementAndGet();
    a.a(paramaji, MediaMailingMetadata.SendStatus.SENT);
    if (mDeleteCacheAfterSent) {
      b.b(paramaji);
    }
    int j = k;
    if ((localMediaMailingMetadata instanceof akg))
    {
      localObject = mPostToStories;
      j = k;
      if (localObject != null)
      {
        if (!((ArrayList)localObject).isEmpty()) {
          break label242;
        }
        j = k;
      }
    }
    for (;;)
    {
      if (j != 0)
      {
        if ((paramaji instanceof aku)) {
          a((aku)paramaji);
        }
        l(paramaji);
      }
      return;
      label242:
      j = k;
      if (mPostStatus != MediaMailingMetadata.PostStatus.POSTED) {
        j = 0;
      }
    }
  }
  
  public final void d(@chc aji paramaji)
  {
    if (paramaji == null) {
      return;
    }
    a();
    f.b();
    d.a("SNAP_SENT_DELAY", "SNAP_SENT_SNAP_DUMMY", mClientId, avr.a(paramaji), mTimerValueOrDuration, false);
    a.a(paramaji, MediaMailingMetadata.SendStatus.FAILED);
  }
  
  public final void e(aji paramaji)
  {
    MediaMailingMetadata localMediaMailingMetadata = mMediaMailingMetadata;
    Object localObject = null;
    if (mSnapType == Mediabryo.SnapType.SNAP) {
      localObject = mPostToStories;
    }
    LinkedHashSet localLinkedHashSet = localMediaMailingMetadata.d();
    if ((localObject == null) || (((List)localObject).isEmpty()))
    {
      a(localMediaMailingMetadata);
      b(paramaji, true, false);
      mDeleteCacheAfterSent = true;
      return;
    }
    if (localLinkedHashSet.isEmpty())
    {
      b(paramaji, false, true);
      return;
    }
    if (mMediaMailingMetadata).mUploadStatus == MediaMailingMetadata.UploadStatus.UPLOADED)
    {
      localObject = j(paramaji);
      a.a(paramaji, (MediaMailingMetadata.SendStatus)localObject);
      localObject = k(paramaji);
      a.a(paramaji, (MediaMailingMetadata.PostStatus)localObject);
      bbo.a().a(new bfa());
      new pn(paramaji, this, this).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
      return;
    }
    b(paramaji, true, true);
  }
  
  protected final void f(@chc aji paramaji)
  {
    MediaMailingMetadata.SendStatus localSendStatus = j(paramaji);
    a.a(paramaji, localSendStatus);
  }
  
  protected final void g(@chc aji paramaji)
  {
    MediaMailingMetadata localMediaMailingMetadata = mMediaMailingMetadata;
    switch (zp.3.a[mUploadStatus.ordinal()])
    {
    }
    do
    {
      return;
      new po(paramaji, this).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
      return;
      new pp(paramaji, this).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
      return;
      localMediaMailingMetadata.c();
    } while (!new mw().a());
    EasyMetric.EasyMetricFactory.a("USER_SEND_SNAP_MEDIA_UPLOADING").a(false);
  }
  
  protected final void h(@chc aji paramaji)
  {
    MediaMailingMetadata.PostStatus localPostStatus = k(paramaji);
    a.a(paramaji, localPostStatus);
  }
  
  protected final void i(@chc aji paramaji)
  {
    akg localakg = (akg)mMediaMailingMetadata;
    switch (zp.3.a[mUploadStatus.ordinal()])
    {
    default: 
      return;
    case 1: 
      new ph(paramaji, this).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
      return;
    case 2: 
    case 5: 
      new pi(paramaji, this).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
      return;
    }
    mShouldExecutePostStoryTaskAfterUpload = true;
  }
}

/* Location:
 * Qualified Name:     zp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */