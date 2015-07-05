import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Base64;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
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

@bwr
public final class akc
  implements ur<bhd>, uu
{
  private static final String TAG = "ChatConversationManager";
  private static akc sInstance;
  private final yj mChatMessageReleaser;
  private final yg mConversationUpdater;
  @bwo
  public final List<ChatConversation> mConversations = Collections.synchronizedList(new ArrayList());
  public final atw<ChatConversation> mConversationsForListView = new atw();
  final List<ut> mFeedItems = Collections.synchronizedList(new ArrayList());
  public String mIterToken;
  private final yq mSendingMailman;
  
  private akc(@cgb yg paramyg, @cgb yj paramyj, @cgb yq paramyq)
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b());
    mConversationUpdater = paramyg;
    mChatMessageReleaser = paramyj;
    mSendingMailman = paramyq;
    mIterToken = localSharedPreferences.getString(SharedPreferenceKey.CONVERSATIONS_ITER_TOKEN.getKey(), null);
    aa = this;
  }
  
  public static akc b()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new akc(new yg(yq.a(), yh.a(), yn.a(), ajn.a(), td.a(), yf.a(), np.a(), ni.a()), new yj(), yq.a());
      }
      akc localakc = sInstance;
      return localakc;
    }
    finally {}
  }
  
  public static void c()
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
  
  @cgc
  public final ChatConversation a(@cgb String paramString)
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
  
  @cgc
  public final ChatConversation a(@cgb String paramString, boolean paramBoolean)
  {
    return a(paramString, paramBoolean, true, true);
  }
  
  @cgc
  public final ChatConversation a(@cgb String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    for (;;)
    {
      synchronized (mConversations)
      {
        String str = ajx.l();
        if (str == null) {
          break label179;
        }
        localObject = axi.a(str, paramString);
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
            Timber.g("ChatConversationManager", "CHAT-LOG: ChatConversationManager CREATING NEW CONVERSATION with " + paramString, new Object[0]);
            localObject = new ChatConversation(str, paramString);
            if (!paramBoolean1) {
              mSendingMailman.c((ChatConversation)localObject);
            }
            mConversations.add(localObject);
            f();
            mIsStub = paramBoolean2;
            mIsSavableConversation = paramBoolean3;
          }
          return (ChatConversation)localObject;
        }
      }
      ChatConversation localChatConversation = null;
      continue;
      label179:
      Object localObject = null;
    }
  }
  
  public final List<ut> a()
  {
    return mFeedItems;
  }
  
  public final void a(@cgb ChatConversation paramChatConversation, @cgb bhd parambhd, boolean paramBoolean1, boolean paramBoolean2)
  {
    yg localyg = mConversationUpdater;
    String str = mId;
    if (parambhd.l()) {
      paramChatConversation.a(parambhd.k().a());
    }
    localyg.a(paramChatConversation, parambhd, paramBoolean2);
    mTimestamp = Math.max(aud.a(parambhd.h()), mTimestamp);
    Object localObject1 = paramChatConversation.q();
    if (!((List)localObject1).isEmpty()) {
      mTimestamp = Math.max(((ChatFeedItem)((List)localObject1).get(((List)localObject1).size() - 1)).W(), mTimestamp);
    }
    Object localObject2;
    label209:
    bid localbid;
    Object localObject3;
    Object localObject5;
    Object localObject4;
    label269:
    long l;
    label360:
    label411:
    label447:
    label518:
    label596:
    int i;
    if (parambhd.c())
    {
      localObject1 = aut.a(parambhd.b());
      localObject2 = mLastSnapFromServer;
      if ((localObject2 == null) || (((Snap)localObject1).W() > ((Snap)localObject2).W())) {
        mLastSnapFromServer = ((Snap)localObject1);
      }
    }
    else
    {
      if (parambhd.g())
      {
        localObject1 = new CashFeedItem(CashTransaction.a.a(parambhd.f()));
        localObject2 = mLastCashFromServer;
        if ((localObject2 != null) && (((CashFeedItem)localObject1).W() <= ((CashFeedItem)localObject2).W())) {
          break label847;
        }
        mLastCashFromServer = ((CashFeedItem)localObject1);
      }
      localbid = parambhd.d();
      if ((localbid == null) || (TextUtils.isEmpty(localbid.b()))) {
        break label1024;
      }
      localObject2 = mMyUsername;
      localObject3 = mTheirUsername;
      if (!TextUtils.equals(localbid.b(), (CharSequence)localObject2)) {
        break label878;
      }
      localObject5 = StatefulChatFeedItem.SendReceiveStatus.SENT;
      localObject1 = localObject2;
      localObject4 = localObject3;
      Object localObject6 = localbid.d();
      l = aud.a(localbid.c());
      bij.a locala = bij.a.a((String)localObject6);
      localObject6 = locala;
      if (locala == bij.a.UNRECOGNIZED_VALUE) {
        localObject6 = bij.a.TEXT;
      }
      switch (axi.2.$SwitchMap$com$snapchat$soju$android$MessageBody$Type[localObject6.ordinal()])
      {
      default: 
        localObject1 = new aki.a((String)localObject1, (String)localObject4).a();
        mSendReceiveStatus = ((StatefulChatFeedItem.SendReceiveStatus)localObject5);
        ((akb)localObject1).c(l);
        if (aud.a(localbid.a()) > aud.a(localbid.c()))
        {
          ((akb)localObject1).a(aud.a(localbid.a()));
          localObject3 = localObject1;
          if (localObject3 != null)
          {
            localObject1 = mLastChatFromServer;
            if ((localObject1 != null) && (((akb)localObject3).W() <= ((akb)localObject1).W())) {
              break label1030;
            }
            mLastChatFromServer = ((akb)localObject3);
          }
          localObject1 = mItemForFeedIcon;
          if (localObject1 != null) {
            mTimestamp = Math.max(((ChatFeedItem)localObject1).W(), mTimestamp);
          }
          mIterToken = parambhd.m();
          b.c.remove(str);
          localObject1 = ban.a();
          if ((!paramChatConversation.z()) || (!paramBoolean2)) {
            break label1061;
          }
          paramBoolean2 = true;
          ((Bus)localObject1).a(new baz(str, paramBoolean2));
          if (paramBoolean1) {
            paramChatConversation.a(3, null);
          }
          parambhd = parambhd.o();
          if (parambhd == null) {
            break label1079;
          }
          parambhd = parambhd.a();
          if (parambhd == null) {
            break label1079;
          }
          localObject1 = mMyUsername;
          if (!parambhd.containsKey(localObject1)) {
            break label1067;
          }
          l = aud.a((Long)parambhd.get(localObject1));
          if (mMyLastSeqNum <= l) {
            break label1073;
          }
          i = 1;
        }
        break;
      }
    }
    for (;;)
    {
      if (i != 0) {
        if (ad)
        {
          Timber.g("ChatConversationUpdater", "CHAT-LOG: OLD myLastSeqNum > NEW myLastSeqNum and now on SCCP", new Object[0]);
          mSequenceNumberState = ChatConversation.SequenceNumberState.UPDATED;
          mNumSCCPChatMessagesSendingOrSent = 0;
          localObject1 = a;
          l = mMyLastSeqNum;
          Timber.g("SendingMailman", "CHAT-LOG: RETRY sending chat messages above seqNum: %d", new Object[] { Long.valueOf(l) });
          parambhd = paramChatConversation.o();
          localObject2 = mMyUsername;
          try
          {
            localObject3 = parambhd.iterator();
            while (((Iterator)localObject3).hasNext())
            {
              localObject4 = (ChatFeedItem)((Iterator)localObject3).next();
              if ((localObject4 instanceof akb))
              {
                localObject4 = (akb)localObject4;
                if (mSender.equals(localObject2))
                {
                  localObject5 = ((akb)localObject4).n();
                  if ((localObject5 != null) && (((bhf)localObject5).e().longValue() > l)) {
                    ((yq)localObject1).a(paramChatConversation, (akb)localObject4, false, false);
                  }
                }
              }
            }
            if (((Snap)localObject1).W() != ((Snap)localObject2).W()) {
              break;
            }
          }
          finally {}
          if (((localObject2 instanceof aje)) && ((localObject1 instanceof aje)) && (((aje)localObject2).z())) {
            break;
          }
          mLastSnapFromServer = ((Snap)localObject1);
          break;
          label847:
          if ((((CashFeedItem)localObject1).W() != ((CashFeedItem)localObject2).W()) || (((CashFeedItem)localObject2).ao())) {
            break label209;
          }
          mLastCashFromServer = ((CashFeedItem)localObject1);
          break label209;
          label878:
          localObject5 = StatefulChatFeedItem.SendReceiveStatus.RECEIVED;
          localObject1 = localObject3;
          localObject4 = localObject2;
          break label269;
          localObject1 = new ChatMedia.a((String)localObject1, (String)localObject4).a();
          break label360;
          localObject1 = new akg.a((String)localObject1, (String)localObject4).a();
          break label360;
          if ((TextUtils.equals((CharSequence)localObject4, (CharSequence)localObject3)) && (mMyLastSeqNum == mLastSeqNumOfMyChatTheyReleased))
          {
            ((akb)localObject1).a(aud.a(localbid.c()));
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
          ((akb)localObject1).a(aud.a(localbid.c()));
          localObject3 = localObject1;
          break label411;
          label1024:
          localObject3 = null;
          break label411;
          label1030:
          if ((((akb)localObject3).W() != ((akb)localObject1).W()) || (((akb)localObject1).o())) {
            break label447;
          }
          mLastChatFromServer = ((akb)localObject3);
          break label447;
          label1061:
          paramBoolean2 = false;
          break label518;
          label1067:
          l = 0L;
          break label596;
          label1073:
          i = 0;
          continue;
          label1079:
          i = 0;
          continue;
          ((yq)localObject1).b(paramChatConversation);
        }
      }
    }
    for (;;)
    {
      a.b(paramChatConversation);
      c.a(paramChatConversation, false);
      ban.a().a(new ben());
      return;
      mSequenceNumberState = ChatConversation.SequenceNumberState.UPDATED;
    }
  }
  
  public final void a(@cgb String paramString1, @cgb String paramString2)
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
          localObject1 = ajx.F();
        } while (localObject1 == null);
        localObject1 = ((String)localObject1).getBytes();
        localObject2 = Base64.decode(paramString2[0], 0);
        paramString2 = Base64.decode(paramString2[1], 0);
        paramString2 = new CbcEncryptionAlgorithm((byte[])localObject1, (byte[])localObject2).b(paramString2, "no dataId provided");
      } while (paramString2 == null);
      localObject1 = (List)atn.a().fromJson(new String(paramString2), new TypeToken() {}.getType());
    } while ((localObject1 == null) || (((List)localObject1).isEmpty()));
    paramString2 = new ArrayList();
    Object localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (bhf)((Iterator)localObject1).next();
      paramString2.add(new bhh().a((bhf)localObject2));
    }
    paramString2 = new bhe().a(paramString2);
    paramString2 = new bhd().a(paramString2);
    mConversationUpdater.a(paramString1, paramString2, false);
    f();
  }
  
  public final void a(List<bhd> paramList)
  {
    a(paramList, true, false, false);
  }
  
  public final void a(List<bhd> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramList, paramBoolean1, paramBoolean2, false);
  }
  
  @avl
  public final void a(List<bhd> paramList, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
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
          long l2 = aud.a(((bhd)paramList.get(paramList.size() - 1)).h());
          if ((!paramBoolean1) || (l2 <= l1)) {
            break label477;
          }
          i = 1;
          l1 = Long.MAX_VALUE;
          localHashSet = new HashSet();
          Iterator localIterator = paramList.iterator();
          if (!localIterator.hasNext()) {
            continue;
          }
          localObject2 = (bhd)localIterator.next();
          localObject1 = ym.a(((bhd)localObject2).a());
          if (localObject1 != null)
          {
            a((ChatConversation)localObject1, (bhd)localObject2, false, true);
            if (!mIsUserInConversation)
            {
              Timber.g("ChatConversationManager", "CHAT-LOG: ChatConversationManager sending release message for %s", new Object[] { mId });
              mChatMessageReleaser.a((ChatConversation)localObject1, bit.a.DELETE);
            }
            if (!mIsStub) {
              break label471;
            }
            mIsStub = false;
            if (localObject1 == null) {
              break label468;
            }
            l2 = mTimestamp;
            if (l2 >= l1) {
              break label465;
            }
            l1 = l2;
            localHashSet.add(mId);
            break label474;
          }
        }
        else
        {
          l1 = mConversations.get(0)).mTimestamp;
          continue;
        }
        Object localObject2 = aul.a((bhd)localObject2);
        if (localObject2 == null) {
          break label471;
        }
        mConversations.add(localObject2);
        Object localObject1 = localObject2;
        continue;
        ban.a().a(new bcv());
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
        mIterToken = ((bhd)paramList.get(paramList.size() - 1)).m();
        d();
      }
      f();
      return;
      label465:
      continue;
      label468:
      break label474;
      label471:
      continue;
      label474:
      continue;
      label477:
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
  
  @cgc
  public final ChatConversation b(@cgb String paramString)
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
            localChatConversation.s();
          }
          localIterator.remove();
          f();
          return;
        }
      }
      return;
    }
  }
  
  public final void d()
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
  
  public final List<ChatConversation> e()
  {
    return Collections.unmodifiableList(new ArrayList(mConversations));
  }
  
  @caq
  public final void f()
  {
    cec.a(new Runnable()
    {
      /* Error */
      public final void run()
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 17	akc$1:this$0	Lakc;
        //   4: astore_1
        //   5: invokestatic 28	bgp:b	()V
        //   8: aload_1
        //   9: getfield 32	akc:mConversations	Ljava/util/List;
        //   12: astore_2
        //   13: aload_2
        //   14: monitorenter
        //   15: aload_1
        //   16: getfield 32	akc:mConversations	Ljava/util/List;
        //   19: invokestatic 38	java/util/Collections:sort	(Ljava/util/List;)V
        //   22: aload_2
        //   23: monitorexit
        //   24: new 40	akc$2
        //   27: dup
        //   28: aload_1
        //   29: invokespecial 42	akc$2:<init>	(Lakc;)V
        //   32: invokestatic 46	bgp:a	(Ljava/lang/Runnable;)V
        //   35: return
        //   36: astore_3
        //   37: aload_2
        //   38: monitorexit
        //   39: aload_3
        //   40: athrow
        //   41: astore_2
        //   42: ldc 48
        //   44: ldc 50
        //   46: iconst_0
        //   47: anewarray 4	java/lang/Object
        //   50: invokestatic 55	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
        //   53: goto -29 -> 24
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	56	0	this	1
        //   4	25	1	localakc	akc
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
  
  public final boolean g()
  {
    synchronized (mConversations)
    {
      if (!mConversations.isEmpty())
      {
        Iterator localIterator = mConversations.iterator();
        while (localIterator.hasNext()) {
          if (nextmHasUnviewedReceivedSnaps) {
            return true;
          }
        }
      }
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     akc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */