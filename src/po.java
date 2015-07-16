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

public class po
  extends pk
{
  public static final String PATH = "/loq/send";
  private static final String TASK_NAME = "SendSnapTask";
  protected Context mContext;
  protected MediaMailingMetadata mMediaMailingMetadata;
  protected NetworkAnalytics mNetworkAnalytics;
  private ama mNetworkStatusManager;
  protected AndroidNotificationManager mNotificationManager;
  protected po.a mSendSnapCallback;
  private final aki mSnapWomb;
  protected aji mSnapbryo;
  private final aph mSnapchatServiceManager;
  protected akp mUser;
  
  public po(aji paramaji, po.a parama)
  {
    this(SnapchatApplication.b(), akp.g(), paramaji, mMediaMailingMetadata, parama, AndroidNotificationManager.a(), NetworkAnalytics.a(), ama.a(), aki.a(), aph.a());
  }
  
  private po(Context paramContext, akp paramakp, aji paramaji, MediaMailingMetadata paramMediaMailingMetadata, po.a parama, AndroidNotificationManager paramAndroidNotificationManager, NetworkAnalytics paramNetworkAnalytics, ama paramama, aki paramaki, aph paramaph)
  {
    mContext = paramContext;
    mUser = paramakp;
    mSnapbryo = paramaji;
    mMediaMailingMetadata = paramMediaMailingMetadata;
    mSendSnapCallback = parama;
    mNotificationManager = paramAndroidNotificationManager;
    mNetworkAnalytics = paramNetworkAnalytics;
    mNetworkStatusManager = paramama;
    mSnapWomb = paramaki;
    mSnapchatServiceManager = paramaph;
  }
  
  public static void a(Bundle paramBundle, aji paramaji)
  {
    String str;
    if (mIsZipUpload)
    {
      str = "1";
      paramBundle.putString("zipped", str);
      if (paramaji.d()) {
        paramBundle.putString("filter_id", paramaji.e());
      }
      if (!mIsFrontFacingSnap) {
        break label58;
      }
    }
    label58:
    for (paramaji = "1";; paramaji = "0")
    {
      paramBundle.putString("camera_front_facing", paramaji);
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
        if (!mUser.c(localFriend.l())) {
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
  
  protected void a(alp paramalp)
  {
    NetworkAnalytics localNetworkAnalytics = mNetworkAnalytics;
    String str1 = mSnapbryo.mClientId;
    int i = mStatusCode;
    long l1 = mReceivedBytes;
    String str2 = mReachability;
    long l2 = mElapsedTime;
    if (paramalp == null) {}
    for (bjx localbjx = null;; localbjx = server_info)
    {
      localNetworkAnalytics.a("SNAP_SENT_DELAY", str1, i, l1, str2, localbjx, false);
      localNetworkAnalytics.a("SNAP_SENT_SNAP_DUMMY", str1, "/loq/send", i, str2, l2);
      super.a(paramalp);
      bbo.a().a(new bef());
      return;
    }
  }
  
  protected final void a(String paramString, int paramInt)
  {
    if (akr.aE()) {
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
    localBundle.putString("username", akr.l());
    localBundle.putString("media_id", mSnapbryo.mClientId);
    localBundle.putString("recipients", aul.a().toJson(mMediaMailingMetadata.f()));
    List localList = mMediaMailingMetadata.g();
    if (!localList.isEmpty()) {
      localBundle.putString("recipient_ids", aul.a().toJson(localList));
    }
    localBundle.putString("time", String.valueOf(mSnapbryo.mTimerValueOrDuration));
    a(localBundle, mSnapbryo);
    return localBundle;
  }
  
  protected final void b(alp paramalp)
  {
    if ((paramalp == null) || (snap_response == null) || (snap_response.success != true))
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
      paramalp = akr.l();
      if (paramalp != null)
      {
        paramalp = ayg.a(paramalp, mMediaMailingMetadata.e());
        localObject2 = akx.c();
        ((akx)localObject2).b(paramalp, true);
        if (localObject3 != null)
        {
          paramalp = null;
          if (mSnapUriString != null) {
            paramalp = Uri.parse(mSnapUriString);
          }
          localObject3 = ((Map)localObject3).entrySet().iterator();
          for (;;)
          {
            if (((Iterator)localObject3).hasNext())
            {
              Object localObject5 = (Map.Entry)((Iterator)localObject3).next();
              Object localObject4 = (String)((Map.Entry)localObject5).getKey();
              localObject5 = (alq.a)((Map.Entry)localObject5).getValue();
              localObject5 = new ake(id, mClientId, ((ake)localObject1).U(), timestamp, ((ake)localObject1).ai(), Snap.ClientSnapStatus.SENT, (String)localObject4, mDisplayTime, paramalp, mTimeOfLastSendAttempt, mZipped);
              localObject4 = ((akx)localObject2).a((String)localObject4);
              if (localObject4 != null)
              {
                ((ChatConversation)localObject4).a((ChatFeedItem)localObject5);
                ((ChatConversation)localObject4).a((ake)localObject5);
                continue;
                localObject2 = akr.l();
                localObject3 = mMediaMailingMetadata;
                localObject4 = ((MediaMailingMetadata)localObject3).e();
                if ((localObject2 == null) || (localObject4 == null))
                {
                  localObject1 = null;
                  break;
                }
                localObject2 = zi.a(ayg.a((String)localObject2, ((MediaMailingMetadata)localObject3).e()));
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
          ((akx)localObject2).g();
        }
      }
    }
    for (;;)
    {
      mNotificationManager.a(mContext, true);
      akr.o(false);
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
        paramalp = (alq.a)((Map)localObject3).get(mRecipient);
        ((ake)localObject1).a(id);
        ((ake)localObject1).a(timestamp);
        ((ake)localObject1).b(timestamp);
      }
    }
  }
  
  protected String c()
  {
    return "SendSnapTask";
  }
  
  protected void d()
  {
    new po(mSnapbryo, mSendSnapCallback).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
  }
  
  protected final void f()
  {
    new pp(mSnapbryo, mSendSnapCallback).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    Iterator localIterator = mMediaMailingMetadata.d().iterator();
    while (localIterator.hasNext())
    {
      ChatConversation localChatConversation = zi.b(((Friend)localIterator.next()).l());
      if ((localChatConversation != null) && (mIsStub)) {
        mIsStub = false;
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void c(aji paramaji);
    
    public abstract void d(aji paramaji);
  }
}

/* Location:
 * Qualified Name:     po
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */