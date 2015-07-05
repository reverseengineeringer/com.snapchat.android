import android.content.Context;
import android.os.SystemClock;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
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

public final class yt
  implements oq.a, ox.a
{
  public final ajn a;
  public final awx b;
  public final ni c;
  private final NetworkAnalytics d;
  private final axc e;
  private final nq f;
  private final np g;
  private final ale h;
  private final nn i;
  
  public yt()
  {
    this(ajn.a(), NetworkAnalytics.a(), awx.a(), axc.a(), new nq(), np.a(), ale.a(), nn.a(), ni.a());
  }
  
  private yt(@cgb ajn paramajn, @cgb NetworkAnalytics paramNetworkAnalytics, @cgb awx paramawx, @cgb axc paramaxc, @cgb nq paramnq, @cgb np paramnp, @cgb ale paramale, @cgb nn paramnn, @cgb ni paramni)
  {
    a = paramajn;
    d = paramNetworkAnalytics;
    b = paramawx;
    e = paramaxc;
    f = paramnq;
    g = paramnp;
    h = paramale;
    i = paramnn;
    c = paramni;
  }
  
  private static void a(@cgb ajm paramajm)
  {
    paramajm = paramajm.n();
    if (paramajm != null) {
      axc.a(paramajm);
    }
  }
  
  private static void a(@cgb MediaMailingMetadata paramMediaMailingMetadata)
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
  
  private MediaMailingMetadata.SendStatus j(aim paramaim)
  {
    paramaim = mMediaMailingMetadata;
    switch (yt.3.a[mUploadStatus.ordinal()])
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
  
  private static MediaMailingMetadata.PostStatus k(aim paramaim)
  {
    paramaim = mMediaMailingMetadata;
    switch (yt.3.a[mUploadStatus.ordinal()])
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
  
  private static void l(@cgb aim paramaim)
  {
    Timber.c("SendSnapController", "adding CompositeImageBitmap and RawImageBitmap to recycle pool. | Client ID: %s", new Object[] { mClientId });
    paramaim.f();
    paramaim.k();
  }
  
  public final void a(@cgb aim paramaim)
  {
    int k = 1;
    np.c(paramaim);
    d.a("STORY_POST_DELAY", "SNAP_SENT_STORY_DUMMY", mClientId, aut.a(paramaim), mTimerValueOrDuration, true);
    a.a(paramaim, MediaMailingMetadata.PostStatus.POSTED);
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
        if ((paramaim instanceof ajm)) {
          a((ajm)paramaim);
        }
        l(paramaim);
      }
      return;
      label94:
      j = k;
      if (mSendStatus != MediaMailingMetadata.SendStatus.SENT) {
        j = 0;
      }
    }
  }
  
  public final boolean a(@cgb final aim paramaim, final boolean paramBoolean1, final boolean paramBoolean2)
  {
    if (!a())
    {
      if (paramBoolean1) {
        a.a(paramaim, MediaMailingMetadata.SendStatus.FAILED);
      }
      if (paramBoolean2) {
        a.a(paramaim, MediaMailingMetadata.PostStatus.FAILED);
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
      localObject = (ajk)localObject;
      if ((mPostToStories == null) || (mPostToStories.size() == 0)) {
        throw new IllegalStateException("Posting story with no post-to stories! Did you mean to send as snap?");
      }
    }
    bgp.b(new Runnable()
    {
      public final void run()
      {
        if (awx.a(paramaim) != null)
        {
          if (paramBoolean1)
          {
            f(paramaim);
            g(paramaim);
          }
          if (paramBoolean2)
          {
            h(paramaim);
            i(paramaim);
          }
          return;
        }
        b(paramaim, paramBoolean1, paramBoolean2);
      }
    });
    return true;
  }
  
  public final void b(@cgb aim paramaim)
  {
    if (paramaim == null)
    {
      Timber.e("SendSnapController", "Unexpected Null Snapbryo at onStorySnapFailedToPost", new Object[0]);
      return;
    }
    d.a("STORY_POST_DELAY", "SNAP_SENT_STORY_DUMMY", mClientId, aut.a(paramaim), mTimerValueOrDuration, false);
    a();
    a.a(paramaim, MediaMailingMetadata.PostStatus.FAILED);
  }
  
  public final void b(final aim paramaim, final boolean paramBoolean1, final boolean paramBoolean2)
  {
    if (paramBoolean2)
    {
      a.a(paramaim, MediaMailingMetadata.PostStatus.WILL_POST_AFTER_SAVE);
      ban.a().a(new beb());
    }
    new aww()
    {
      protected final void a(@cgb Boolean paramAnonymousBoolean)
      {
        super.a(paramAnonymousBoolean);
        if (paramBoolean1)
        {
          if (!paramAnonymousBoolean.booleanValue()) {
            break label56;
          }
          g(paramaim);
        }
        for (;;)
        {
          if (paramBoolean2)
          {
            if (!paramAnonymousBoolean.booleanValue()) {
              break;
            }
            i(paramaim);
          }
          return;
          label56:
          Timber.c("SaveSentSnapToCacheTask", "Can not send snap because it was not saved to the cache. | Client ID: %s", new Object[] { paramaimmClientId });
          a.a(paramaim, MediaMailingMetadata.SendStatus.FAILED);
        }
        Timber.c("SaveSentSnapToCacheTask", "Can not post story because is was not saved to the cache. | Client ID: %s", new Object[] { paramaimmClientId });
        a.a(paramaim, MediaMailingMetadata.PostStatus.FAILED);
      }
      
      protected final void onPreExecute()
      {
        super.onPreExecute();
        if (paramBoolean1) {
          f(paramaim);
        }
        if (paramBoolean2) {
          h(paramaim);
        }
      }
    }.executeOnExecutor(auh.MISCELLANEOUS_EXECUTOR, new aim[] { paramaim });
  }
  
  public final void c(@cgb aim paramaim)
  {
    int k = 1;
    np.b(paramaim);
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
      new EasyMetric("SNAP_SEND_TIMED").a("success", Boolean.valueOf(true)).a("reachability", mReachability).a(l1 - l2).d();
      mTimePressSend = -1L;
    }
    d.a("SNAP_SENT_DELAY", "SNAP_SENT_SNAP_DUMMY", mClientId, aut.a(paramaim), mTimerValueOrDuration, true);
    localObject = i;
    mSnapSends.incrementAndGet();
    mSnapEngagement.incrementAndGet();
    a.a(paramaim, MediaMailingMetadata.SendStatus.SENT);
    if (mDeleteCacheAfterSent) {
      b.b(paramaim);
    }
    int j = k;
    if ((localMediaMailingMetadata instanceof ajk))
    {
      localObject = mPostToStories;
      j = k;
      if (localObject != null)
      {
        if (!((ArrayList)localObject).isEmpty()) {
          break label243;
        }
        j = k;
      }
    }
    for (;;)
    {
      if (j != 0)
      {
        if ((paramaim instanceof ajm)) {
          a((ajm)paramaim);
        }
        l(paramaim);
      }
      return;
      label243:
      j = k;
      if (mPostStatus != MediaMailingMetadata.PostStatus.POSTED) {
        j = 0;
      }
    }
  }
  
  public final void d(@cgb aim paramaim)
  {
    if (paramaim == null)
    {
      Timber.e("SendSnapController", "Unexpected Null Snapbryo at onSnapFailedToSend", new Object[0]);
      return;
    }
    a();
    f.b();
    d.a("SNAP_SENT_DELAY", "SNAP_SENT_SNAP_DUMMY", mClientId, aut.a(paramaim), mTimerValueOrDuration, false);
    a.a(paramaim, MediaMailingMetadata.SendStatus.FAILED);
  }
  
  public final void e(aim paramaim)
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
      b(paramaim, true, false);
      mDeleteCacheAfterSent = true;
      return;
    }
    if (localLinkedHashSet.isEmpty())
    {
      b(paramaim, false, true);
      return;
    }
    if (mMediaMailingMetadata).mUploadStatus == MediaMailingMetadata.UploadStatus.UPLOADED)
    {
      localObject = j(paramaim);
      a.a(paramaim, (MediaMailingMetadata.SendStatus)localObject);
      localObject = k(paramaim);
      a.a(paramaim, (MediaMailingMetadata.PostStatus)localObject);
      ban.a().a(new beb());
      new ow(paramaim, this, this).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
      return;
    }
    b(paramaim, true, true);
  }
  
  protected final void f(@cgb aim paramaim)
  {
    MediaMailingMetadata.SendStatus localSendStatus = j(paramaim);
    a.a(paramaim, localSendStatus);
  }
  
  protected final void g(@cgb aim paramaim)
  {
    MediaMailingMetadata localMediaMailingMetadata = mMediaMailingMetadata;
    switch (yt.3.a[mUploadStatus.ordinal()])
    {
    }
    do
    {
      return;
      new ox(paramaim, this).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
      return;
      new oy(paramaim, this).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
      return;
      localMediaMailingMetadata.c();
    } while (!new me().a());
    EasyMetric.EasyMetricFactory.a("USER_SEND_SNAP_MEDIA_UPLOADING").a(false);
  }
  
  protected final void h(@cgb aim paramaim)
  {
    MediaMailingMetadata.PostStatus localPostStatus = k(paramaim);
    a.a(paramaim, localPostStatus);
  }
  
  protected final void i(@cgb aim paramaim)
  {
    ajk localajk = (ajk)mMediaMailingMetadata;
    switch (yt.3.a[mUploadStatus.ordinal()])
    {
    default: 
      return;
    case 1: 
      new oq(paramaim, this).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
      return;
    case 2: 
    case 5: 
      new or(paramaim, this).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
      return;
    }
    mShouldExecutePostStoryTaskAfterUpload = true;
  }
}

/* Location:
 * Qualified Name:     yt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */