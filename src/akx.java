import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Base64;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.model.CashTransaction.a;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversation.SequenceNumberState;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatMedia.a;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import com.snapchat.android.util.debug.ReleaseManager;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

@bxs
public final class akx
  implements vl<bid>, vq
{
  private static final String TAG = "ChatConversationManager";
  private static akx sInstance;
  private final zf mChatMessageReleaser;
  private final zc mConversationUpdater;
  @bxp
  public final List<ChatConversation> mConversations = Collections.synchronizedList(new ArrayList());
  public final auu<ChatConversation> mConversationsForListView = new auu();
  final List<vp> mFeedItems = Collections.synchronizedList(new ArrayList());
  public String mIterToken;
  private final zm mSendingMailman;
  
  private akx(@chc zc paramzc, @chc zf paramzf, @chc zm paramzm)
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b());
    mConversationUpdater = paramzc;
    mChatMessageReleaser = paramzf;
    mSendingMailman = paramzm;
    mIterToken = localSharedPreferences.getString(SharedPreferenceKey.CONVERSATIONS_ITER_TOKEN.getKey(), null);
    aa = this;
  }
  
  public static akx c()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new akx(new zc(zm.a(), zd.a(), zj.a(), aki.a(), tt.a(), zb.a(), og.a(), nz.a()), new zf(), zm.a());
      }
      akx localakx = sInstance;
      return localakx;
    }
    finally {}
  }
  
  public static void d()
  {
    try
    {
      sInstance = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  @chd
  public final ChatConversation a(@chc String paramString)
  {
    if (paramString == null)
    {
      if (ReleaseManager.e()) {
        throw new NullPointerException("Attempt to get/start conversation with null friend.");
      }
      return null;
    }
    return a(paramString, false, false, true);
  }
  
  @chd
  public final ChatConversation a(@chc String paramString, boolean paramBoolean)
  {
    return a(paramString, paramBoolean, true, true);
  }
  
  @chd
  public final ChatConversation a(@chc String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    for (;;)
    {
      synchronized (mConversations)
      {
        String str = akr.l();
        if (str == null) {
          break label154;
        }
        localObject = ayg.a(str, paramString);
        Iterator localIterator = mConversations.iterator();
        if (localIterator.hasNext())
        {
          localChatConversation = (ChatConversation)localIterator.next();
          if (!TextUtils.equals((CharSequence)localObject, mId)) {
            continue;
          }
          localObject = localChatConversation;
          if (localChatConversation == null)
          {
            localObject = new ChatConversation(str, paramString);
            if (!paramBoolean1) {
              mSendingMailman.c((ChatConversation)localObject);
            }
            mConversations.add(localObject);
            g();
            mIsStub = paramBoolean2;
            mIsSavableConversation = paramBoolean3;
          }
          return (ChatConversation)localObject;
        }
      }
      ChatConversation localChatConversation = null;
      continue;
      label154:
      Object localObject = null;
    }
  }
  
  public final List<vp> a()
  {
    return mFeedItems;
  }
  
  public final void a(@chc ChatConversation paramChatConversation, @chc bid parambid, boolean paramBoolean1, boolean paramBoolean2)
  {
    zc localzc = mConversationUpdater;
    String str = mId;
    if (parambid.l()) {
      paramChatConversation.a(parambid.k().a());
    }
    localzc.a(paramChatConversation, parambid, paramBoolean2);
    mTimestamp = Math.max(avb.a(parambid.h()), mTimestamp);
    Object localObject1 = paramChatConversation.q();
    if (!((List)localObject1).isEmpty()) {
      mTimestamp = Math.max(((ChatFeedItem)((List)localObject1).get(((List)localObject1).size() - 1)).U(), mTimestamp);
    }
    Object localObject2;
    label209:
    bjd localbjd;
    Object localObject3;
    Object localObject5;
    Object localObject4;
    label269:
    long l;
    if (parambid.c())
    {
      localObject1 = avr.a(parambid.b());
      localObject2 = mLastSnapFromServer;
      if ((localObject2 == null) || (((Snap)localObject1).U() > ((Snap)localObject2).U())) {
        mLastSnapFromServer = ((Snap)localObject1);
      }
    }
    else
    {
      if (parambid.g())
      {
        localObject1 = new CashFeedItem(CashTransaction.a.a(parambid.f()));
        localObject2 = mLastCashFromServer;
        if ((localObject2 != null) && (((CashFeedItem)localObject1).U() <= ((CashFeedItem)localObject2).U())) {
          break label563;
        }
        mLastCashFromServer = ((CashFeedItem)localObject1);
      }
      localbjd = parambid.d();
      if ((localbjd == null) || (TextUtils.isEmpty(localbjd.b()))) {
        break label740;
      }
      localObject2 = mMyUsername;
      localObject3 = mTheirUsername;
      if (!TextUtils.equals(localbjd.b(), (CharSequence)localObject2)) {
        break label594;
      }
      localObject5 = StatefulChatFeedItem.SendReceiveStatus.SENT;
      localObject1 = localObject2;
      localObject4 = localObject3;
      Object localObject6 = localbjd.d();
      l = avb.a(localbjd.c());
      bjj.a locala = bjj.a.a((String)localObject6);
      localObject6 = locala;
      if (locala == bjj.a.UNRECOGNIZED_VALUE) {
        localObject6 = bjj.a.TEXT;
      }
      switch (ayg.2.$SwitchMap$com$snapchat$soju$android$MessageBody$Type[localObject6.ordinal()])
      {
      default: 
        localObject1 = new ald.a((String)localObject1, (String)localObject4).a();
        label360:
        mSendReceiveStatus = ((StatefulChatFeedItem.SendReceiveStatus)localObject5);
        ((akw)localObject1).c(l);
        if (avb.a(localbjd.a()) > avb.a(localbjd.c()))
        {
          ((akw)localObject1).a(avb.a(localbjd.a()));
          localObject3 = localObject1;
          label411:
          if (localObject3 != null)
          {
            localObject1 = mLastChatFromServer;
            if ((localObject1 != null) && (((akw)localObject3).U() <= ((akw)localObject1).U())) {
              break label746;
            }
          }
        }
        break;
      }
    }
    for (mLastChatFromServer = ((akw)localObject3);; mLastChatFromServer = ((akw)localObject3)) {
      label563:
      label594:
      label740:
      label746:
      do
      {
        localObject1 = mItemsForFeedIcon;
        if (((List)localObject1).isEmpty()) {
          break label802;
        }
        localObject3 = ((List)localObject1).iterator();
        for (localObject1 = null;; localObject1 = localObject2)
        {
          localObject2 = localObject1;
          if (!((Iterator)localObject3).hasNext()) {
            break label805;
          }
          localObject2 = (ChatFeedItem)((Iterator)localObject3).next();
          if (localObject1 != null) {
            break;
          }
        }
        if ((((Snap)localObject1).U() != ((Snap)localObject2).U()) || (((localObject2 instanceof aka)) && ((localObject1 instanceof aka)) && (((aka)localObject2).A()))) {
          break;
        }
        mLastSnapFromServer = ((Snap)localObject1);
        break;
        if ((((CashFeedItem)localObject1).U() != ((CashFeedItem)localObject2).U()) || (((CashFeedItem)localObject2).am())) {
          break label209;
        }
        mLastCashFromServer = ((CashFeedItem)localObject1);
        break label209;
        localObject5 = StatefulChatFeedItem.SendReceiveStatus.RECEIVED;
        localObject1 = localObject3;
        localObject4 = localObject2;
        break label269;
        localObject1 = new ChatMedia.a((String)localObject1, (String)localObject4).a();
        break label360;
        localObject1 = new alb.a((String)localObject1, (String)localObject4).a();
        break label360;
        if ((TextUtils.equals((CharSequence)localObject4, (CharSequence)localObject3)) && (mMyLastSeqNum == mLastSeqNumOfMyChatTheyReleased))
        {
          ((akw)localObject1).a(avb.a(localbjd.c()));
          localObject3 = localObject1;
          break label411;
        }
        localObject3 = localObject1;
        if (!TextUtils.equals((CharSequence)localObject4, (CharSequence)localObject2)) {
          break label411;
        }
        localObject3 = localObject1;
        if (mTheirLastSeqNum != mLastSeqNumOfTheirChatIReleased) {
          break label411;
        }
        ((akw)localObject1).a(avb.a(localbjd.c()));
        localObject3 = localObject1;
        break label411;
        localObject3 = null;
        break label411;
      } while ((((akw)localObject3).U() != ((akw)localObject1).U()) || (((akw)localObject1).o()));
    }
    if (((ChatFeedItem)localObject2).U() > ((ChatFeedItem)localObject1).U()) {
      localObject1 = localObject2;
    }
    for (;;)
    {
      break;
      label802:
      localObject2 = null;
      label805:
      if (localObject2 != null) {
        mTimestamp = Math.max(((ChatFeedItem)localObject2).U(), mTimestamp);
      }
      mIterToken = parambid.m();
      b.c.remove(str);
      localObject1 = bbo.a();
      label948:
      int i;
      if ((paramChatConversation.A()) && (paramBoolean2))
      {
        paramBoolean2 = true;
        ((Bus)localObject1).a(new bca(str, paramBoolean2));
        if (paramBoolean1) {
          paramChatConversation.a(3, null);
        }
        parambid = parambid.o();
        if (parambid == null) {
          break label1133;
        }
        parambid = parambid.a();
        if (parambid == null) {
          break label1133;
        }
        localObject1 = mMyUsername;
        if (!parambid.containsKey(localObject1)) {
          break label1121;
        }
        l = avb.a((Long)parambid.get(localObject1));
        if (mMyLastSeqNum <= l) {
          break label1127;
        }
        i = 1;
      }
      for (;;)
      {
        if (i != 0) {
          if (ad)
          {
            mSequenceNumberState = ChatConversation.SequenceNumberState.UPDATED;
            mNumSCCPChatMessagesSendingOrSent = 0;
            localObject1 = a;
            l = mMyLastSeqNum;
            parambid = paramChatConversation.o();
            localObject2 = mMyUsername;
            try
            {
              localObject3 = parambid.iterator();
              while (((Iterator)localObject3).hasNext())
              {
                localObject4 = (ChatFeedItem)((Iterator)localObject3).next();
                if ((localObject4 instanceof akw))
                {
                  localObject4 = (akw)localObject4;
                  if (mSender.equals(localObject2))
                  {
                    localObject5 = ((akw)localObject4).i();
                    if ((localObject5 != null) && (((bif)localObject5).e().longValue() > l)) {
                      ((zm)localObject1).a(paramChatConversation, (akw)localObject4, false, false);
                    }
                  }
                }
              }
              paramBoolean2 = false;
            }
            finally {}
            break;
            label1121:
            l = 0L;
            break label948;
            label1127:
            i = 0;
            continue;
            label1133:
            i = 0;
            continue;
            ((zm)localObject1).b(paramChatConversation);
          }
        }
      }
      for (;;)
      {
        a.b(paramChatConversation);
        paramChatConversation.r();
        return;
        mSequenceNumberState = ChatConversation.SequenceNumberState.UPDATED;
      }
    }
  }
  
  public final void a(@chc String paramString1, @chc String paramString2)
  {
    paramString1 = a(paramString1, false, false, true);
    if (paramString1 != null)
    {
      paramString2 = paramString2.split(":");
      if (paramString2.length == 2) {
        break label28;
      }
    }
    label28:
    Object localObject2;
    do
    {
      do
      {
        do
        {
          return;
          localObject1 = akr.F();
        } while (localObject1 == null);
        localObject1 = ((String)localObject1).getBytes();
        localObject2 = Base64.decode(paramString2[0], 0);
        paramString2 = Base64.decode(paramString2[1], 0);
        paramString2 = new CbcEncryptionAlgorithm((byte[])localObject1, (byte[])localObject2).b(paramString2, "no dataId provided");
      } while (paramString2 == null);
      localObject1 = (List)aul.a().fromJson(new String(paramString2), new TypeToken() {}.getType());
    } while ((localObject1 == null) || (((List)localObject1).isEmpty()));
    paramString2 = new ArrayList();
    Object localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (bif)((Iterator)localObject1).next();
      paramString2.add(new bih().a((bif)localObject2));
    }
    paramString2 = new bie().a(paramString2);
    paramString2 = new bid().a(paramString2);
    mConversationUpdater.a(paramString1, paramString2, false);
    g();
  }
  
  public final void a(List<bid> paramList)
  {
    a(paramList, true, false, false);
  }
  
  public final void a(List<bid> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramList, paramBoolean1, paramBoolean2, false);
  }
  
  @awj
  public final void a(List<bid> paramList, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramList.isEmpty()) {
      return;
    }
    for (;;)
    {
      synchronized (mConversations)
      {
        long l1;
        HashSet localHashSet;
        if (mConversations.isEmpty())
        {
          l1 = 0L;
          long l2 = avb.a(((bid)paramList.get(paramList.size() - 1)).h());
          if ((!paramBoolean1) || (l2 <= l1)) {
            break label464;
          }
          i = 1;
          l1 = Long.MAX_VALUE;
          localHashSet = new HashSet();
          Iterator localIterator = paramList.iterator();
          if (!localIterator.hasNext()) {
            continue;
          }
          localObject2 = (bid)localIterator.next();
          localObject1 = zi.a(((bid)localObject2).a());
          if (localObject1 != null)
          {
            a((ChatConversation)localObject1, (bid)localObject2, false, true);
            if (!mIsUserInConversation)
            {
              localObject2 = mId;
              mChatMessageReleaser.a((ChatConversation)localObject1, bju.a.DELETE);
            }
            if (!mIsStub) {
              break label458;
            }
            mIsStub = false;
            if (localObject1 == null) {
              break label455;
            }
            l2 = mTimestamp;
            if (l2 >= l1) {
              break label452;
            }
            l1 = l2;
            localHashSet.add(mId);
            break label461;
          }
        }
        else
        {
          l1 = mConversations.get(0)).mTimestamp;
          continue;
        }
        Object localObject2 = avj.a((bid)localObject2);
        if (localObject2 == null) {
          break label458;
        }
        mConversations.add(localObject2);
        Object localObject1 = localObject2;
        continue;
        bbo.a().a(new bdv());
        a(new AtomicBoolean(paramBoolean3));
        if (i != 0)
        {
          localObject1 = mConversations.iterator();
          if (((Iterator)localObject1).hasNext())
          {
            localObject2 = (ChatConversation)((Iterator)localObject1).next();
            if ((mTimestamp > l1) || (((ChatConversation)localObject2).C()) || (localHashSet.contains(mId)) || (mIsUserInConversation) || (TextUtils.equals(mTheirUsername, ChatFragment.c))) {
              continue;
            }
            ((Iterator)localObject1).remove();
          }
        }
      }
      if (paramBoolean2)
      {
        mIterToken = ((bid)paramList.get(paramList.size() - 1)).m();
        e();
      }
      g();
      return;
      label452:
      continue;
      label455:
      break label461;
      label458:
      continue;
      label461:
      continue;
      label464:
      int i = 0;
    }
  }
  
  public final void a(AtomicBoolean paramAtomicBoolean)
  {
    AtomicInteger localAtomicInteger = new AtomicInteger(0);
    Iterator localIterator = mConversations.iterator();
    while (localIterator.hasNext()) {
      ((ChatConversation)localIterator.next()).a(3, null, paramAtomicBoolean, localAtomicInteger);
    }
  }
  
  @chd
  public final ChatConversation b(@chc String paramString)
  {
    if (paramString == null)
    {
      if (ReleaseManager.e()) {
        throw new NullPointerException("Attempt to get/start conversation with null friend.");
      }
      return null;
    }
    return a(paramString, true, false, false);
  }
  
  public final void b()
  {
    for (;;)
    {
      synchronized (mConversations)
      {
        Iterator localIterator = mConversations.iterator();
        if (!localIterator.hasNext()) {
          break label154;
        }
        ChatConversation localChatConversation = (ChatConversation)localIterator.next();
        if ((mMyLastSeqNum == 0L) && (mTheirLastSeqNum == 0L) && (mLastTimestampOfReceivedSnapReadReceiptIReleased == 0L) && (mLastTimestampOfSentSnapReadReceiptIReleased == 0L) && (mLastChatFromServer == null) && (mLastCashFromServer == null))
        {
          if (mLastSnapFromServer == null) {
            break label180;
          }
          if ((mLastSnapFromServer.p()) && (localChatConversation.w()))
          {
            break label180;
            if ((i == 0) || (!localChatConversation.w())) {
              continue;
            }
            localIterator.remove();
          }
        }
      }
      int i = 0;
      continue;
      label154:
      mFeedItems.clear();
      mFeedItems.addAll(mConversations);
      return;
      label180:
      i = 1;
    }
  }
  
  public final void b(String paramString, boolean paramBoolean)
  {
    synchronized (mConversations)
    {
      Iterator localIterator = mConversations.iterator();
      while (localIterator.hasNext())
      {
        ChatConversation localChatConversation = (ChatConversation)localIterator.next();
        if (mId.equals(paramString))
        {
          if (paramBoolean) {
            localChatConversation.t();
          }
          localIterator.remove();
          g();
          return;
        }
      }
      return;
    }
  }
  
  public final void e()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()).edit();
    if (mIterToken == null) {
      localEditor.remove(SharedPreferenceKey.CONVERSATIONS_ITER_TOKEN.getKey());
    }
    for (;;)
    {
      localEditor.apply();
      return;
      localEditor.putString(SharedPreferenceKey.CONVERSATIONS_ITER_TOKEN.getKey(), sInstancemIterToken);
    }
  }
  
  public final List<ChatConversation> f()
  {
    return Collections.unmodifiableList(new ArrayList(mConversations));
  }
  
  @cbr
  public final void g()
  {
    bhp.b(new Runnable()
    {
      /* Error */
      public final void run()
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 17	akx$1:this$0	Lakx;
        //   4: astore_1
        //   5: invokestatic 28	bhp:b	()V
        //   8: aload_1
        //   9: getfield 32	akx:mConversations	Ljava/util/List;
        //   12: astore_2
        //   13: aload_2
        //   14: monitorenter
        //   15: aload_1
        //   16: getfield 32	akx:mConversations	Ljava/util/List;
        //   19: invokestatic 38	java/util/Collections:sort	(Ljava/util/List;)V
        //   22: aload_2
        //   23: monitorexit
        //   24: new 40	akx$2
        //   27: dup
        //   28: aload_1
        //   29: invokespecial 42	akx$2:<init>	(Lakx;)V
        //   32: invokestatic 46	bhp:a	(Ljava/lang/Runnable;)V
        //   35: return
        //   36: astore_3
        //   37: aload_2
        //   38: monitorexit
        //   39: aload_3
        //   40: athrow
        //   41: astore_2
        //   42: goto -18 -> 24
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	45	0	this	1
        //   4	25	1	localakx	akx
        //   41	1	2	localIllegalArgumentException	IllegalArgumentException
        //   36	4	3	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   15	24	36	finally
        //   37	39	36	finally
        //   8	15	41	java/lang/IllegalArgumentException
        //   39	41	41	java/lang/IllegalArgumentException
      }
    });
  }
}

/* Location:
 * Qualified Name:     akx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */