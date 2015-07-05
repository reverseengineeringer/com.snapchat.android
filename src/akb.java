import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem.a;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.squareup.otto.Bus;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

public abstract class akb
  extends StatefulChatFeedItem
  implements akn, ako
{
  private static final String TAG = akb.class.getSimpleName();
  protected String mAckId;
  protected bhf mChatMessage;
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
  
  public akb(akb.a parama)
  {
    this(sender, recipient, Long.valueOf(System.currentTimeMillis()));
    mId = id;
  }
  
  public akb(bhf parambhf)
  {
    this(parambhf.g().a(), parambhf.g().b(), parambhf.f());
    mId = parambhf.c();
    mUserText = parambhf.a().e();
    Object localObject = parambhf.d();
    if (localObject != null)
    {
      if (((Map)localObject).containsKey(mSender))
      {
        biu localbiu = (biu)((Map)localObject).get(mSender);
        mIsSavedBySender = aud.a(localbiu.a());
        mSenderMessageStateVersionNumber = aud.a(localbiu.b());
      }
      if ((((Map)localObject).containsKey(Y())) && (!B()))
      {
        localObject = (biu)((Map)localObject).get(Y());
        mIsSavedByRecipient = aud.a(((biu)localObject).a());
        mRecipientMessageStateVersionNumber = aud.a(((biu)localObject).b());
      }
    }
    mSeqNum = parambhf.e().longValue();
    if (axi.a(this))
    {
      mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENT;
      return;
    }
    mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.RECEIVED;
  }
  
  public akb(String paramString1, String paramString2, Long paramLong)
  {
    this(paramString1, atv.a(paramString2), paramLong);
  }
  
  private akb(String paramString, List<String> paramList, Long paramLong)
  {
    super(paramString, paramList);
    mTimestamp = paramLong;
  }
  
  private boolean B()
  {
    return TextUtils.equals(mSender, Y());
  }
  
  public final int A()
  {
    return mReleaseDelay;
  }
  
  public final long W()
  {
    return mTimestamp.longValue();
  }
  
  public ChatFeedItem.a a(@cgb View paramView, @cgc ChatConversation paramChatConversation)
  {
    if ((Z()) && (System.currentTimeMillis() - mTimestamp.longValue() < 1000L))
    {
      long l1 = System.currentTimeMillis();
      long l2 = mTimestamp.longValue();
      paramView.postDelayed(new Runnable()
      {
        public final void run()
        {
          ban.a().a(new bbk());
        }
      }, 1000L - (l1 - l2));
    }
    if ((O()) && (Q())) {
      return new ChatFeedItem.a(2130837799);
    }
    if (q()) {
      return new ChatFeedItem.a(2130837557);
    }
    if (mSender.equals(ajx.l()))
    {
      if (N()) {
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
    if (Z())
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
  
  public void a(akb paramakb)
  {
    if (mSenderMessageStateVersionNumber > mSenderMessageStateVersionNumber)
    {
      mIsSavedBySender = mIsSavedBySender;
      mSenderMessageStateVersionNumber = mSenderMessageStateVersionNumber;
    }
    if ((mRecipientMessageStateVersionNumber > mRecipientMessageStateVersionNumber) && (!B()))
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
  
  public final void a(bhf parambhf)
  {
    mChatMessage = parambhf;
  }
  
  public final void a(bik parambik, boolean paramBoolean)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    String str1 = parambik.g().a();
    int i = parambik.c().intValue();
    parambik = parambik.b();
    String str2 = bik.a.SAVED.name().toLowerCase(Locale.ENGLISH);
    if (str1.equals(mSender)) {
      if (i > mSenderMessageStateVersionNumber)
      {
        if (!paramBoolean) {
          break label82;
        }
        mIsSavedBySender = TextUtils.equals(parambik, str2);
        mSenderMessageStateVersionNumber = i;
      }
    }
    label82:
    while (i <= mRecipientMessageStateVersionNumber)
    {
      return;
      if (!TextUtils.equals(parambik, str2)) {}
      for (paramBoolean = bool1;; paramBoolean = false)
      {
        mIsSavedBySender = paramBoolean;
        mSenderMessageStateVersionNumber = (i + 1);
        return;
      }
    }
    if (paramBoolean)
    {
      mIsSavedByRecipient = TextUtils.equals(parambik, str2);
      mRecipientMessageStateVersionNumber = i;
      return;
    }
    if (!TextUtils.equals(parambik, str2)) {}
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
  
  public final String al()
  {
    return mUserText;
  }
  
  public boolean am()
  {
    return false;
  }
  
  public final boolean ao()
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
    return O();
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
    return (Z()) || (aa());
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof akb)) {
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
    if (ajv.g() == null) {
      return false;
    }
    if (axi.a(this)) {
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
  
  public final String i()
  {
    return mIterToken;
  }
  
  public final int l()
  {
    if (axi.a(this))
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
  
  public final int m()
  {
    if (axi.a(this))
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
  
  public final bhf n()
  {
    return mChatMessage;
  }
  
  public final boolean o()
  {
    return mIsReleasedByRecipient;
  }
  
  public final String r()
  {
    return mAckId;
  }
  
  public final long s()
  {
    return mSeqNum;
  }
  
  public final int t()
  {
    return mSenderMessageStateVersionNumber;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Chat{mId='").append(mId).append('\'').append(", mAckId='").append(mAckId).append('\'').append(", mRecipient='").append(avb.a(mRecipients, ",")).append('\'').append(", mSender='").append(mSender).append('\'').append(", mIsSavedBySender=").append(mIsSavedBySender).append(", mIsSavedByRecipient=").append(mIsSavedByRecipient).append(", mSenderMessageStateVersionNumber=").append(mSenderMessageStateVersionNumber).append(", mRecipientMessageStateVersionNumber=").append(mRecipientMessageStateVersionNumber).append(", mIsReleasedByRecipient=").append(mIsReleasedByRecipient).append(", mTimestamp=").append(mTimestamp).append(", mReleasedTimestamp=").append(mReleasedTimestamp).append(", mUserText='");
    if (TextUtils.isEmpty(mUserText)) {}
    for (String str = mUserText;; str = mUserText.substring(0, Math.min(3, mUserText.length()))) {
      return str + '\'' + ", mStatusText='" + mStatusText + '\'' + ", mSeqNum=" + mSeqNum + ", mSendReceiveStatus=" + mSendReceiveStatus + ", mIterToken='" + mIterToken + '\'' + '}';
    }
  }
  
  public final int u()
  {
    return mRecipientMessageStateVersionNumber;
  }
  
  public final boolean v()
  {
    return mIsSavedBySender;
  }
  
  public final boolean w()
  {
    return mIsSavedByRecipient;
  }
  
  public final long x()
  {
    return mReleasedTimestamp;
  }
  
  public final boolean y()
  {
    return mIsDisplayedToRecipient;
  }
  
  public final long z()
  {
    return mDisplayedTimestamp;
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
 * Qualified Name:     akb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */