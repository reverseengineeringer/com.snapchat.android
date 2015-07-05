import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class yg
{
  public final yq a;
  public final yh b;
  public final yn c;
  final td d;
  private final ajn e;
  private final yf f;
  private final np g;
  private final ni h;
  
  public yg(@cgb yq paramyq, @cgb yh paramyh, @cgb yn paramyn, @cgb ajn paramajn, @cgb td paramtd, @cgb yf paramyf, @cgb np paramnp, @cgb ni paramni)
  {
    a = paramyq;
    b = paramyh;
    c = paramyn;
    e = paramajn;
    d = paramtd;
    f = paramyf;
    g = paramnp;
    h = paramni;
  }
  
  public final void a(@cgb ChatConversation paramChatConversation, @cgb bhd arg2, boolean paramBoolean)
  {
    String str = mMyUsername;
    final Object localObject5 = mTheirUsername;
    Object localObject4 = new HashMap();
    Object localObject6 = new HashMap();
    HashMap localHashMap = new HashMap();
    HashSet localHashSet = new HashSet();
    Object localObject2 = new HashSet();
    Object localObject3 = new HashSet();
    int i;
    if ((paramBoolean) && (!mIsUserInConversation)) {
      i = 1;
    }
    Object localObject1;
    label175:
    label193:
    Object localObject8;
    Object localObject9;
    long l1;
    long l2;
    for (;;)
    {
      synchronized (paramChatConversation.o())
      {
        localObject1 = ???.iterator();
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        localObject7 = (ChatFeedItem)((Iterator)localObject1).next();
        if (!(localObject7 instanceof CashFeedItem)) {
          break label193;
        }
        if (!mCashTransaction.mIsFromServer) {
          break label175;
        }
        localHashMap.put(((ChatFeedItem)localObject7).d(), (CashFeedItem)localObject7);
      }
      i = 0;
      continue;
      ((HashMap)localObject4).put(((ChatFeedItem)localObject7).d(), localObject7);
      continue;
      if (((ChatFeedItem)localObject7).N())
      {
        if (((localObject7 instanceof akb)) && (System.currentTimeMillis() - ((ChatFeedItem)localObject7).W() > 20000L))
        {
          mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED;
          ((HashSet)localObject3).add(localObject7);
        }
        else if (((localObject7 instanceof aji)) && (((aji)localObject7).m()))
        {
          ((aji)localObject7).e();
          e.c(mClientId);
          ((HashSet)localObject3).add(localObject7);
        }
        else
        {
          ((HashSet)localObject2).add(localObject7);
        }
      }
      else if (((ChatFeedItem)localObject7).O())
      {
        ((HashSet)localObject3).add(localObject7);
      }
      else if ((localObject7 instanceof akb))
      {
        localObject8 = (akb)localObject7;
        if (???.p())
        {
          localObject9 = ???.o().a();
          l1 = aud.a((Long)((Map)localObject9).get(localObject5));
          l2 = aud.a((Long)((Map)localObject9).get(str));
          if (((TextUtils.equals(mSender, str)) && (((akb)localObject8).s() > l2)) || ((TextUtils.equals(mSender, (CharSequence)localObject5)) && (((akb)localObject8).s() > l1))) {
            localHashSet.add(localObject8);
          }
        }
        ((HashMap)localObject4).put(((ChatFeedItem)localObject7).d(), localObject7);
        if (((akb)localObject8).f()) {
          ((HashMap)localObject6).put(((ChatFeedItem)localObject7).d(), localObject8);
        }
      }
      else
      {
        ((HashMap)localObject4).put(((ChatFeedItem)localObject7).d(), localObject7);
      }
    }
    Object localObject7 = new HashSet();
    if (???.j())
    {
      localObject1 = ???.i().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject8 = (aje)aut.a((bhy)((Iterator)localObject1).next());
        if (!((HashMap)localObject4).containsKey(((aje)localObject8).d())) {
          ((HashSet)localObject7).add(localObject8);
        }
      }
    }
    if (???.l())
    {
      localObject1 = aul.a(???.k().b());
      localObject8 = new ArrayList();
      localObject9 = ((List)localObject1).iterator();
    }
    int j;
    for (;;)
    {
      if (!((Iterator)localObject9).hasNext()) {
        break label1324;
      }
      Object localObject10 = (ChatFeedItem)((Iterator)localObject9).next();
      ((HashSet)localObject3).remove(localObject10);
      ((HashSet)localObject2).remove(localObject10);
      if ((localObject10 instanceof aje)) {
        ((HashSet)localObject7).remove(localObject10);
      }
      if ((localObject10 instanceof akn)) {
        mChatsIterToken = ((akn)localObject10).i();
      }
      Object localObject11 = ((ChatFeedItem)localObject10).d();
      if (mClearedChatIds.contains(localObject11))
      {
        ((HashMap)localObject4).remove(((ChatFeedItem)localObject10).d());
        if (((localObject10 instanceof ako)) && (((ako)localObject10).f()))
        {
          paramChatConversation.b(((ChatFeedItem)localObject10).d());
          continue;
          localObject1 = new ArrayList();
          break;
        }
        ((Iterator)localObject9).remove();
        continue;
      }
      if (((HashMap)localObject4).containsKey(((ChatFeedItem)localObject10).d()))
      {
        if ((localObject10 instanceof akb))
        {
          localObject11 = (akb)((HashMap)localObject4).get(((ChatFeedItem)localObject10).d());
          if (!localObject11.getClass().equals(localObject10.getClass()))
          {
            ((HashMap)localObject4).remove(((ChatFeedItem)localObject10).d());
            ((HashMap)localObject6).remove(((ChatFeedItem)localObject10).d());
          }
          else
          {
            ((akb)localObject11).a((akb)localObject10);
            if (((akb)localObject10).f()) {
              ((HashMap)localObject6).remove(((akb)localObject11).d());
            }
            ((List)localObject8).add(localObject11);
            if ((localObject11 instanceof ChatMedia)) {
              ((ChatMedia)localObject11).a((ChatMedia)localObject10);
            }
            ((Iterator)localObject9).remove();
          }
        }
        else if ((localObject10 instanceof aji))
        {
          localObject11 = (ChatFeedItem)((HashMap)localObject4).get(((ChatFeedItem)localObject10).d());
          if ((localObject11 instanceof aji))
          {
            aji localaji1 = (aji)localObject11;
            aji localaji2 = (aji)localObject10;
            if (aji.sSentSnapStateTimeline.indexOf(localaji1.ah()) <= aji.sSentSnapStateTimeline.indexOf(localaji2.ah())) {
              break label2517;
            }
            j = 1;
            if (j != 0)
            {
              ((List)localObject8).add(localObject11);
              ((Iterator)localObject9).remove();
            }
            else
            {
              ((HashMap)localObject4).remove(((ChatFeedItem)localObject10).d());
            }
          }
          else
          {
            ((HashMap)localObject4).remove(((ChatFeedItem)localObject10).d());
          }
        }
        else if ((localObject10 instanceof aje))
        {
          ((List)localObject8).add(((HashMap)localObject4).get(((ChatFeedItem)localObject10).d()));
          ((Iterator)localObject9).remove();
        }
        else if ((localObject10 instanceof CashFeedItem))
        {
          ((HashMap)localObject4).remove(((ChatFeedItem)localObject10).d());
        }
      }
      else if ((localObject10 instanceof akb))
      {
        localObject10 = (akb)localObject10;
        AnalyticsEvents.b(false, System.currentTimeMillis() - ((akb)localObject10).W());
        if ((!((akb)localObject10).f()) && (((TextUtils.equals(mSender, str)) && (((akb)localObject10).s() <= mLastSeqNumOfMyChatIDeleted) && (((akb)localObject10).s() <= mLastSeqNumOfMyChatTheyReleased)) || ((TextUtils.equals(mSender, (CharSequence)localObject5)) && (((akb)localObject10).s() <= mLastSeqNumOfTheirChatIDeleted)))) {
          ((Iterator)localObject9).remove();
        }
      }
      else if ((localObject10 instanceof aje))
      {
        localObject10 = (aje)localObject10;
        if (!((aje)localObject10).A())
        {
          if (!((aje)localObject10).z()) {
            EasyMetric.EasyMetricFactory.a("SNAP_DELIVERY_LATENCY").a(System.currentTimeMillis() - ((aje)localObject10).W()).d();
          }
          np.b((aje)localObject10);
        }
      }
    }
    label1324:
    paramChatConversation.a(localHashMap, (List)localObject1, paramBoolean);
    label1364:
    label1507:
    label1536:
    boolean bool3;
    boolean bool4;
    if (i == 0)
    {
      ((List)localObject1).addAll(((HashMap)localObject4).values());
      ((List)localObject1).addAll(localHashMap.values());
      ((List)localObject1).addAll((Collection)localObject2);
      paramChatConversation.a((Collection)localObject2);
      ((List)localObject1).addAll((Collection)localObject3);
      ((List)localObject1).addAll((Collection)localObject7);
      Collections.sort((List)localObject1);
      if (???.p())
      {
        localObject4 = ???.o();
        localObject5 = mId;
        localObject2 = mMyUsername;
        localObject3 = mTheirUsername;
        l1 = mTheirLastSeqNum;
        localObject6 = ((bhn)localObject4).a();
        if (localObject6 != null)
        {
          l2 = aud.a((Long)((Map)localObject6).get(localObject3));
          if (l2 < l1) {
            break label2106;
          }
          paramChatConversation.c(l2);
          mPendingReceivedChats.clear();
          b.b.remove(localObject5);
          l1 = aud.a((Long)((Map)localObject6).get(localObject2));
          if (f.d) {
            break label2523;
          }
          paramBoolean = true;
          paramChatConversation.a(l1, paramBoolean);
        }
        localObject5 = ((bhn)localObject4).b();
        if (localObject5 != null)
        {
          localObject6 = (Map)((Map)localObject5).get(localObject2);
          if ((localObject6 != null) && (((Map)localObject6).containsKey(localObject3)))
          {
            l1 = aud.a((Long)((Map)localObject6).get(localObject3));
            if (l1 > mLastSeqNumOfTheirChatIReleased) {
              mLastSeqNumOfTheirChatIReleased = l1;
            }
            if (l1 > mLastSeqNumOfTheirChatIDisplayed) {
              mLastSeqNumOfTheirChatIReleased = l1;
            }
          }
          localObject5 = (Map)((Map)localObject5).get(localObject3);
          if ((localObject5 != null) && (((Map)localObject5).containsKey(localObject2)))
          {
            l1 = aud.a((Long)((Map)localObject5).get(localObject2));
            if (l1 > mLastSeqNumOfMyChatTheyReleased) {
              mLastSeqNumOfMyChatTheyReleased = l1;
            }
          }
        }
        localObject4 = ((bhn)localObject4).c();
        if (localObject4 != null)
        {
          localObject4 = (Map)((Map)localObject4).get(localObject2);
          if (localObject4 != null)
          {
            if (((Map)localObject4).containsKey(localObject3))
            {
              l1 = aud.a((Long)((Map)localObject4).get(localObject3));
              if (l1 > mLastTimestampOfSentSnapReadReceiptIReleased) {
                mLastTimestampOfSentSnapReadReceiptIReleased = l1;
              }
            }
            if (((Map)localObject4).containsKey(localObject2))
            {
              l1 = aud.a((Long)((Map)localObject4).get(localObject2));
              if (l1 > mLastTimestampOfReceivedSnapReadReceiptIReleased) {
                mLastTimestampOfReceivedSnapReadReceiptIReleased = l1;
              }
            }
          }
        }
      }
      bool3 = mIsUserInConversation;
      bool4 = mAmIPresent;
      if (!???.e()) {
        break label2148;
      }
      ??? = ???.d().a();
      label1847:
      l1 = aud.a(???);
      ??? = ((List)localObject1).iterator();
      paramBoolean = false;
    }
    for (;;)
    {
      boolean bool2;
      if (???.hasNext())
      {
        localObject2 = (ChatFeedItem)???.next();
        if ((localObject2 instanceof akb))
        {
          localObject2 = (akb)localObject2;
          if ((TextUtils.equals(mSender, str)) && (!((akb)localObject2).O()) && (!((akb)localObject2).N()))
          {
            bool2 = paramBoolean;
            if (((akb)localObject2).s() > mLastSeqNumOfMyChatTheyReleased) {
              break label2528;
            }
            ((akb)localObject2).a(l1);
            bool2 = paramBoolean;
            if (bool3) {
              break label2528;
            }
            bool2 = paramBoolean;
            if (((akb)localObject2).f()) {
              break label2528;
            }
            ???.remove();
            continue;
            ((List)localObject1).addAll((Collection)localObject8);
            ((List)localObject1).addAll(localHashSet);
            localObject5 = ((List)localObject8).iterator();
            while (((Iterator)localObject5).hasNext()) {
              ((HashMap)localObject4).remove(((ChatFeedItem)((Iterator)localObject5).next()).d());
            }
            localObject4 = ((HashMap)localObject4).values().iterator();
            while (((Iterator)localObject4).hasNext())
            {
              localObject5 = (ChatFeedItem)((Iterator)localObject4).next();
              if ((localObject5 instanceof aje))
              {
                localObject5 = (aje)localObject5;
                if (!((aje)localObject5).z()) {
                  np.e((aje)localObject5);
                }
              }
            }
            break label1364;
            label2106:
            if (!b.b((String)localObject5)) {
              break label1507;
            }
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
            {
              public final void run()
              {
                if (b.b(localObject5)) {
                  d.a(localObject5, true);
                }
              }
            }, 8000L);
            break label1507;
            label2148:
            ??? = ???.h();
            break label1847;
          }
          bool2 = paramBoolean;
          if (!mRecipients.contains(str)) {
            break label2528;
          }
          boolean bool1;
          if (((akb)localObject2).s() <= mLastSeqNumOfTheirChatIReleased)
          {
            ((akb)localObject2).f(l1);
            ((akb)localObject2).a(l1);
            bool1 = paramBoolean;
            if (!bool3)
            {
              bool1 = paramBoolean;
              if (!((akb)localObject2).f())
              {
                ???.remove();
                bool1 = paramBoolean;
              }
            }
          }
          for (;;)
          {
            bool2 = bool1;
            if (!(localObject2 instanceof akj)) {
              break;
            }
            bool2 = bool1;
            if (((akb)localObject2).f()) {
              break;
            }
            i = ((akb)localObject2).l();
            a.a(paramChatConversation, (akb)localObject2, i, true);
            bool2 = bool1;
            break;
            bool1 = paramBoolean;
            if (!((akb)localObject2).ao())
            {
              paramBoolean = true;
              bool1 = paramBoolean;
              if (!((akb)localObject2).y())
              {
                bool1 = paramBoolean;
                if (bool4)
                {
                  ((akb)localObject2).c(ajx.bv());
                  bool1 = paramBoolean;
                }
              }
            }
          }
        }
        if ((localObject2 instanceof Snap))
        {
          localObject2 = (Snap)localObject2;
          if (((!(localObject2 instanceof aje)) || (((Snap)localObject2).W() > mLastTimestampOfReceivedSnapReadReceiptIReleased)) && ((!(localObject2 instanceof aji)) || (((Snap)localObject2).W() > mLastTimestampOfSentSnapReadReceiptIReleased) || (((Snap)localObject2).O()))) {
            continue;
          }
          ((Snap)localObject2).an();
          if (bool3) {
            continue;
          }
          ???.remove();
          continue;
        }
        if (!(localObject2 instanceof CashFeedItem)) {
          continue;
        }
        localObject2 = (CashFeedItem)localObject2;
        if (bool3) {
          continue;
        }
        if ((!((CashFeedItem)localObject2).f()) && (((CashFeedItem)localObject2).ao()))
        {
          ???.remove();
          continue;
        }
        if (((CashFeedItem)localObject2).h()) {
          continue;
        }
        paramBoolean = true;
        continue;
      }
      synchronized (mChats)
      {
        mChats.clear();
        mChats.addAll((Collection)localObject1);
        mChatsSorted = true;
        paramChatConversation.d(paramBoolean);
        return;
      }
      label2517:
      j = 0;
      break;
      label2523:
      paramBoolean = false;
      break label1536;
      label2528:
      paramBoolean = bool2;
    }
  }
}

/* Location:
 * Qualified Name:     yg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */