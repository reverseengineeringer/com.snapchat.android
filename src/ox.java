import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.google.gson.Gson;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.MediaMailingMetadata.SendStatus;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Snap.ClientSnapStatus;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ox
  extends ot
{
  public static final String PATH = "/loq/send";
  private static final String TASK_NAME = "SendSnapTask";
  protected Context mContext;
  protected MediaMailingMetadata mMediaMailingMetadata;
  protected NetworkAnalytics mNetworkAnalytics;
  private ale mNetworkStatusManager;
  protected AndroidNotificationManager mNotificationManager;
  protected ox.a mSendSnapCallback;
  private final ajn mSnapWomb;
  protected aim mSnapbryo;
  private final aol mSnapchatServiceManager;
  protected ajv mUser;
  
  public ox(aim paramaim, ox.a parama)
  {
    this(SnapchatApplication.b(), ajv.g(), paramaim, mMediaMailingMetadata, parama, AndroidNotificationManager.a(), NetworkAnalytics.a(), ale.a(), ajn.a(), aol.a());
  }
  
  private ox(Context paramContext, ajv paramajv, aim paramaim, MediaMailingMetadata paramMediaMailingMetadata, ox.a parama, AndroidNotificationManager paramAndroidNotificationManager, NetworkAnalytics paramNetworkAnalytics, ale paramale, ajn paramajn, aol paramaol)
  {
    mContext = paramContext;
    mUser = paramajv;
    mSnapbryo = paramaim;
    mMediaMailingMetadata = paramMediaMailingMetadata;
    mSendSnapCallback = parama;
    mNotificationManager = paramAndroidNotificationManager;
    mNetworkAnalytics = paramNetworkAnalytics;
    mNetworkStatusManager = paramale;
    mSnapWomb = paramajn;
    mSnapchatServiceManager = paramaol;
  }
  
  public static void a(Bundle paramBundle, aim paramaim)
  {
    String str;
    if (mIsZipUpload)
    {
      str = "1";
      paramBundle.putString("zipped", str);
      if (paramaim.d()) {
        paramBundle.putString("filter_id", paramaim.e());
      }
      if (!mIsFrontFacingSnap) {
        break label58;
      }
    }
    label58:
    for (paramaim = "1";; paramaim = "0")
    {
      paramBundle.putString("camera_front_facing", paramaim);
      return;
      str = "0";
      break;
    }
  }
  
  private boolean e()
  {
    if (mUser != null)
    {
      Iterator localIterator = mMediaMailingMetadata.d().iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        if (!mUser.c(localFriend.h())) {
          return true;
        }
      }
    }
    return false;
  }
  
  protected String a()
  {
    return "/loq/send";
  }
  
  protected void a(aku paramaku)
  {
    NetworkAnalytics localNetworkAnalytics = mNetworkAnalytics;
    String str1 = mSnapbryo.mClientId;
    int i = mStatusCode;
    long l = mReceivedBytes;
    String str2 = mReachability;
    if (paramaku == null) {}
    for (biw localbiw = null;; localbiw = server_info)
    {
      localNetworkAnalytics.a("SNAP_SENT_DELAY", str1, i, l, str2, localbiw, false);
      localNetworkAnalytics.a("SNAP_SENT_SNAP_DUMMY", str1, "/loq/send", i, str2);
      super.a(paramaku);
      ban.a().a(new bdf());
      return;
    }
  }
  
  protected final void a(String paramString, int paramInt)
  {
    if (ajx.aF()) {
      return;
    }
    paramString = mSnapbryo.mMediaMailingMetadata;
    if (!mRetried)
    {
      if (!mNetworkStatusManager.d())
      {
        mSnapWomb.a(mSnapbryo, MediaMailingMetadata.SendStatus.FAILED);
        return;
      }
      mRetried = true;
      d();
      return;
    }
    mSendSnapCallback.d(mSnapbryo);
    mNotificationManager.a(mContext, false);
  }
  
  protected Bundle b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("username", ajx.l());
    localBundle.putString("media_id", mSnapbryo.mClientId);
    localBundle.putString("recipients", atn.a().toJson(mMediaMailingMetadata.f()));
    List localList = mMediaMailingMetadata.g();
    if (!localList.isEmpty()) {
      localBundle.putString("recipient_ids", atn.a().toJson(localList));
    }
    localBundle.putString("time", String.valueOf(mSnapbryo.mTimerValueOrDuration));
    a(localBundle, mSnapbryo);
    return localBundle;
  }
  
  protected final void b(aku paramaku)
  {
    if ((paramaku == null) || (snap_response == null) || (snap_response.success != true))
    {
      mSendSnapCallback.d(mSnapbryo);
      return;
    }
    mSendSnapCallback.c(mSnapbryo);
    Object localObject2 = mUser;
    Object localObject1 = mSnapbryo;
    if ((localObject2 == null) || (localObject1 == null)) {
      localObject1 = null;
    }
    Object localObject3;
    while (localObject1 != null)
    {
      localObject3 = snap_response.snaps;
      if (mMediaMailingMetadata.d().size() <= 1) {
        break label390;
      }
      paramaku = ajx.l();
      if (paramaku != null)
      {
        paramaku = axi.a(paramaku, mMediaMailingMetadata.e());
        localObject2 = akc.b();
        ((akc)localObject2).b(paramaku, true);
        if (localObject3 != null)
        {
          paramaku = null;
          if (mSnapUriString != null) {
            paramaku = Uri.parse(mSnapUriString);
          }
          localObject3 = ((Map)localObject3).entrySet().iterator();
          for (;;)
          {
            if (((Iterator)localObject3).hasNext())
            {
              Object localObject5 = (Map.Entry)((Iterator)localObject3).next();
              Object localObject4 = (String)((Map.Entry)localObject5).getKey();
              localObject5 = (akv.a)((Map.Entry)localObject5).getValue();
              localObject5 = new aji(id, mClientId, ((aji)localObject1).W(), timestamp, ((aji)localObject1).ak(), Snap.ClientSnapStatus.SENT, (String)localObject4, mDisplayTime, paramaku, mTimeOfLastSendAttempt, mZipped);
              localObject4 = ((akc)localObject2).a((String)localObject4);
              if (localObject4 != null)
              {
                ((ChatConversation)localObject4).a((ChatFeedItem)localObject5);
                ((ChatConversation)localObject4).a((aji)localObject5);
                continue;
                localObject2 = ajx.l();
                localObject3 = mMediaMailingMetadata;
                localObject4 = ((MediaMailingMetadata)localObject3).e();
                if ((localObject2 == null) || (localObject4 == null))
                {
                  localObject1 = null;
                  break;
                }
                localObject2 = ym.a(axi.a((String)localObject2, ((MediaMailingMetadata)localObject3).e()));
                if (localObject2 == null)
                {
                  localObject1 = null;
                  break;
                }
                localObject1 = ((ChatConversation)localObject2).c(mClientId);
                break;
              }
            }
          }
          ((akc)localObject2).f();
        }
      }
    }
    for (;;)
    {
      mNotificationManager.a(mContext, true);
      ajx.p(false);
      if (!e()) {
        break;
      }
      mSnapchatServiceManager.a(false, false);
      return;
      label390:
      if (localObject3 != null)
      {
        if (!((Map)localObject3).containsKey(mRecipient)) {
          throw new RuntimeException("Server response does not contain recipient's sent snap ID");
        }
        paramaku = (akv.a)((Map)localObject3).get(mRecipient);
        ((aji)localObject1).a(id);
        ((aji)localObject1).a(timestamp);
        ((aji)localObject1).b(timestamp);
      }
    }
  }
  
  protected String c()
  {
    return "SendSnapTask";
  }
  
  protected void d()
  {
    new ox(mSnapbryo, mSendSnapCallback).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
  }
  
  protected final void f()
  {
    new oy(mSnapbryo, mSendSnapCallback).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    Iterator localIterator = mMediaMailingMetadata.d().iterator();
    while (localIterator.hasNext())
    {
      ChatConversation localChatConversation = ym.b(((Friend)localIterator.next()).h());
      if ((localChatConversation != null) && (mIsStub)) {
        mIsStub = false;
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void c(aim paramaim);
    
    public abstract void d(aim paramaim);
  }
}

/* Location:
 * Qualified Name:     ox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */