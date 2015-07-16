import android.os.Handler;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.app.feature.messaging.feed.model.FeedIconChangeType;
import com.snapchat.android.livechat.AdlHelper.PresenceSource;
import com.snapchat.android.model.Snap.ClientSnapStatus;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversation.3;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import com.snapchat.android.ui.here.LocalPreview;
import com.snapchat.android.util.debug.ReleaseManager;
import com.squareup.otto.Bus;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Inject;

public final class zk
{
  private static zk b;
  @Inject
  protected yw a;
  private final zm c;
  private final AndroidNotificationManager d;
  private final zf e;
  private final zd f;
  private final zj g;
  private final tt h;
  private final nz i;
  private final og j;
  
  private zk(@chc zm paramzm, @chc AndroidNotificationManager paramAndroidNotificationManager, @chc zf paramzf, @chc zd paramzd, @chc zj paramzj, @chc tt paramtt, @chc nz paramnz, @chc og paramog)
  {
    SnapchatApplication.b().c().a(this);
    c = paramzm;
    d = paramAndroidNotificationManager;
    e = paramzf;
    f = paramzd;
    g = paramzj;
    h = paramtt;
    i = paramnz;
    j = paramog;
  }
  
  public static zk a()
  {
    try
    {
      if (b == null) {
        b = new zk(zm.a(), AndroidNotificationManager.a(), new zf(), zd.a(), zj.a(), tt.a(), nz.a(), og.a());
      }
      zk localzk = b;
      return localzk;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      b = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(@chc bji parambji)
  {
    ??? = parambji.j();
    Object localObject2;
    if ((parambji instanceof bik))
    {
      ??? = (bik)parambji;
      if (avb.a(((bik)???).a()))
      {
        ??? = akx.c().f().iterator();
        while (((Iterator)???).hasNext()) {
          nextmMyLastConnSeqNum = 0L;
        }
        ??? = null;
        localObject2 = null;
      }
    }
    for (;;)
    {
      if ((localObject2 == null) || ((??? != null) && (!auk.a((String)???)))) {}
      do
      {
        return;
        ((bik)???).b();
        ??? = null;
        localObject2 = null;
        break;
        if ((parambji instanceof bil))
        {
          ??? = (bil)parambji;
          localObject2 = ((bil)???).g().c();
          ??? = ((bil)???).g().a();
          break;
        }
        if (??? != bji.a.CONVERSATION_MESSAGE_RESPONSE) {
          break label2620;
        }
        ??? = ((bim)parambji).c();
        if (??? == null) {
          break label2606;
        }
        localObject2 = zi.a((String)???);
        if (localObject2 == null) {
          break label2606;
        }
        localObject3 = mTheirUsername;
        localObject2 = ???;
        ??? = localObject3;
        break;
        localObject3 = zi.a((String)localObject2);
        if (localObject3 != null) {
          break label229;
        }
      } while (!(parambji instanceof bif));
      h.a((String)localObject2, false);
      return;
      label229:
      int k;
      int m;
      switch (zk.2.a[???.ordinal()])
      {
      default: 
        k = 1;
        m = 0;
      }
      for (;;)
      {
        if (m != 0) {
          ((ChatConversation)localObject3).x();
        }
        if ((!(parambji instanceof bil)) || (k == 0)) {
          break;
        }
        parambji = (bil)parambji;
        if (!parambji.g().f()) {
          break;
        }
        long l1 = parambji.g().e().longValue();
        if (l1 <= mTheirLastConnSeqNum) {
          break;
        }
        mTheirLastConnSeqNum = l1;
        return;
        localObject2 = (bif)parambji;
        if ((((ChatConversation)localObject3).a((bif)localObject2)) || (((bif)localObject2).e().longValue() <= mLastSeqNumOfTheirChatIReleased))
        {
          m = 1;
          k = 1;
        }
        else
        {
          AnalyticsEvents.b(true, System.currentTimeMillis() - ((bif)localObject2).f().longValue());
          f.a((ChatConversation)localObject3, ((bif)localObject2).g().e().longValue());
          ??? = f;
          long l2 = ((bif)localObject2).e().longValue();
          ??? = mId;
          l1 = mTheirLastSeqNum;
          if ((l2 > l1) && (l2 - l1 > 1L))
          {
            for (l1 = 1L + l1; l1 < l2; l1 += 1L) {
              zd.a((String)???, b, l1);
            }
            if (!d.containsKey(???))
            {
              d.put(???, Boolean.valueOf(true));
              e.postDelayed(new zd.1((zd)???, (String)???), 8000L);
            }
          }
          else
          {
            ((ChatConversation)localObject3).c(((bif)localObject2).e().longValue());
            if ((localObject2 == null) || (!((bif)localObject2).b())) {
              break label885;
            }
            ??? = ((bif)localObject2).a().d();
            label604:
            switch (zk.2.b[???.ordinal()])
            {
            default: 
              ??? = new ale((bif)localObject2);
              label659:
              bool1 = mAmIPresent;
              d.a(SnapchatApplication.b(), null, ((akw)???).U(), auk.e(mSender, akp.g()), mSender, null, ((akw)???).d(), ((akw)???).t(), AndroidNotificationManager.Type.CHAT, false, null);
              if (bool1) {
                ((akw)???).c(akr.bs());
              }
              localObject2 = mId;
              l1 = ((akw)???).t();
              if (!f.a((String)localObject2, l1)) {
                break label1068;
              }
              ((ChatConversation)localObject3).a((ChatFeedItem)???);
              if (mPendingReceivedChats.size() > 0) {
                k = 1;
              }
              break;
            }
          }
          for (;;)
          {
            label777:
            if ((k != 0) && (f.b((String)localObject2, l1)) && (f.a((String)localObject2, l1)))
            {
              l1 = f.a((String)localObject2);
              localObject2 = mPendingReceivedChats.iterator();
              for (;;)
              {
                if (((Iterator)localObject2).hasNext())
                {
                  ??? = (akw)((Iterator)localObject2).next();
                  if (((akw)???).t() < l1)
                  {
                    ((ChatConversation)localObject3).a((ChatFeedItem)???);
                    ((Iterator)localObject2).remove();
                    continue;
                    break;
                    label885:
                    ??? = bjj.a.UNRECOGNIZED_VALUE;
                    break label604;
                    ??? = new ald((bif)localObject2);
                    break label659;
                    ??? = new ChatMedia((bif)localObject2);
                    break label659;
                    ReleaseManager.a();
                    ReleaseManager.k();
                    ??? = new alc((bif)localObject2);
                    break label659;
                    ??? = new alb((bif)localObject2);
                    break label659;
                    k = 0;
                    break label777;
                  }
                }
              }
              ((ChatConversation)localObject3).p();
            }
          }
          ((ChatConversation)localObject3).v();
          if (!bool1)
          {
            ((ChatConversation)localObject3).d(true);
            d.b(SnapchatApplication.b(), AndroidNotificationManager.Type.CHAT);
          }
          ((ChatConversation)localObject3).a((ChatFeedItem)???, FeedIconChangeType.RECEIVED);
          bbo.a().a(new bdv());
          for (;;)
          {
            if (mIsStub) {
              mIsStub = false;
            }
            bbo.a().a(new bdk());
            bbo.a().a(new bca(mId, true));
            break;
            label1068:
            mPendingReceivedChats.add(???);
            new EasyMetric("INCOMING_CHAT_DELAYED_OF_SEQUENCE_NUMBER_GAP").a("pending-received-chats", Integer.valueOf(mPendingReceivedChats.size())).a(false);
            Collections.sort(mPendingReceivedChats, new ChatConversation.3((ChatConversation)localObject3));
          }
          ??? = (bim)parambji;
          localObject2 = ((ChatConversation)localObject3).h(((bim)???).b());
          if (localObject2 != null)
          {
            ??? = c.b;
            if ((localObject2 instanceof bif))
            {
              if (!avb.a(((bim)???).a())) {
                break label1374;
              }
              ((od)???).a((bif)localObject2);
            }
            label1195:
            ((ChatConversation)localObject3).a((bil)localObject2);
            ??? = ((bil)localObject2).j();
            if (!avb.a(((bim)???).a())) {
              break label1452;
            }
            if (??? != bji.a.CHAT_MESSAGE) {
              break label1408;
            }
            l1 = ((bim)???).f().longValue();
            localObject2 = (bif)localObject2;
            ((bif)localObject2).b(Long.valueOf(l1));
            mTimestamp = l1;
            ((ChatConversation)localObject3).k(((bif)localObject2).c());
            ((ChatConversation)localObject3).a(((bif)localObject2).e().longValue(), false);
            ??? = ((ChatConversation)localObject3).g(((bim)???).b());
            if (??? != null)
            {
              mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENT;
              ((akw)???).c(l1);
              ((ChatConversation)localObject3).a((ChatFeedItem)???, FeedIconChangeType.SENT);
            }
            d.a(SnapchatApplication.b(), true);
            if (??? == null) {
              break label1387;
            }
            bbo.a().a(new bca(mId, ((akw)???).d()));
          }
          for (;;)
          {
            k = 0;
            m = 0;
            break;
            label1374:
            ((od)???).b((bif)localObject2);
            break label1195;
            label1387:
            bbo.a().a(new bca(mId));
            continue;
            label1408:
            if (??? == bji.a.MESSAGE_STATE)
            {
              ayg.a((ChatConversation)localObject3, (bjk)localObject2, true);
            }
            else if (??? == bji.a.MESSAGE_RELEASE)
            {
              ((ChatConversation)localObject3).a((bju)localObject2);
              continue;
              label1452:
              if ((localObject2 instanceof bif)) {
                ((ChatConversation)localObject3).k();
              }
              if (((bim)???).e() == bim.a.NEED_AUTHENTICATION)
              {
                ??? = mMessagingAuthToken;
                if (??? != null) {
                  ((bil)localObject2).g().a((bjy)???);
                }
              }
              else
              {
                ((bim)???).d();
                c.b((ChatConversation)localObject3, (bil)localObject2);
                continue;
              }
              zm.a((ChatConversation)localObject3, (bil)localObject2, true);
            }
          }
          ??? = (bjk)parambji;
          localObject2 = ayg.a((ChatConversation)localObject3, (bjk)???, true);
          f.a((ChatConversation)localObject3, ((bjk)???).g().e().longValue());
          if (localObject2 == null) {
            new StringBuilder("chat is null. Conversation: ").append(((ChatConversation)localObject3).i());
          }
          for (;;)
          {
            m = 1;
            k = 1;
            break;
            bbo.a().a(new bca(mId, ((akw)localObject2).d()));
          }
          ??? = (bjr)parambji;
          localObject2 = mMyUsername;
          ??? = mTheirUsername;
          Object localObject5 = ((bjr)???).a();
          boolean bool1 = avb.a((Boolean)((Map)localObject5).get(???));
          boolean bool2 = avb.a(((bjr)???).b());
          ((ChatConversation)localObject3).c(bool1);
          mRecipientSupportsHere = bool2;
          if ((bool1) && (bool2) && (att.b()) && (LocalPreview.a())) {}
          for (mHereAuth = ((bjr)???).d();; mHereAuth = null)
          {
            if ((((Map)localObject5).containsKey(localObject2)) && (mAmIPresent != avb.a((Boolean)((Map)localObject5).get(localObject2)))) {
              c.a((ChatConversation)localObject3, mAmIPresent, bool1, mIsDisplayingVideo);
            }
            f.a((ChatConversation)localObject3, ((bjr)???).g().e().longValue());
            bbo.a().a(new bdp(AdlHelper.PresenceSource.CHAT_GATEWAY, (String)???, avb.a(((bjr)???).c()), "Received presence message."));
            m = 1;
            k = 1;
            break;
          }
          localObject5 = (bjt)parambji;
          synchronized (((ChatConversation)localObject3).o())
          {
            localObject2 = ((bjt)localObject5).d();
            ??? = localObject2;
            if (localObject2 != null)
            {
              ??? = localObject2;
              if (!((String)localObject2).endsWith("r")) {
                ??? = (String)localObject2 + "r";
              }
            }
            if (((ChatConversation)localObject3).d((String)???) == null)
            {
              ??? = new aka((String)???, ((bjt)localObject5).b().longValue(), ((bjt)localObject5).a().longValue(), 0L, ((bjt)localObject5).l().intValue(), ((bjt)localObject5).e().booleanValue(), avr.a(((bjt)localObject5).c().intValue()), ((bjt)localObject5).g().a(), ((bjt)localObject5).m().doubleValue(), ((bjt)localObject5).f(), false, ((bjt)localObject5).n());
              ((ChatConversation)localObject3).a((ChatFeedItem)???);
              ((aka)???).d();
              ((aka)???).j();
              nz.a((aka)???, "sccp");
              og.b((aka)???);
              ((ChatConversation)localObject3).a((ChatFeedItem)???, FeedIconChangeType.RECEIVED);
              bhp.b(new Runnable()
              {
                public final void run()
                {
                  localObject3.a(1, localObject1);
                }
              });
              bbo.a().a(new bca(mId, ((aka)???).d()));
              bbo.a().a(new bdv());
              k = 0;
              m = 0;
              continue;
            }
            ((bjt)localObject5).k();
            ((bjt)localObject5).g().a();
          }
          localObject2 = (bju)parambji;
          synchronized (((ChatConversation)localObject3).o())
          {
            zf.a((ChatConversation)localObject3, (bju)localObject2);
            if (!mIsUserInConversation) {
              zf.b((ChatConversation)localObject3);
            }
            if (((bju)localObject2).g().f()) {
              f.a((ChatConversation)localObject3, ((bju)localObject2).g().e().longValue());
            }
            ((ChatConversation)localObject3).r();
            m = 1;
            k = 1;
          }
          ??? = (bkc)parambji;
          localObject2 = ((ChatConversation)localObject3).i(((bkc)???).b());
          f.a((ChatConversation)localObject3, ((bkc)???).g().e().longValue());
          if ((localObject2 != null) && (avb.a(((bkc)???).c())))
          {
            if (((bkc)???).e().longValue() <= 0L) {
              break label2382;
            }
            bool1 = true;
            label2290:
            ((ake)localObject2).d(bool1);
            if ((((bkc)???).e().longValue() <= 0L) || (!avb.a(((bkc)???).d()))) {
              break label2388;
            }
            ((ake)localObject2).a(Snap.ClientSnapStatus.SENT_AND_REPLAYED_AND_SCREENSHOTTED);
          }
          for (;;)
          {
            ((ake)localObject2).b(((bkc)???).a().longValue());
            ((ChatConversation)localObject3).a((ChatFeedItem)localObject2, FeedIconChangeType.VIEWED);
            bbo.a().a(new bca(mId, ((ake)localObject2).d()));
            k = 1;
            m = 0;
            break;
            label2382:
            bool1 = false;
            break label2290;
            label2388:
            if (((bkc)???).e().longValue() > 0L) {
              ((ake)localObject2).a(Snap.ClientSnapStatus.SENT_AND_SCREENSHOTTED);
            } else if (avb.a(((bkc)???).d())) {
              ((ake)localObject2).a(Snap.ClientSnapStatus.SENT_AND_REPLAYED);
            } else {
              ((ake)localObject2).a(Snap.ClientSnapStatus.SENT_AND_OPENED);
            }
          }
          ??? = (bia)parambji;
          f.a((ChatConversation)localObject3, ((bia)???).g().e().longValue());
          bbo.a().a(new bbv((ChatConversation)localObject3, ((bia)???).a().longValue(), ((bia)???).b().longValue()));
          m = 1;
          k = 1;
          continue;
          localObject2 = (bib)parambji;
          ??? = mId;
          if (mIsStub) {
            mIsStub = false;
          }
          ??? = a;
          localObject2 = ((bib)localObject2).a();
          ??? = mId;
          ??? = new yw.8((yw)???, (ChatConversation)localObject3, (String)localObject2);
          localObject2 = new rh((String)localObject2, (String)???);
          ((rh)localObject2).registerCallback(bic.class, (ui.b)???);
          ((rh)localObject2).execute();
          k = 0;
          m = 0;
        }
      }
      label2606:
      final Object localObject3 = null;
      localObject2 = ???;
      ??? = localObject3;
      continue;
      label2620:
      ??? = null;
      localObject2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     zk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */