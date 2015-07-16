import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.snapchat.android.analytics.AnalyticsEvents;
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

public final class zc
{
  public final zm a;
  public final zd b;
  final tt c;
  private final zj d;
  private final aki e;
  private final zb f;
  private final og g;
  private final nz h;
  
  public zc(@chc zm paramzm, @chc zd paramzd, @chc zj paramzj, @chc aki paramaki, @chc tt paramtt, @chc zb paramzb, @chc og paramog, @chc nz paramnz)
  {
    a = paramzm;
    b = paramzd;
    d = paramzj;
    e = paramaki;
    c = paramtt;
    f = paramzb;
    g = paramog;
    h = paramnz;
  }
  
  public final void a(@chc ChatConversation paramChatConversation, @chc bid arg2, boolean paramBoolean)
  {
    String str = mMyUsername;
    final Object localObject5 = mTheirUsername;
    Object localObject4 = new HashMap();
    Object localObject6 = new HashMap();
    HashMap localHashMap = new HashMap();
    HashSet localHashSet = new HashSet();
    Object localObject2 = new HashSet();
    Object localObject3 = new HashSet();
    boolean bool2 = false;
    int i;
    if ((paramBoolean) && (!mIsUserInConversation)) {
      i = 1;
    }
    Object localObject1;
    label178:
    label196:
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
          break label196;
        }
        if (!mCashTransaction.mIsFromServer) {
          break label178;
        }
        localHashMap.put(((ChatFeedItem)localObject7).d(), (CashFeedItem)localObject7);
      }
      i = 0;
      continue;
      ((HashMap)localObject4).put(((ChatFeedItem)localObject7).d(), localObject7);
      continue;
      if (((ChatFeedItem)localObject7).O())
      {
        if (((localObject7 instanceof akw)) && (System.currentTimeMillis() - ((ChatFeedItem)localObject7).U() > 20000L))
        {
          mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED;
          ((HashSet)localObject3).add(localObject7);
        }
        else if (((localObject7 instanceof ake)) && (((ake)localObject7).n()))
        {
          ((ake)localObject7).e();
          e.c(mClientId);
          ((HashSet)localObject3).add(localObject7);
        }
        else
        {
          ((HashSet)localObject2).add(localObject7);
        }
      }
      else if (((ChatFeedItem)localObject7).P())
      {
        ((HashSet)localObject3).add(localObject7);
      }
      else if ((localObject7 instanceof akw))
      {
        localObject8 = (akw)localObject7;
        if (???.p())
        {
          localObject9 = ???.o().a();
          l1 = avb.a((Long)((Map)localObject9).get(localObject5));
          l2 = avb.a((Long)((Map)localObject9).get(str));
          if (((TextUtils.equals(mSender, str)) && (((akw)localObject8).t() > l2)) || ((TextUtils.equals(mSender, (CharSequence)localObject5)) && (((akw)localObject8).t() > l1))) {
            localHashSet.add(localObject8);
          }
        }
        ((HashMap)localObject4).put(((ChatFeedItem)localObject7).d(), localObject7);
        if (((akw)localObject8).f()) {
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
        localObject8 = (aka)avr.a((biy)((Iterator)localObject1).next());
        if (!((HashMap)localObject4).containsKey(((aka)localObject8).d())) {
          ((HashSet)localObject7).add(localObject8);
        }
      }
    }
    if (???.l())
    {
      localObject1 = avj.a(???.k().b());
      localObject8 = new ArrayList();
      localObject9 = ((List)localObject1).iterator();
    }
    int j;
    for (;;)
    {
      if (!((Iterator)localObject9).hasNext()) {
        break label1306;
      }
      Object localObject10 = (ChatFeedItem)((Iterator)localObject9).next();
      ((HashSet)localObject3).remove(localObject10);
      ((HashSet)localObject2).remove(localObject10);
      if ((localObject10 instanceof aka)) {
        ((HashSet)localObject7).remove(localObject10);
      }
      if ((localObject10 instanceof ali)) {
        mChatsIterToken = ((ali)localObject10).l();
      }
      Object localObject11 = ((ChatFeedItem)localObject10).d();
      if (mClearedChatIds.contains(localObject11))
      {
        ((HashMap)localObject4).remove(((ChatFeedItem)localObject10).d());
        if (((localObject10 instanceof alj)) && (((alj)localObject10).f()))
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
        if ((localObject10 instanceof akw))
        {
          localObject11 = (akw)((HashMap)localObject4).get(((ChatFeedItem)localObject10).d());
          if (!localObject11.getClass().equals(localObject10.getClass()))
          {
            ((HashMap)localObject4).remove(((ChatFeedItem)localObject10).d());
            ((HashMap)localObject6).remove(((ChatFeedItem)localObject10).d());
          }
          else
          {
            ((akw)localObject11).a((akw)localObject10);
            if (((akw)localObject10).f()) {
              ((HashMap)localObject6).remove(((akw)localObject11).d());
            }
            ((List)localObject8).add(localObject11);
            if ((localObject11 instanceof ChatMedia)) {
              ((ChatMedia)localObject11).a((ChatMedia)localObject10);
            }
            ((Iterator)localObject9).remove();
          }
        }
        else if ((localObject10 instanceof ake))
        {
          localObject11 = (ChatFeedItem)((HashMap)localObject4).get(((ChatFeedItem)localObject10).d());
          if ((localObject11 instanceof ake))
          {
            ake localake1 = (ake)localObject11;
            ake localake2 = (ake)localObject10;
            if (ake.sSentSnapStateTimeline.indexOf(localake1.af()) <= ake.sSentSnapStateTimeline.indexOf(localake2.af())) {
              break label2544;
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
        else if ((localObject10 instanceof aka))
        {
          ((List)localObject8).add(((HashMap)localObject4).get(((ChatFeedItem)localObject10).d()));
          ((Iterator)localObject9).remove();
        }
        else if ((localObject10 instanceof CashFeedItem))
        {
          ((HashMap)localObject4).remove(((ChatFeedItem)localObject10).d());
        }
      }
      else if ((localObject10 instanceof akw))
      {
        localObject10 = (akw)localObject10;
        AnalyticsEvents.b(false, System.currentTimeMillis() - ((akw)localObject10).U());
        if ((!((akw)localObject10).f()) && (((TextUtils.equals(mSender, str)) && (((akw)localObject10).t() <= mLastSeqNumOfMyChatIDeleted) && (((akw)localObject10).t() <= mLastSeqNumOfMyChatTheyReleased)) || ((TextUtils.equals(mSender, (CharSequence)localObject5)) && (((akw)localObject10).t() <= mLastSeqNumOfTheirChatIDeleted)))) {
          ((Iterator)localObject9).remove();
        }
      }
      else if ((localObject10 instanceof aka))
      {
        localObject10 = (aka)localObject10;
        if (!((aka)localObject10).B())
        {
          nz.a((aka)localObject10, "all_updates");
          og.b((aka)localObject10);
        }
      }
    }
    label1306:
    paramChatConversation.a(localHashMap, (List)localObject1, paramBoolean);
    label1346:
    label1489:
    label1518:
    boolean bool5;
    boolean bool6;
    label1829:
    boolean bool1;
    boolean bool3;
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
        localObject6 = ((bin)localObject4).a();
        if (localObject6 != null)
        {
          l2 = avb.a((Long)((Map)localObject6).get(localObject3));
          if (l2 < l1) {
            break label2085;
          }
          paramChatConversation.c(l2);
          mPendingReceivedChats.clear();
          b.b.remove(localObject5);
          l1 = avb.a((Long)((Map)localObject6).get(localObject2));
          if (f.d) {
            break label2550;
          }
          paramBoolean = true;
          paramChatConversation.a(l1, paramBoolean);
        }
        localObject5 = ((bin)localObject4).b();
        if (localObject5 != null)
        {
          localObject6 = (Map)((Map)localObject5).get(localObject2);
          if ((localObject6 != null) && (((Map)localObject6).containsKey(localObject3)))
          {
            l1 = avb.a((Long)((Map)localObject6).get(localObject3));
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
            l1 = avb.a((Long)((Map)localObject5).get(localObject2));
            if (l1 > mLastSeqNumOfMyChatTheyReleased) {
              mLastSeqNumOfMyChatTheyReleased = l1;
            }
          }
        }
        localObject4 = ((bin)localObject4).c();
        if (localObject4 != null)
        {
          localObject4 = (Map)((Map)localObject4).get(localObject2);
          if (localObject4 != null)
          {
            if (((Map)localObject4).containsKey(localObject3))
            {
              l1 = avb.a((Long)((Map)localObject4).get(localObject3));
              if (l1 > mLastTimestampOfSentSnapReadReceiptIReleased) {
                mLastTimestampOfSentSnapReadReceiptIReleased = l1;
              }
            }
            if (((Map)localObject4).containsKey(localObject2))
            {
              l1 = avb.a((Long)((Map)localObject4).get(localObject2));
              if (l1 > mLastTimestampOfReceivedSnapReadReceiptIReleased) {
                mLastTimestampOfReceivedSnapReadReceiptIReleased = l1;
              }
            }
          }
        }
      }
      bool5 = mIsUserInConversation;
      bool6 = mAmIPresent;
      if (!???.e()) {
        break label2127;
      }
      ??? = ???.d().a();
      l1 = avb.a(???);
      ??? = ((List)localObject1).iterator();
      paramBoolean = false;
      bool1 = false;
      bool3 = false;
    }
    label1851:
    label2085:
    label2127:
    label2538:
    label2541:
    label2544:
    label2550:
    label2555:
    label2558:
    label2564:
    label2567:
    for (;;)
    {
      boolean bool4;
      if (???.hasNext())
      {
        localObject2 = (ChatFeedItem)???.next();
        if ((localObject2 instanceof akw))
        {
          localObject2 = (akw)localObject2;
          if ((TextUtils.equals(mSender, str)) && (!((akw)localObject2).P()) && (!((akw)localObject2).O()))
          {
            if (((akw)localObject2).t() > mLastSeqNumOfMyChatTheyReleased) {
              break label2541;
            }
            ((akw)localObject2).a(l1);
            if ((bool5) || (((akw)localObject2).f())) {
              break label2541;
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
              if ((localObject5 instanceof aka))
              {
                localObject5 = (aka)localObject5;
                if (!((aka)localObject5).A()) {
                  og.e((aka)localObject5);
                }
              }
            }
            break label1346;
            if (!b.b((String)localObject5)) {
              break label1489;
            }
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
            {
              public final void run()
              {
                if (b.b(localObject5)) {
                  c.a(localObject5, true);
                }
              }
            }, 8000L);
            break label1489;
            ??? = ???.h();
            break label1829;
          }
          if (!mRecipients.contains(str)) {
            break label2541;
          }
          if (((akw)localObject2).t() <= mLastSeqNumOfTheirChatIReleased)
          {
            ((akw)localObject2).f(l1);
            ((akw)localObject2).a(l1);
            bool4 = paramBoolean;
            if (bool5) {
              break label2558;
            }
            bool4 = paramBoolean;
            if (((akw)localObject2).f()) {
              break label2558;
            }
            ???.remove();
          }
        }
      }
      for (;;)
      {
        if (((localObject2 instanceof ale)) && (!((akw)localObject2).f()))
        {
          i = ((akw)localObject2).m();
          a.a(paramChatConversation, (akw)localObject2, i, true);
          break label2555;
          bool4 = paramBoolean;
          if (((akw)localObject2).am()) {
            break label2558;
          }
          paramBoolean = true;
          bool4 = paramBoolean;
          if (((akw)localObject2).z()) {
            break label2558;
          }
          bool4 = paramBoolean;
          if (!bool6) {
            break label2558;
          }
          ((akw)localObject2).c(akr.bs());
          bool4 = paramBoolean;
          break label2558;
          if ((localObject2 instanceof Snap))
          {
            localObject2 = (Snap)localObject2;
            if ((((localObject2 instanceof aka)) && (((Snap)localObject2).U() <= mLastTimestampOfReceivedSnapReadReceiptIReleased)) || (((localObject2 instanceof ake)) && (((Snap)localObject2).U() <= mLastTimestampOfSentSnapReadReceiptIReleased) && (!((Snap)localObject2).P())))
            {
              ((Snap)localObject2).al();
              if (!bool5) {
                ???.remove();
              }
            }
            if ((!(localObject2 instanceof aka)) || (((aka)localObject2).A())) {
              break label2538;
            }
            bool3 = true;
            if (((Snap)localObject2).ah())
            {
              bool1 = true;
              break label2564;
            }
          }
          else
          {
            if ((localObject2 instanceof CashFeedItem))
            {
              localObject2 = (CashFeedItem)localObject2;
              if (!bool5)
              {
                if ((!((CashFeedItem)localObject2).f()) && (((CashFeedItem)localObject2).am()))
                {
                  ???.remove();
                  break label1851;
                }
                if (!((CashFeedItem)localObject2).i())
                {
                  paramBoolean = true;
                  bool2 = true;
                  break label2567;
                  synchronized (mChats)
                  {
                    mChats.clear();
                    mChats.addAll((Collection)localObject1);
                    mChatsSorted = true;
                    mHasUnviewedReceivedSnaps = bool3;
                    mHasUnviewedSnapsWithAudio = bool1;
                    paramChatConversation.d(paramBoolean);
                    mHasUnviewedCash = bool2;
                    return;
                  }
                }
              }
            }
            break label2567;
          }
          break label2564;
          break label2564;
          break label2555;
          j = 0;
          break;
          paramBoolean = false;
          break label1518;
        }
        break label1851;
        paramBoolean = bool4;
      }
    }
  }
}

/* Location:
 * Qualified Name:     zc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */