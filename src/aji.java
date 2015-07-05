import android.content.res.Resources;
import android.net.Uri;
import android.view.View;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.Snap.ClientSnapStatus;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority;
import com.snapchat.android.model.chat.ChatFeedItem.a;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class aji
  extends Snap
{
  public static final int TIME_TO_PRIORITIZE_SENT_ICON = 1000;
  public static final ArrayList<Snap.ClientSnapStatus> sSentSnapStateTimeline = new ArrayList(Arrays.asList(new Snap.ClientSnapStatus[] { Snap.ClientSnapStatus.SENDING, Snap.ClientSnapStatus.FAILED, Snap.ClientSnapStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE, Snap.ClientSnapStatus.FAILED_AND_NON_RECOVERABLE, Snap.ClientSnapStatus.SENT, Snap.ClientSnapStatus.DELIVERED, Snap.ClientSnapStatus.SENT_AND_OPENED, Snap.ClientSnapStatus.SENT_AND_SCREENSHOTTED, Snap.ClientSnapStatus.SENT_AND_REPLAYED, Snap.ClientSnapStatus.SENT_AND_REPLAYED_AND_SCREENSHOTTED }));
  public String mClientId;
  public String mDisplayTime;
  public boolean mIsSavableSnap;
  public String mRecipient;
  public String mSnapUriString;
  public long mTimeOfLastSendAttempt;
  public boolean mZipped;
  
  public aji(aim paramaim)
  {
    this(mClientId, mClientId, System.currentTimeMillis(), System.currentTimeMillis(), paramaim.h(), Snap.ClientSnapStatus.SENDING, mMediaMailingMetadata.e(), "0", mVideoUri, System.currentTimeMillis(), mIsZipUpload);
  }
  
  public aji(String paramString1, String paramString2, long paramLong1, long paramLong2, int paramInt, Snap.ClientSnapStatus paramClientSnapStatus, String paramString3)
  {
    this(paramString1, paramString2, paramLong1, paramLong2, paramInt, paramClientSnapStatus, paramString3, "0", null, System.currentTimeMillis(), false);
  }
  
  public aji(String paramString1, String paramString2, long paramLong1, long paramLong2, int paramInt, Snap.ClientSnapStatus paramClientSnapStatus, String paramString3, String paramString4, Uri paramUri, long paramLong3, boolean paramBoolean)
  {
    super(paramString1, paramLong1, paramInt, paramClientSnapStatus);
    mClientId = paramString2;
    mSentTimestamp = paramLong2;
    mDisplayTime = paramString4;
    mTimeOfLastSendAttempt = paramLong3;
    mRecipient = paramString3;
    mDisplayTime = "0";
    if (paramUri != null) {
      mSnapUriString = paramUri.toString();
    }
    mZipped = paramBoolean;
    if (mTimeOfLastSendAttempt == 0L) {
      mTimeOfLastSendAttempt = System.currentTimeMillis();
    }
    mIsSavableSnap = true;
  }
  
  private boolean n()
  {
    switch (mClientSnapStatus)
    {
    default: 
      return false;
    }
    return true;
  }
  
  private boolean o()
  {
    return (mClientId == null) || (!mClientId.equals(mId));
  }
  
  public final boolean N()
  {
    return mClientSnapStatus == Snap.ClientSnapStatus.SENDING;
  }
  
  public final boolean O()
  {
    return (mClientSnapStatus == Snap.ClientSnapStatus.FAILED) || (mClientSnapStatus == Snap.ClientSnapStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE) || (mClientSnapStatus == Snap.ClientSnapStatus.FAILED_AND_NON_RECOVERABLE);
  }
  
  public final boolean P()
  {
    return mClientSnapStatus == Snap.ClientSnapStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE;
  }
  
  public final boolean Q()
  {
    return mClientSnapStatus != Snap.ClientSnapStatus.FAILED_AND_NON_RECOVERABLE;
  }
  
  public final long W()
  {
    return mSentTimestamp;
  }
  
  public final int a(@cgb ChatConversation paramChatConversation)
  {
    ChatFeedItem.FeedIconPriority localFeedIconPriority = ChatFeedItem.FeedIconPriority.MOST_RECENT;
    if ((O()) && (Q())) {
      paramChatConversation = ChatFeedItem.FeedIconPriority.FAILED;
    }
    for (;;)
    {
      return paramChatConversation.ordinal();
      if (N())
      {
        paramChatConversation = ChatFeedItem.FeedIconPriority.SENDING;
      }
      else
      {
        paramChatConversation = localFeedIconPriority;
        if (n())
        {
          paramChatConversation = localFeedIconPriority;
          if (System.currentTimeMillis() - mSentTimestamp < 1000L) {
            paramChatConversation = ChatFeedItem.FeedIconPriority.RECENTLY_SENT;
          }
        }
      }
    }
  }
  
  public final ChatFeedItem.a a(@cgb View paramView, @cgc ChatConversation paramChatConversation)
  {
    if ((n()) && (System.currentTimeMillis() - mSentTimestamp < 1000L))
    {
      long l1 = System.currentTimeMillis();
      long l2 = mSentTimestamp;
      paramView.postDelayed(new Runnable()
      {
        public final void run()
        {
          ban.a().a(new bbk());
        }
      }, 1000L - (l1 - l2));
    }
    return new ChatFeedItem.a(a(false, false));
  }
  
  public final String a()
  {
    Snap.ClientSnapStatus localClientSnapStatus = ah();
    int i;
    switch (localClientSnapStatus)
    {
    default: 
      i = 2131493519;
    }
    for (;;)
    {
      return SnapchatApplication.b().getResources().getString(i);
      i = 2131493163;
      continue;
      i = 2131493161;
      continue;
      i = 2131493292;
      continue;
      i = 2131493402;
      continue;
      i = 2131493112;
      continue;
      i = 2131493380;
      continue;
      i = 2131493367;
      continue;
      i = 2131493366;
      continue;
      i = 2131493272;
    }
  }
  
  public final void a(long paramLong)
  {
    mSentTimestamp = paramLong;
  }
  
  public final long b(ChatConversation paramChatConversation)
  {
    if (q()) {
      return 0L;
    }
    return c(paramChatConversation);
  }
  
  public final void b(long paramLong)
  {
    mTimestamp = paramLong;
  }
  
  public final long c(ChatConversation paramChatConversation)
  {
    if (i()) {
      return mTimestamp;
    }
    return mSentTimestamp;
  }
  
  public final boolean c()
  {
    return (O()) || (ah() == Snap.ClientSnapStatus.PENDING);
  }
  
  public final String d()
  {
    return mClientId;
  }
  
  public final void e()
  {
    mClientSnapStatus = Snap.ClientSnapStatus.FAILED;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof aji)) {
        return false;
      }
      paramObject = (aji)paramObject;
      if ((!o()) && (!((aji)paramObject).o())) {
        break;
      }
    } while ((mClientId != null) && (mClientId.equals(mClientId)));
    return false;
    return aut.a(mId).equals(aut.a(mId));
  }
  
  public final boolean f()
  {
    if (mClientSnapStatus == null) {}
    while ((mClientSnapStatus != Snap.ClientSnapStatus.FAILED) && (mClientSnapStatus != Snap.ClientSnapStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE)) {
      return false;
    }
    return true;
  }
  
  public final void g()
  {
    mClientSnapStatus = Snap.ClientSnapStatus.SENDING;
  }
  
  public final void h()
  {
    mClientSnapStatus = Snap.ClientSnapStatus.SENT;
  }
  
  public final int hashCode()
  {
    return mClientId.hashCode();
  }
  
  public final boolean i()
  {
    switch (mClientSnapStatus)
    {
    default: 
      return false;
    }
    return true;
  }
  
  public final String j()
  {
    return ajx.l();
  }
  
  public final List<String> k()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(mRecipient);
    return localArrayList;
  }
  
  public final long l()
  {
    return mTimestamp;
  }
  
  public final boolean m()
  {
    return System.currentTimeMillis() - mTimeOfLastSendAttempt > 45000L;
  }
  
  public final void p()
  {
    mClientSnapStatus = Snap.ClientSnapStatus.FAILED_AND_NON_RECOVERABLE;
  }
  
  public final boolean q()
  {
    return mClientSnapStatus == Snap.ClientSnapStatus.FAILED_AND_NON_RECOVERABLE;
  }
}

/* Location:
 * Qualified Name:     aji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */