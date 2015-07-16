import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
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

public final class zf
{
  @Inject
  protected yw a;
  public final zm b;
  private final zj c;
  private final nr d;
  
  public zf()
  {
    this(zm.a(), zj.a(), nr.a());
  }
  
  private zf(@chc zm paramzm, @chc zj paramzj, @chc nr paramnr)
  {
    SnapchatApplication.b().c().a(this);
    b = paramzm;
    c = paramzj;
    d = paramnr;
  }
  
  public static Map<String, Long> a(@chc ChatConversation paramChatConversation, @chc Long paramLong1, @chc Long paramLong2)
  {
    String str = mTheirUsername;
    paramChatConversation = mMyUsername;
    HashMap localHashMap = new HashMap();
    localHashMap.put(str, paramLong2);
    if ((TextUtils.equals(paramChatConversation, akr.l())) && (TextUtils.equals(str, paramChatConversation))) {}
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        localHashMap.put(paramChatConversation, paramLong1);
      }
      return localHashMap;
    }
  }
  
  public static void a(@chc ChatConversation paramChatConversation, @chc bju parambju)
  {
    Object localObject1 = parambju.b();
    if (localObject1 == null) {}
    String str;
    do
    {
      return;
      str = mMyUsername;
    } while (!((Map)localObject1).containsKey(str));
    synchronized (paramChatConversation.o())
    {
      long l = avb.a((Long)((Map)localObject1).get(str));
      if (l > mLastSeqNumOfMyChatTheyReleased) {
        mLastSeqNumOfMyChatTheyReleased = l;
      }
      localObject1 = ???.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (ChatFeedItem)((Iterator)localObject1).next();
        if (((localObject2 instanceof akw)) && (TextUtils.equals(((ChatFeedItem)localObject2).j(), str)))
        {
          localObject2 = (akw)localObject2;
          if (((akw)localObject2).t() <= mLastSeqNumOfMyChatTheyReleased) {
            ((akw)localObject2).a(parambju.d().longValue());
          }
        }
      }
    }
  }
  
  public static boolean a(@chc ChatConversation paramChatConversation)
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
          if ((localChatFeedItem instanceof akw))
          {
            akw localakw = (akw)localChatFeedItem;
            long l4 = localakw.t();
            l2 = l1;
            if (localakw.g(l3))
            {
              l2 = l1;
              if (localChatFeedItem.k().contains(mMyUsername))
              {
                localakw.a(l3);
                l2 = Math.max(l1, l4);
                nr.b(localakw);
                AnalyticsEvents.f(localakw.h());
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
  
  public static boolean a(@chc ChatConversation paramChatConversation, long paramLong)
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
          if ((!(localObject instanceof ake)) || (((ChatFeedItem)localObject).U() > paramLong)) {
            break label121;
          }
          localObject = (ake)localObject;
          if (((ake)localObject).l())
          {
            ((ake)localObject).al();
            l = ((ake)localObject).U();
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
  
  public static void b(@chc ChatConversation paramChatConversation)
  {
    Object localObject1 = new ArrayList();
    ??? = mMyUsername;
    Object localObject3 = mTheirUsername;
    for (;;)
    {
      long l2;
      akw localakw;
      synchronized (paramChatConversation.o())
      {
        long l1 = mLastSeqNumOfMyChatTheyReleased;
        l2 = mLastSeqNumOfTheirChatIReleased;
        Iterator localIterator = ???.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        ChatFeedItem localChatFeedItem = (ChatFeedItem)localIterator.next();
        if (!(localChatFeedItem instanceof akw)) {
          continue;
        }
        localakw = (akw)localChatFeedItem;
        if ((TextUtils.equals((CharSequence)???, (CharSequence)localObject3)) || (localakw.f())) {
          continue;
        }
        if (TextUtils.equals(localChatFeedItem.j(), (CharSequence)???))
        {
          if (localakw.t() > l1) {
            continue;
          }
          ((ArrayList)localObject1).add(localakw);
        }
      }
      if (localakw.t() <= l2) {
        ((ArrayList)localObject1).add(localakw);
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
  
  public static boolean b(@chc ChatConversation paramChatConversation, long paramLong)
  {
    List localList = paramChatConversation.o();
    long l = 0L;
    label167:
    for (;;)
    {
      try
      {
        Iterator localIterator = localList.iterator();
        Object localObject;
        if (localIterator.hasNext())
        {
          localObject = (ChatFeedItem)localIterator.next();
          if (((localObject instanceof ChatMedia)) && (((ChatMedia)localObject).I()))
          {
            ((ChatMedia)localObject).J();
            ((ChatFeedItem)localObject).d();
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
        if (((localObject instanceof aka)) && (((ChatFeedItem)localObject).U() <= paramLong))
        {
          localObject = (aka)localObject;
          if ((!((aka)localObject).A()) || (!((aka)localObject).g())) {
            continue;
          }
          ((aka)localObject).al();
          l = ((aka)localObject).U();
          break label167;
          return false;
        }
      }
      finally {}
    }
  }
  
  public static boolean c(@chc ChatConversation paramChatConversation, long paramLong)
  {
    long l2 = mLastSeqNumOfTheirChatIDisplayed;
    if (paramLong <= l2) {
      return false;
    }
    long l3 = System.currentTimeMillis();
    List localList = paramChatConversation.o();
    long l1 = 0L;
    label191:
    label196:
    for (;;)
    {
      akw localakw;
      long l4;
      try
      {
        Iterator localIterator = localList.iterator();
        if (localIterator.hasNext())
        {
          ChatFeedItem localChatFeedItem = (ChatFeedItem)localIterator.next();
          if (!(localChatFeedItem instanceof akw)) {
            break label196;
          }
          localakw = (akw)localChatFeedItem;
          l4 = localakw.t();
          if ((l4 > paramLong) || (!localChatFeedItem.k().contains(mMyUsername))) {
            break label196;
          }
          if (((localakw instanceof ChatMedia)) && (((ChatMedia)localakw).I()))
          {
            ((ChatMedia)localakw).J();
            localakw.d();
          }
        }
        else
        {
          if (l1 <= l2) {
            break label191;
          }
          mLastSeqNumOfTheirChatIDisplayed = l1;
          return true;
        }
      }
      finally {}
      if (!localakw.z()) {
        localakw.f(l3);
      }
      l1 = Math.max(l1, l4);
      break label196;
      return false;
    }
  }
  
  public final void a(@chc ChatConversation paramChatConversation, @chc bju.a parama)
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
    if ((parama == bju.a.DELETE) && (l1 == l5) && (l2 == l6) && (l3 == l7) && (l4 == l8)) {
      return;
    }
    Map localMap1 = a(paramChatConversation, Long.valueOf(l2), Long.valueOf(l1));
    Map localMap2 = a(paramChatConversation, Long.valueOf(l4), Long.valueOf(l3));
    b.a(paramChatConversation, localMap1, localMap2, parama);
  }
  
  public final void a(@chc ChatConversation paramChatConversation, @chc CashFeedItem paramCashFeedItem)
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
            break label96;
          }
          if (mCashTransaction.mIsFromServer) {
            a.b(paramChatConversation, aut.a(paramCashFeedItem));
          }
        }
        else
        {
          return;
        }
        if (!paramCashFeedItem.p()) {
          continue;
        }
        paramCashFeedItem.h();
      }
      label96:
      if (((localChatFeedItem instanceof ChatMedia)) && (((ChatMedia)localChatFeedItem).I()))
      {
        ((ChatMedia)localChatFeedItem).J();
        localChatFeedItem.d();
      }
    }
  }
  
  public final void a(@chc ChatConversation paramChatConversation, boolean paramBoolean)
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
          if (!(localObject instanceof akw)) {
            break label423;
          }
          localObject = (akw)localObject;
          l7 = l1;
          if (((akw)localObject).o()) {
            break label615;
          }
          l7 = l1;
          if (!mRecipients.contains(str)) {
            break label615;
          }
          if (!(localObject instanceof ChatMedia)) {
            continue;
          }
          if (((ChatMedia)localObject).I())
          {
            ((ChatMedia)localObject).J();
            System.out.println("CHAT-LOG: preserving chat media with id");
            ((akw)localObject).d();
          }
        }
        else
        {
          if (l5 > mLastSeqNumOfTheirChatIDisplayed) {
            mLastSeqNumOfTheirChatIDisplayed = l5;
          }
          if (l6 <= mLastSeqNumOfTheirChatIReleased) {
            break label596;
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
            a(paramChatConversation, bju.a.RELEASE);
          }
          a.b(paramChatConversation, localArrayList);
          paramChatConversation.r();
          return;
        }
        l2 = l1;
        if (paramBoolean) {
          l2 = ((akw)localObject).y();
        }
        if ((!paramBoolean) || (((akw)localObject).g(l8)))
        {
          nr.b((akw)localObject);
          AnalyticsEvents.f(((akw)localObject).h());
          ((akw)localObject).f(l8);
          ((akw)localObject).c(0);
          ((akw)localObject).a(l8);
          l1 = ((akw)localObject).t();
          l7 = l2;
          if (l1 <= l6) {
            break label615;
          }
          l5 = l1;
          l6 = l1;
          l1 = l2;
          l2 = l6;
          break label623;
          l2 = l1;
          if (!paramBoolean) {
            continue;
          }
          l2 = l1;
          if (((akw)localObject).z()) {
            continue;
          }
          l2 = l1;
          if (l1 == -1L) {
            continue;
          }
          ((akw)localObject).e(l1);
          l2 = l1;
          continue;
        }
        continue;
        if (!(localObject instanceof ake)) {
          break label478;
        }
      }
      finally {}
      label423:
      if (i == 0)
      {
        localObject = (ake)localObject;
        if (!((ake)localObject).l())
        {
          i = 1;
          continue;
        }
        ((ake)localObject).al();
        l2 = ((ake)localObject).U();
        if (l2 > l4) {
          break label630;
        }
      }
      else
      {
        label478:
        if (((localObject instanceof aka)) && (j == 0))
        {
          localObject = (aka)localObject;
          if ((!((aka)localObject).A()) || (!((aka)localObject).g())) {
            break label637;
          }
          ((aka)localObject).al();
          l2 = ((aka)localObject).U();
          if (l2 > l3) {
            break label643;
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
          if (!((CashFeedItem)localObject).p()) {
            continue;
          }
          ((CashFeedItem)localObject).h();
          continue;
          label596:
          i = 0;
          continue;
        }
        l2 = l3;
        break label643;
      }
      long l2 = l4;
      break label630;
      label615:
      l1 = l7;
      l2 = l6;
      label623:
      l6 = l2;
      continue;
      label630:
      l4 = l2;
      continue;
      label637:
      int j = 1;
      continue;
      label643:
      l3 = l2;
    }
  }
}

/* Location:
 * Qualified Name:     zf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */