import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem.a;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

public abstract class akw
  extends StatefulChatFeedItem
  implements ali, alj
{
  private static final String TAG = akw.class.getSimpleName();
  protected String mAckId;
  protected bif mChatMessage;
  protected long mDisplayedTimestamp;
  public String mId;
  public boolean mIsDisplayedToRecipient;
  protected boolean mIsReleasedByRecipient;
  protected boolean mIsSavedByRecipient;
  protected boolean mIsSavedBySender;
  protected String mIterToken;
  protected int mRecipientMessageStateVersionNumber;
  protected int mReleaseDelay = 0;
  protected long mReleasedTimestamp;
  protected int mSenderMessageStateVersionNumber;
  protected long mSeqNum;
  protected String mStatusText;
  public Long mTimestamp;
  protected String mUserText;
  
  public akw(akw.a parama)
  {
    this(sender, recipient, Long.valueOf(System.currentTimeMillis()));
    mId = id;
  }
  
  public akw(bif parambif)
  {
    this(parambif.g().a(), parambif.g().b(), parambif.f());
    mId = parambif.c();
    mUserText = parambif.a().e();
    Object localObject = parambif.d();
    if (localObject != null)
    {
      if (((Map)localObject).containsKey(mSender))
      {
        bjv localbjv = (bjv)((Map)localObject).get(mSender);
        mIsSavedBySender = avb.a(localbjv.a());
        mSenderMessageStateVersionNumber = avb.a(localbjv.b());
      }
      if ((((Map)localObject).containsKey(Z())) && (!D()))
      {
        localObject = (bjv)((Map)localObject).get(Z());
        mIsSavedByRecipient = avb.a(((bjv)localObject).a());
        mRecipientMessageStateVersionNumber = avb.a(((bjv)localObject).b());
      }
    }
    mSeqNum = parambif.e().longValue();
    if (ayg.a(this))
    {
      mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENT;
      return;
    }
    mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.RECEIVED;
  }
  
  public akw(String paramString1, String paramString2, Long paramLong)
  {
    this(paramString1, aut.a(paramString2), paramLong);
  }
  
  private akw(String paramString, List<String> paramList, Long paramLong)
  {
    super(paramString, paramList);
    mTimestamp = paramLong;
  }
  
  private boolean D()
  {
    return TextUtils.equals(mSender, Z());
  }
  
  public final long A()
  {
    return mDisplayedTimestamp;
  }
  
  public final int B()
  {
    return mReleaseDelay;
  }
  
  public final long U()
  {
    return mTimestamp.longValue();
  }
  
  public ChatFeedItem.a a(@chc View paramView, @chd ChatConversation paramChatConversation)
  {
    if (P()) {
      return new ChatFeedItem.a(2130837799);
    }
    if (mSender.equals(akr.l()))
    {
      if (O()) {
        return new ChatFeedItem.a(2130837557);
      }
      if (mIsReleasedByRecipient) {
        return new ChatFeedItem.a(2130837558);
      }
      return new ChatFeedItem.a(2130837562);
    }
    if (mIsReleasedByRecipient) {
      return new ChatFeedItem.a(2130837549);
    }
    return new ChatFeedItem.a(2130837566);
  }
  
  public String a()
  {
    if (q())
    {
      if (mIsReleasedByRecipient) {}
      for (int i = 2131493272;; i = 2131493112) {
        return SnapchatApplication.b().getResources().getString(i);
      }
    }
    return super.a();
  }
  
  public final void a(int paramInt)
  {
    mSenderMessageStateVersionNumber = paramInt;
  }
  
  public final void a(long paramLong)
  {
    mIsReleasedByRecipient = true;
    mReleasedTimestamp = paramLong;
  }
  
  public void a(akw paramakw)
  {
    if (mSenderMessageStateVersionNumber > mSenderMessageStateVersionNumber)
    {
      mIsSavedBySender = mIsSavedBySender;
      mSenderMessageStateVersionNumber = mSenderMessageStateVersionNumber;
    }
    if ((mRecipientMessageStateVersionNumber > mRecipientMessageStateVersionNumber) && (!D()))
    {
      mIsSavedByRecipient = mIsSavedByRecipient;
      mRecipientMessageStateVersionNumber = mRecipientMessageStateVersionNumber;
    }
    mTimestamp = mTimestamp;
    mSendReceiveStatus = mSendReceiveStatus;
    if (!mIsReleasedByRecipient)
    {
      mIsReleasedByRecipient = mIsReleasedByRecipient;
      mReleasedTimestamp = mReleasedTimestamp;
    }
    if (!mIsDisplayedToRecipient)
    {
      mIsDisplayedToRecipient = mIsDisplayedToRecipient;
      mDisplayedTimestamp = mDisplayedTimestamp;
    }
    mSeqNum = mSeqNum;
  }
  
  public final void a(bif parambif)
  {
    mChatMessage = parambif;
  }
  
  public final void a(bjk parambjk, boolean paramBoolean)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    String str1 = parambjk.g().a();
    int i = parambjk.c().intValue();
    parambjk = parambjk.b();
    String str2 = bjk.a.SAVED.name().toLowerCase(Locale.ENGLISH);
    if (str1.equals(mSender)) {
      if (i > mSenderMessageStateVersionNumber)
      {
        if (!paramBoolean) {
          break label82;
        }
        mIsSavedBySender = TextUtils.equals(parambjk, str2);
        mSenderMessageStateVersionNumber = i;
      }
    }
    label82:
    while (i <= mRecipientMessageStateVersionNumber)
    {
      return;
      if (!TextUtils.equals(parambjk, str2)) {}
      for (paramBoolean = bool1;; paramBoolean = false)
      {
        mIsSavedBySender = paramBoolean;
        mSenderMessageStateVersionNumber = (i + 1);
        return;
      }
    }
    if (paramBoolean)
    {
      mIsSavedByRecipient = TextUtils.equals(parambjk, str2);
      mRecipientMessageStateVersionNumber = i;
      return;
    }
    if (!TextUtils.equals(parambjk, str2)) {}
    for (paramBoolean = bool2;; paramBoolean = false)
    {
      mIsSavedByRecipient = paramBoolean;
      mRecipientMessageStateVersionNumber = (i + 1);
      return;
    }
  }
  
  public final void a(String paramString)
  {
    mAckId = paramString;
  }
  
  public final void a(boolean paramBoolean)
  {
    mIsReleasedByRecipient = paramBoolean;
  }
  
  public final String aj()
  {
    return mUserText;
  }
  
  public boolean ak()
  {
    return false;
  }
  
  public final boolean am()
  {
    return mIsReleasedByRecipient;
  }
  
  public final String b()
  {
    return mStatusText;
  }
  
  public final void b(int paramInt)
  {
    mRecipientMessageStateVersionNumber = paramInt;
  }
  
  public final void b(long paramLong)
  {
    mSeqNum = paramLong;
  }
  
  public final void b(String paramString)
  {
    mStatusText = paramString;
  }
  
  public final void b(boolean paramBoolean)
  {
    mIsSavedBySender = paramBoolean;
  }
  
  public final long c(ChatConversation paramChatConversation)
  {
    if (mIsDisplayedToRecipient) {
      return mDisplayedTimestamp;
    }
    return mTimestamp.longValue();
  }
  
  public final void c(int paramInt)
  {
    mReleaseDelay = paramInt;
  }
  
  public final void c(long paramLong)
  {
    mTimestamp = Long.valueOf(paramLong);
  }
  
  public final void c(String paramString)
  {
    mId = paramString;
  }
  
  public final void c(boolean paramBoolean)
  {
    mIsSavedByRecipient = paramBoolean;
  }
  
  public boolean c()
  {
    return P();
  }
  
  public final String d()
  {
    return mId;
  }
  
  public final void d(long paramLong)
  {
    mReleasedTimestamp = paramLong;
  }
  
  public final void d(String paramString)
  {
    mIterToken = paramString;
  }
  
  public final void e(long paramLong)
  {
    mDisplayedTimestamp = paramLong;
  }
  
  public boolean e()
  {
    return (q()) || (r());
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof akw)) {
      return mId.equals(mId);
    }
    return false;
  }
  
  public final void f(long paramLong)
  {
    mDisplayedTimestamp = paramLong;
    mIsDisplayedToRecipient = true;
  }
  
  public final boolean f()
  {
    return (mIsSavedBySender) || (mIsSavedByRecipient);
  }
  
  public final boolean g()
  {
    if (akp.g() == null) {
      return false;
    }
    if (ayg.a(this)) {
      return mIsSavedBySender;
    }
    return mIsSavedByRecipient;
  }
  
  public boolean g(long paramLong)
  {
    return (mIsDisplayedToRecipient) && (!mIsReleasedByRecipient) && (mDisplayedTimestamp + mReleaseDelay <= paramLong);
  }
  
  public abstract String h();
  
  public int hashCode()
  {
    return mId.hashCode();
  }
  
  public final bif i()
  {
    return mChatMessage;
  }
  
  public final String l()
  {
    return mIterToken;
  }
  
  public final int m()
  {
    if (ayg.a(this))
    {
      mIsSavedBySender = true;
      i = mSenderMessageStateVersionNumber + 1;
      mSenderMessageStateVersionNumber = i;
      return i;
    }
    mIsSavedByRecipient = true;
    int i = mRecipientMessageStateVersionNumber + 1;
    mRecipientMessageStateVersionNumber = i;
    return i;
  }
  
  public final int n()
  {
    if (ayg.a(this))
    {
      mIsSavedBySender = false;
      i = mSenderMessageStateVersionNumber + 1;
      mSenderMessageStateVersionNumber = i;
      return i;
    }
    mIsSavedByRecipient = false;
    int i = mRecipientMessageStateVersionNumber + 1;
    mRecipientMessageStateVersionNumber = i;
    return i;
  }
  
  public final boolean o()
  {
    return mIsReleasedByRecipient;
  }
  
  public final String s()
  {
    return mAckId;
  }
  
  public final long t()
  {
    return mSeqNum;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Chat{mId='").append(mId).append('\'').append(", mAckId='").append(mAckId).append('\'').append(", mRecipient='").append(avz.a(mRecipients, ",")).append('\'').append(", mSender='").append(mSender).append('\'').append(", mIsSavedBySender=").append(mIsSavedBySender).append(", mIsSavedByRecipient=").append(mIsSavedByRecipient).append(", mSenderMessageStateVersionNumber=").append(mSenderMessageStateVersionNumber).append(", mRecipientMessageStateVersionNumber=").append(mRecipientMessageStateVersionNumber).append(", mIsReleasedByRecipient=").append(mIsReleasedByRecipient).append(", mTimestamp=").append(mTimestamp).append(", mReleasedTimestamp=").append(mReleasedTimestamp).append(", mUserText='");
    if (TextUtils.isEmpty(mUserText)) {}
    for (String str = mUserText;; str = mUserText.substring(0, Math.min(3, mUserText.length()))) {
      return str + '\'' + ", mStatusText='" + mStatusText + '\'' + ", mSeqNum=" + mSeqNum + ", mSendReceiveStatus=" + mSendReceiveStatus + ", mIterToken='" + mIterToken + '\'' + '}';
    }
  }
  
  public final int u()
  {
    return mSenderMessageStateVersionNumber;
  }
  
  public final int v()
  {
    return mRecipientMessageStateVersionNumber;
  }
  
  public final boolean w()
  {
    return mIsSavedBySender;
  }
  
  public final boolean x()
  {
    return mIsSavedByRecipient;
  }
  
  public final long y()
  {
    return mReleasedTimestamp;
  }
  
  public final boolean z()
  {
    return mIsDisplayedToRecipient;
  }
  
  public static class a
  {
    String id = UUID.randomUUID().toString();
    String recipient;
    String sender;
    
    public a(String paramString1, String paramString2)
    {
      sender = paramString1;
      recipient = paramString2;
    }
  }
}

/* Location:
 * Qualified Name:     akw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */