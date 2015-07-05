import android.os.Handler;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.EasyMetric;
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

public final class yo
{
  private static yo b;
  @Inject
  protected ya a;
  private final yq c;
  private final AndroidNotificationManager d;
  private final yj e;
  private final yh f;
  private final yn g;
  private final td h;
  
  private yo(@cgb yq paramyq, @cgb AndroidNotificationManager paramAndroidNotificationManager, @cgb yj paramyj, @cgb yh paramyh, @cgb yn paramyn, @cgb td paramtd)
  {
    SnapchatApplication.b().c().a(this);
    c = paramyq;
    d = paramAndroidNotificationManager;
    e = paramyj;
    f = paramyh;
    g = paramyn;
    h = paramtd;
  }
  
  public static yo a()
  {
    try
    {
      if (b == null) {
        b = new yo(yq.a(), AndroidNotificationManager.a(), new yj(), yh.a(), yn.a(), td.a());
      }
      yo localyo = b;
      return localyo;
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
  
  public final void a(@cgb bii parambii)
  {
    Object localObject4 = parambii.j();
    Object localObject2;
    if ((parambii instanceof bhk))
    {
      ??? = (bhk)parambii;
      if (aud.a(((bhk)???).a()))
      {
        ??? = akc.b().e().iterator();
        while (((Iterator)???).hasNext()) {
          nextmMyLastConnSeqNum = 0L;
        }
        Timber.g("ReceivingMailman", "CHAT-LOG: We are connected to SCCP gateway", new Object[0]);
        ??? = null;
        localObject2 = null;
      }
    }
    for (;;)
    {
      if ((localObject2 == null) || ((??? != null) && (!atm.a((String)???)))) {}
      do
      {
        return;
        Timber.g("ReceivingMailman", "CHAT-LOG: Failed to connect to SCCP gateway with reason: %s", new Object[] { ((bhk)???).b() });
        ??? = null;
        localObject2 = null;
        break;
        if ((parambii instanceof bhl))
        {
          ??? = (bhl)parambii;
          Timber.g("ReceivingMailman", "CHAT-LOG: RECEIVED %s", new Object[] { ??? });
          localObject2 = ((bhl)???).g().c();
          ??? = ((bhl)???).g().a();
          break;
        }
        if (localObject4 != bii.a.CONVERSATION_MESSAGE_RESPONSE) {
          break label2502;
        }
        ??? = ((bhm)parambii).c();
        if (??? == null) {
          break label2488;
        }
        localObject2 = ym.a((String)???);
        if (localObject2 == null) {
          break label2488;
        }
        localObject3 = mTheirUsername;
        localObject2 = ???;
        ??? = localObject3;
        break;
        localObject3 = ym.a((String)localObject2);
        if (localObject3 != null) {
          break label269;
        }
      } while (!(parambii instanceof bhf));
      h.a((String)localObject2, false);
      return;
      label269:
      int i;
      int j;
      switch (yo.1.a[localObject4.ordinal()])
      {
      default: 
        i = 1;
        j = 0;
      }
      for (;;)
      {
        if (j != 0) {
          ((ChatConversation)localObject3).w();
        }
        if ((!(parambii instanceof bhl)) || (i == 0)) {
          break;
        }
        parambii = (bhl)parambii;
        if (!parambii.g().f()) {
          break;
        }
        long l1 = parambii.g().e().longValue();
        if (l1 <= mTheirLastConnSeqNum) {
          break;
        }
        mTheirLastConnSeqNum = l1;
        return;
        localObject2 = (bhf)parambii;
        if ((((ChatConversation)localObject3).a((bhf)localObject2)) || (((bhf)localObject2).e().longValue() <= mLastSeqNumOfTheirChatIReleased))
        {
          j = 1;
          i = 1;
        }
        else
        {
          AnalyticsEvents.b(true, System.currentTimeMillis() - ((bhf)localObject2).f().longValue());
          f.a((ChatConversation)localObject3, ((bhf)localObject2).g().e().longValue());
          ??? = f;
          long l2 = ((bhf)localObject2).e().longValue();
          localObject4 = mId;
          long l3 = mTheirLastSeqNum;
          if ((l2 > l3) && (l2 - l3 > 1L))
          {
            for (l1 = 1L + l3; l1 < l2; l1 += 1L) {
              yh.a((String)localObject4, b, l1);
            }
            if (!d.containsKey(localObject4))
            {
              Timber.g("ChatGapDetector", "CHAT-LOG: Chat gap of %d starting with %d detected! Scheduling a conversation refresh", new Object[] { Long.valueOf(l2 - l3 - 1L), Long.valueOf(l3 + 1L) });
              d.put(localObject4, Boolean.valueOf(true));
              e.postDelayed(new yh.1((yh)???, (String)localObject4), 8000L);
            }
          }
          else
          {
            ((ChatConversation)localObject3).c(((bhf)localObject2).e().longValue());
            if ((localObject2 == null) || (!((bhf)localObject2).b())) {
              break label993;
            }
            ??? = ((bhf)localObject2).a().d();
            label676:
            switch (yo.1.b[???.ordinal()])
            {
            default: 
              ??? = new akj((bhf)localObject2);
              label731:
              bool1 = mAmIPresent;
              d.a(SnapchatApplication.b(), null, ((akb)???).W(), atm.e(mSender, ajv.g()), mSender, null, ((akb)???).d(), ((akb)???).s(), AndroidNotificationManager.Type.CHAT, false, null);
              if (bool1) {
                ((akb)???).c(ajx.bv());
              }
              localObject2 = mId;
              l1 = ((akb)???).s();
              if (!f.a((String)localObject2, l1)) {
                break label1163;
              }
              ((ChatConversation)localObject3).a((ChatFeedItem)???);
              if (mPendingReceivedChats.size() > 0) {
                i = 1;
              }
              break;
            }
          }
          for (;;)
          {
            label849:
            if ((i != 0) && (f.b((String)localObject2, l1)) && (f.a((String)localObject2, l1)))
            {
              l1 = f.a((String)localObject2);
              ??? = mPendingReceivedChats.iterator();
              for (;;)
              {
                if (((Iterator)???).hasNext())
                {
                  localObject2 = (akb)((Iterator)???).next();
                  if (((akb)localObject2).s() < l1)
                  {
                    ((ChatConversation)localObject3).a((ChatFeedItem)localObject2);
                    ((Iterator)???).remove();
                    continue;
                    Timber.g("ChatGapDetector", "CHAT-LOG: Chat gap of %d starting with %d detected! Conversation refresh is already scheduled", new Object[] { Long.valueOf(l2 - l3 - 1L), Long.valueOf(1L + l3) });
                    break;
                    label993:
                    ??? = bij.a.UNRECOGNIZED_VALUE;
                    break label676;
                    ??? = new aki((bhf)localObject2);
                    break label731;
                    ??? = new ChatMedia((bhf)localObject2);
                    break label731;
                    ReleaseManager.a();
                    ReleaseManager.k();
                    ??? = new akh((bhf)localObject2);
                    break label731;
                    ??? = new akg((bhf)localObject2);
                    break label731;
                    i = 0;
                    break label849;
                  }
                }
              }
              ((ChatConversation)localObject3).p();
            }
          }
          ((ChatConversation)localObject3).u();
          if (!bool1)
          {
            ((ChatConversation)localObject3).d(true);
            d.b(SnapchatApplication.b(), AndroidNotificationManager.Type.CHAT);
          }
          g.a((ChatConversation)localObject3, true);
          for (;;)
          {
            if (mIsStub) {
              mIsStub = false;
            }
            ban.a().a(new bck());
            ban.a().a(new baz(mId, true));
            break;
            label1163:
            mPendingReceivedChats.add(???);
            new EasyMetric("INCOMING_CHAT_DELAYED_OF_SEQUENCE_NUMBER_GAP").a("pending-received-chats", Integer.valueOf(mPendingReceivedChats.size())).a(false);
            Collections.sort(mPendingReceivedChats, new ChatConversation.3((ChatConversation)localObject3));
          }
          localObject2 = (bhm)parambii;
          ??? = ((ChatConversation)localObject3).h(((bhm)localObject2).b());
          if (??? != null)
          {
            localObject4 = c.b;
            if ((??? instanceof bhf))
            {
              if (!aud.a(((bhm)localObject2).a())) {
                break label1476;
              }
              ((nm)localObject4).a((bhf)???);
            }
            label1290:
            ((ChatConversation)localObject3).a((bhl)???);
            localObject4 = ((bhl)???).j();
            if (!aud.a(((bhm)localObject2).a())) {
              break label1554;
            }
            if (localObject4 != bii.a.CHAT_MESSAGE) {
              break label1510;
            }
            l1 = ((bhm)localObject2).f().longValue();
            localObject4 = (bhf)???;
            ((bhf)localObject4).b(Long.valueOf(l1));
            mTimestamp = l1;
            ((ChatConversation)localObject3).k(((bhf)localObject4).c());
            ((ChatConversation)localObject3).a(((bhf)localObject4).e().longValue(), false);
            localObject2 = ((ChatConversation)localObject3).g(((bhm)localObject2).b());
            if (localObject2 != null)
            {
              mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENT;
              ((akb)localObject2).c(l1);
            }
            d.a(SnapchatApplication.b(), true);
            if (localObject2 == null) {
              break label1489;
            }
            ban.a().a(new baz(mId, ((akb)localObject2).d()));
            label1452:
            Timber.g("ReceivingMailman", "CHAT-LOG: SUCCEEDED sending message %s", new Object[] { ??? });
          }
          for (;;)
          {
            i = 0;
            j = 0;
            break;
            label1476:
            ((nm)localObject4).b((bhf)???);
            break label1290;
            label1489:
            ban.a().a(new baz(mId));
            break label1452;
            label1510:
            if (localObject4 == bii.a.MESSAGE_STATE)
            {
              axi.a((ChatConversation)localObject3, (bik)???, true);
              break label1452;
            }
            if (localObject4 != bii.a.MESSAGE_RELEASE) {
              break label1452;
            }
            ((ChatConversation)localObject3).a((bit)???);
            break label1452;
            label1554:
            if ((??? instanceof bhf)) {
              ((ChatConversation)localObject3).k();
            }
            if (((bhm)localObject2).e() == bhm.a.NEED_AUTHENTICATION)
            {
              localObject4 = mMessagingAuthToken;
              if (localObject4 != null) {
                ((bhl)???).g().a((bix)localObject4);
              }
            }
            else
            {
              Timber.g("ReceivingMailman", "CHAT-LOG: FAILED sending message %s with reason %s", new Object[] { ???, ((bhm)localObject2).d() });
              c.b((ChatConversation)localObject3, (bhl)???);
              continue;
            }
            c.a((ChatConversation)localObject3, (bhl)???, true);
          }
          ??? = (bik)parambii;
          localObject2 = axi.a((ChatConversation)localObject3, (bik)???, true);
          f.a((ChatConversation)localObject3, ((bik)???).g().e().longValue());
          if (localObject2 == null) {
            Timber.f("ReceivingMailman", "chat is null. Conversation: " + ((ChatConversation)localObject3).i(), new Object[0]);
          }
          for (;;)
          {
            j = 1;
            i = 1;
            break;
            ban.a().a(new baz(mId, ((akb)localObject2).d()));
          }
          ??? = (bir)parambii;
          localObject2 = mMyUsername;
          localObject4 = mTheirUsername;
          Map localMap = ((bir)???).a();
          boolean bool1 = aud.a((Boolean)localMap.get(localObject4));
          boolean bool2 = aud.a(((bir)???).b());
          ((ChatConversation)localObject3).c(bool1);
          mRecipientSupportsHere = bool2;
          if ((bool1) && (bool2) && (asu.b()) && (LocalPreview.a())) {}
          for (mHereAuth = ((bir)???).d();; mHereAuth = null)
          {
            if ((localMap.containsKey(localObject2)) && (mAmIPresent != aud.a((Boolean)localMap.get(localObject2)))) {
              c.a((ChatConversation)localObject3, mAmIPresent, bool1, mIsDisplayingVideo);
            }
            f.a((ChatConversation)localObject3, ((bir)???).g().e().longValue());
            ban.a().a(new bcp((String)localObject4, aud.a(((bir)???).c()), "Received presence message."));
            j = 1;
            i = 1;
            break;
          }
          localObject2 = (bit)parambii;
          synchronized (((ChatConversation)localObject3).o())
          {
            e.a((ChatConversation)localObject3, (bit)localObject2);
            if (!mIsUserInConversation) {
              yj.b((ChatConversation)localObject3);
            }
            if (((bit)localObject2).g().f()) {
              f.a((ChatConversation)localObject3, ((bit)localObject2).g().e().longValue());
            }
            ban.a().a(new ben());
            j = 1;
            i = 1;
          }
          ??? = (bjb)parambii;
          localObject2 = ((ChatConversation)localObject3).i(((bjb)???).b());
          f.a((ChatConversation)localObject3, ((bjb)???).g().e().longValue());
          if ((localObject2 != null) && (aud.a(((bjb)???).c())))
          {
            if (((bjb)???).e().longValue() <= 0L) {
              break label2251;
            }
            bool1 = true;
            label2146:
            ((aji)localObject2).d(bool1);
            if ((((bjb)???).e().longValue() <= 0L) || (!aud.a(((bjb)???).d()))) {
              break label2257;
            }
            ((aji)localObject2).a(Snap.ClientSnapStatus.SENT_AND_REPLAYED_AND_SCREENSHOTTED);
          }
          for (;;)
          {
            ((aji)localObject2).b(((bjb)???).a().longValue());
            g.a((ChatConversation)localObject3, false);
            ban.a().a(new baz(mId, ((aji)localObject2).d()));
            ban.a().a(new ben());
            i = 1;
            j = 0;
            break;
            label2251:
            bool1 = false;
            break label2146;
            label2257:
            if (((bjb)???).e().longValue() > 0L) {
              ((aji)localObject2).a(Snap.ClientSnapStatus.SENT_AND_SCREENSHOTTED);
            } else if (aud.a(((bjb)???).d())) {
              ((aji)localObject2).a(Snap.ClientSnapStatus.SENT_AND_REPLAYED);
            } else {
              ((aji)localObject2).a(Snap.ClientSnapStatus.SENT_AND_OPENED);
            }
          }
          ??? = (bha)parambii;
          f.a((ChatConversation)localObject3, ((bha)???).g().e().longValue());
          ban.a().a(new bau((ChatConversation)localObject3, ((bha)???).a().longValue(), ((bha)???).b().longValue()));
          j = 1;
          i = 1;
          continue;
          localObject2 = (bhb)parambii;
          Timber.b("ReceivingMailman", "CASH-LOG: Got a state change message ", new Object[] { mId });
          if (mIsStub) {
            mIsStub = false;
          }
          ??? = a;
          localObject2 = ((bhb)localObject2).a();
          localObject4 = mId;
          ??? = new ya.8((ya)???, (ChatConversation)localObject3, (String)localObject2);
          localObject2 = new qr((String)localObject2, (String)localObject4);
          ((qr)localObject2).a(bhc.class, (ts.b)???);
          ((qr)localObject2).f();
          i = 0;
          j = 0;
        }
      }
      label2488:
      Object localObject3 = null;
      localObject2 = ???;
      ??? = localObject3;
      continue;
      label2502:
      ??? = null;
      localObject2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     yo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */