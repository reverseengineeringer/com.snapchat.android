import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.database.table.ClearedChatIdsTable;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;

public final class yj
{
  @Inject
  protected ya a;
  public final yq b;
  final yn c;
  private final na d;
  
  public yj()
  {
    this(yq.a(), yn.a(), na.a());
  }
  
  private yj(@cgb yq paramyq, @cgb yn paramyn, @cgb na paramna)
  {
    SnapchatApplication.b().c().a(this);
    b = paramyq;
    c = paramyn;
    d = paramna;
  }
  
  public static Map<String, Long> a(@cgb ChatConversation paramChatConversation, @cgb Long paramLong1, @cgb Long paramLong2)
  {
    String str = mTheirUsername;
    paramChatConversation = mMyUsername;
    HashMap localHashMap = new HashMap();
    localHashMap.put(str, paramLong2);
    if ((TextUtils.equals(paramChatConversation, ajx.l())) && (TextUtils.equals(str, paramChatConversation))) {}
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        localHashMap.put(paramChatConversation, paramLong1);
      }
      return localHashMap;
    }
  }
  
  public static boolean a(@cgb ChatConversation paramChatConversation)
  {
    long l3 = System.currentTimeMillis();
    List localList = paramChatConversation.o();
    long l1 = 0L;
    for (;;)
    {
      long l2;
      try
      {
        Iterator localIterator = localList.iterator();
        if (localIterator.hasNext())
        {
          ChatFeedItem localChatFeedItem = (ChatFeedItem)localIterator.next();
          l2 = l1;
          if ((localChatFeedItem instanceof akb))
          {
            akb localakb = (akb)localChatFeedItem;
            long l4 = localakb.s();
            l2 = l1;
            if (localakb.g(l3))
            {
              l2 = l1;
              if (localChatFeedItem.k().contains(mMyUsername))
              {
                localakb.a(l3);
                l2 = Math.max(l1, l4);
                na.b(localakb);
                AnalyticsEvents.g(localakb.h());
              }
            }
          }
        }
        else
        {
          if (l1 > mLastSeqNumOfTheirChatIReleased)
          {
            mLastSeqNumOfTheirChatIReleased = l1;
            return true;
          }
          return false;
        }
      }
      finally {}
      l1 = l2;
    }
  }
  
  public static boolean a(@cgb ChatConversation paramChatConversation, long paramLong)
  {
    List localList = paramChatConversation.o();
    long l = 0L;
    label121:
    for (;;)
    {
      try
      {
        Iterator localIterator = localList.iterator();
        if (localIterator.hasNext())
        {
          Object localObject = (ChatFeedItem)localIterator.next();
          if ((!(localObject instanceof aji)) || (((ChatFeedItem)localObject).W() > paramLong)) {
            break label121;
          }
          localObject = (aji)localObject;
          if (((aji)localObject).i())
          {
            ((aji)localObject).an();
            l = ((aji)localObject).W();
            break label121;
          }
        }
        if (l > mLastTimestampOfSentSnapReadReceiptIReleased)
        {
          mLastTimestampOfSentSnapReadReceiptIReleased = l;
          return true;
        }
        return false;
      }
      finally {}
    }
  }
  
  public static void b(@cgb ChatConversation paramChatConversation)
  {
    Object localObject1 = new ArrayList();
    ??? = mMyUsername;
    Object localObject3 = mTheirUsername;
    for (;;)
    {
      long l2;
      akb localakb;
      synchronized (paramChatConversation.o())
      {
        long l1 = mLastSeqNumOfMyChatTheyReleased;
        l2 = mLastSeqNumOfTheirChatIReleased;
        Iterator localIterator = ???.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        ChatFeedItem localChatFeedItem = (ChatFeedItem)localIterator.next();
        if (!(localChatFeedItem instanceof akb)) {
          continue;
        }
        localakb = (akb)localChatFeedItem;
        if ((TextUtils.equals((CharSequence)???, (CharSequence)localObject3)) || (localakb.f())) {
          continue;
        }
        if (TextUtils.equals(localChatFeedItem.j(), (CharSequence)???))
        {
          if (localakb.s() > l1) {
            continue;
          }
          ((ArrayList)localObject1).add(localakb);
        }
      }
      if (localakb.s() <= l2) {
        ((ArrayList)localObject1).add(localakb);
      }
    }
    synchronized (mChats)
    {
      mChats.removeAll((Collection)localObject1);
      ??? = new HashSet();
      localObject1 = ((ArrayList)localObject1).iterator();
      if (((Iterator)localObject1).hasNext())
      {
        localObject3 = (ChatFeedItem)((Iterator)localObject1).next();
        ((Set)???).add(((ChatFeedItem)localObject3).d());
        ClearedChatIdsTable.a(SnapchatApplication.b(), ((ChatFeedItem)localObject3).d(), mId);
      }
    }
    paramChatConversation.a((Set)???);
  }
  
  public static boolean b(@cgb ChatConversation paramChatConversation, long paramLong)
  {
    List localList = paramChatConversation.o();
    long l = 0L;
    label180:
    for (;;)
    {
      try
      {
        Iterator localIterator = localList.iterator();
        Object localObject;
        if (localIterator.hasNext())
        {
          localObject = (ChatFeedItem)localIterator.next();
          if (((localObject instanceof ChatMedia)) && (((ChatMedia)localObject).H()))
          {
            ((ChatMedia)localObject).I();
            Timber.c("ChatMessageReleaser", "CHAT-LOG: preserving chat media with id[%i]", new Object[] { ((ChatFeedItem)localObject).d() });
          }
        }
        else
        {
          if (l <= mLastTimestampOfReceivedSnapReadReceiptIReleased) {
            continue;
          }
          mLastTimestampOfReceivedSnapReadReceiptIReleased = l;
          return true;
        }
        if (((localObject instanceof aje)) && (((ChatFeedItem)localObject).W() <= paramLong))
        {
          localObject = (aje)localObject;
          if ((!((aje)localObject).z()) || (!((aje)localObject).g())) {
            continue;
          }
          ((aje)localObject).an();
          l = ((aje)localObject).W();
          break label180;
          return false;
        }
      }
      finally {}
    }
  }
  
  public static boolean c(@cgb ChatConversation paramChatConversation, long paramLong)
  {
    long l2 = mLastSeqNumOfTheirChatIDisplayed;
    if (paramLong <= l2) {
      return false;
    }
    long l3 = System.currentTimeMillis();
    List localList = paramChatConversation.o();
    long l1 = 0L;
    label204:
    label209:
    for (;;)
    {
      akb localakb;
      long l4;
      try
      {
        Iterator localIterator = localList.iterator();
        if (localIterator.hasNext())
        {
          ChatFeedItem localChatFeedItem = (ChatFeedItem)localIterator.next();
          if (!(localChatFeedItem instanceof akb)) {
            break label209;
          }
          localakb = (akb)localChatFeedItem;
          l4 = localakb.s();
          if ((l4 > paramLong) || (!localChatFeedItem.k().contains(mMyUsername))) {
            break label209;
          }
          if (((localakb instanceof ChatMedia)) && (((ChatMedia)localakb).H()))
          {
            ((ChatMedia)localakb).I();
            Timber.c("ChatMessageReleaser", "CHAT-LOG: preserving chat media with id[%i]", new Object[] { localakb.d() });
          }
        }
        else
        {
          if (l1 <= l2) {
            break label204;
          }
          mLastSeqNumOfTheirChatIDisplayed = l1;
          return true;
        }
      }
      finally {}
      if (!localakb.y()) {
        localakb.f(l3);
      }
      l1 = Math.max(l1, l4);
      break label209;
      return false;
    }
  }
  
  public final void a(@cgb ChatConversation paramChatConversation, @cgb bit.a parama)
  {
    long l1 = mLastSeqNumOfTheirChatIReleased;
    long l2 = mMyLastSeqNum;
    long l3 = mLastTimestampOfSentSnapReadReceiptIReleased;
    long l4 = mLastTimestampOfReceivedSnapReadReceiptIReleased;
    long l5 = mLastSeqNumOfTheirChatIDeleted;
    long l6 = mLastSeqNumOfMyChatIDeleted;
    long l7 = mLastTimestampOfSentSnapReadReceiptIDeleted;
    long l8 = mLastTimestampOfReceivedSnapReadReceiptIDeleted;
    AnalyticsEvents.a(parama, paramChatConversation.q(), System.currentTimeMillis());
    if ((parama == bit.a.DELETE) && (l1 == l5) && (l2 == l6) && (l3 == l7) && (l4 == l8))
    {
      Timber.g("ChatMessageReleaser", "CHAT-LOG: ChatMessageReleaser not sending DELETE message because there's no change", new Object[0]);
      return;
    }
    Map localMap1 = a(paramChatConversation, Long.valueOf(l2), Long.valueOf(l1));
    Map localMap2 = a(paramChatConversation, Long.valueOf(l4), Long.valueOf(l3));
    b.a(paramChatConversation, localMap1, localMap2, parama);
  }
  
  public final void a(@cgb ChatConversation paramChatConversation, @cgb bit parambit)
  {
    Object localObject1 = parambit.b();
    if (localObject1 == null) {}
    String str;
    do
    {
      return;
      str = mMyUsername;
    } while (!((Map)localObject1).containsKey(str));
    synchronized (paramChatConversation.o())
    {
      long l = aud.a((Long)((Map)localObject1).get(str));
      if (l > mLastSeqNumOfMyChatTheyReleased) {
        mLastSeqNumOfMyChatTheyReleased = l;
      }
      localObject1 = ???.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (ChatFeedItem)((Iterator)localObject1).next();
        if (((localObject2 instanceof akb)) && (TextUtils.equals(((ChatFeedItem)localObject2).j(), str)))
        {
          localObject2 = (akb)localObject2;
          if (((akb)localObject2).s() <= mLastSeqNumOfMyChatTheyReleased) {
            ((akb)localObject2).a(parambit.d().longValue());
          }
        }
      }
    }
    c.a(paramChatConversation, false);
  }
  
  public final void a(@cgb ChatConversation paramChatConversation, @cgb CashFeedItem paramCashFeedItem)
  {
    for (;;)
    {
      ChatFeedItem localChatFeedItem;
      synchronized (paramChatConversation.o())
      {
        Iterator localIterator = ???.iterator();
        if (localIterator.hasNext())
        {
          localChatFeedItem = (ChatFeedItem)localIterator.next();
          if (localChatFeedItem.d() != paramCashFeedItem.d()) {
            break label97;
          }
          if (mCashTransaction.mIsFromServer) {
            a.b(paramChatConversation, atv.a(paramCashFeedItem));
          }
        }
        else
        {
          return;
        }
        if (!paramCashFeedItem.q()) {
          continue;
        }
        paramCashFeedItem.a(true);
      }
      label97:
      if (((localChatFeedItem instanceof ChatMedia)) && (((ChatMedia)localChatFeedItem).H()))
      {
        ((ChatMedia)localChatFeedItem).I();
        Timber.c("ChatMessageReleaser", "CHAT-LOG: preserving chat media with id[%i]", new Object[] { localChatFeedItem.d() });
      }
    }
  }
  
  public final void a(@cgb ChatConversation paramChatConversation, boolean paramBoolean)
  {
    List localList = paramChatConversation.o();
    long l5 = 0L;
    long l6 = 0L;
    long l4 = 0L;
    long l3 = 0L;
    ArrayList localArrayList = new ArrayList();
    String str = mMyUsername;
    long l8 = System.currentTimeMillis();
    long l1 = -1L;
    for (;;)
    {
      int i;
      Object localObject;
      long l7;
      try
      {
        Iterator localIterator = localList.iterator();
        j = 0;
        i = 0;
        if (localIterator.hasNext())
        {
          localObject = (ChatFeedItem)localIterator.next();
          if (!(localObject instanceof akb)) {
            break label432;
          }
          localObject = (akb)localObject;
          l7 = l1;
          if (((akb)localObject).o()) {
            break label625;
          }
          l7 = l1;
          if (!mRecipients.contains(str)) {
            break label625;
          }
          if (!(localObject instanceof ChatMedia)) {
            continue;
          }
          if (((ChatMedia)localObject).H())
          {
            ((ChatMedia)localObject).I();
            System.out.println("CHAT-LOG: preserving chat media with id");
            Timber.c("ChatMessageReleaser", "CHAT-LOG: preserving chat media with id[%i]", new Object[] { ((akb)localObject).d() });
          }
        }
        else
        {
          if (l5 > mLastSeqNumOfTheirChatIDisplayed) {
            mLastSeqNumOfTheirChatIDisplayed = l5;
          }
          if (l6 <= mLastSeqNumOfTheirChatIReleased) {
            break label606;
          }
          mLastSeqNumOfTheirChatIReleased = l6;
          i = 1;
          if (l4 > mLastTimestampOfSentSnapReadReceiptIReleased)
          {
            mLastTimestampOfSentSnapReadReceiptIReleased = l4;
            i = 1;
          }
          if (l3 > mLastTimestampOfReceivedSnapReadReceiptIReleased)
          {
            mLastTimestampOfReceivedSnapReadReceiptIReleased = l3;
            i = 1;
          }
          if (i != 0) {
            a(paramChatConversation, bit.a.RELEASE);
          }
          a.b(paramChatConversation, localArrayList);
          return;
        }
        l2 = l1;
        if (paramBoolean) {
          l2 = ((akb)localObject).x();
        }
        if ((!paramBoolean) || (((akb)localObject).g(l8)))
        {
          na.b((akb)localObject);
          AnalyticsEvents.g(((akb)localObject).h());
          ((akb)localObject).f(l8);
          ((akb)localObject).c(0);
          ((akb)localObject).a(l8);
          l1 = ((akb)localObject).s();
          l7 = l2;
          if (l1 <= l6) {
            break label625;
          }
          l5 = l1;
          l6 = l1;
          l1 = l2;
          l2 = l6;
          break label633;
          l2 = l1;
          if (!paramBoolean) {
            continue;
          }
          l2 = l1;
          if (((akb)localObject).y()) {
            continue;
          }
          l2 = l1;
          if (l1 == -1L) {
            continue;
          }
          ((akb)localObject).e(l1);
          l2 = l1;
          continue;
        }
        continue;
        if (!(localObject instanceof aji)) {
          break label487;
        }
      }
      finally {}
      label432:
      if (i == 0)
      {
        localObject = (aji)localObject;
        if (!((aji)localObject).i())
        {
          i = 1;
          continue;
        }
        ((aji)localObject).an();
        l2 = ((aji)localObject).W();
        if (l2 > l4) {
          break label640;
        }
      }
      else
      {
        label487:
        if (((localObject instanceof aje)) && (j == 0))
        {
          localObject = (aje)localObject;
          if ((!((aje)localObject).z()) || (!((aje)localObject).g())) {
            break label647;
          }
          ((aje)localObject).an();
          l2 = ((aje)localObject).W();
          if (l2 > l3) {
            break label653;
          }
        }
        else
        {
          if (!(localObject instanceof CashFeedItem)) {
            continue;
          }
          localObject = (CashFeedItem)localObject;
          if (mCashTransaction.mIsFromServer)
          {
            localArrayList.add(localObject);
            continue;
          }
          if (!((CashFeedItem)localObject).q()) {
            continue;
          }
          ((CashFeedItem)localObject).a(true);
          continue;
          label606:
          i = 0;
          continue;
        }
        l2 = l3;
        break label653;
      }
      long l2 = l4;
      break label640;
      label625:
      l1 = l7;
      l2 = l6;
      label633:
      l6 = l2;
      continue;
      label640:
      l4 = l2;
      continue;
      label647:
      int j = 1;
      continue;
      label653:
      l3 = l2;
    }
  }
}

/* Location:
 * Qualified Name:     yj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */