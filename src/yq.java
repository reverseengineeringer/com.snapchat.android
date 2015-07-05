import android.os.SystemClock;
import android.text.TextUtils;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.api2.chat.LoadConversationPageTask.a;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversation.SequenceNumberState;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.ui.here.LocalPreview;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.chat.SecureChatService;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Inject;

public final class yq
{
  private static yq k;
  final ConcurrentHashMap<ChatConversation, List<bhf>> a = new ConcurrentHashMap();
  final nm b = new nm();
  final yn c;
  @Inject
  protected ya d;
  private final List<bhl> e = new ArrayList();
  private final Map<String, SecureChatService.SecureChatWriteCompletedCallback> f = new HashMap();
  private final ajn g;
  private final td h;
  private final nj i;
  private final na j;
  
  private yq()
  {
    this(ajn.a(), yn.a(), td.a(), nj.a(), na.a());
  }
  
  private yq(@cgb ajn paramajn, @cgb yn paramyn, @cgb td paramtd, @cgb nj paramnj, @cgb na paramna)
  {
    SnapchatApplication.b().c().a(this);
    g = paramajn;
    c = paramyn;
    h = paramtd;
    i = paramnj;
    j = paramna;
  }
  
  public static yq a()
  {
    try
    {
      if (k == null) {
        k = new yq();
      }
      yq localyq = k;
      return localyq;
    }
    finally {}
  }
  
  public static void a(@cgb aji paramaji)
  {
    Object localObject2;
    Object localObject1;
    do
    {
      do
      {
        do
        {
          try
          {
            localObject2 = new yt();
            aim localaim = (aim)a.e().get(paramaji.d());
            if (localaim == null) {
              throw new oa("AnnotatedMediabryo was null");
            }
          }
          catch (oa localoa)
          {
            paramaji.p();
            AlertDialogUtils.a(2131493165, SnapchatApplication.b());
            new ErrorMetric(localoa.getMessage()).a(localoa).d();
            return;
          }
          EasyMetric.EasyMetricFactory.a("SEND_SNAP_RETRY").a(false);
          if (!paramaji.q()) {
            break;
          }
          localObject2 = ajx.l();
          localObject1 = mMediaMailingMetadata;
        } while (localObject2 == null);
        localObject1 = ym.a(axi.a((String)localObject2, ((MediaMailingMetadata)localObject1).e()));
      } while (localObject1 == null);
      ((ChatConversation)localObject1).b(paramaji);
      return;
    } while (!((yt)localObject2).a((aim)localObject1, true, false));
    paramaji.g();
    mTimeOfLastSendAttempt = System.currentTimeMillis();
    ban.a().a(new bdq());
  }
  
  private void a(@cgb ChatConversation paramChatConversation, @cgb bhf parambhf)
  {
    List localList = (List)a.get(paramChatConversation);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      a.put(paramChatConversation, localObject);
    }
    try
    {
      ((List)localObject).add(parambhf);
      return;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      k = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(@cgb bhl parambhl, @cgc SecureChatService.SecureChatWriteCompletedCallback paramSecureChatWriteCompletedCallback)
  {
    if (!e.contains(parambhl))
    {
      e.add(parambhl);
      f.put(parambhl.k(), paramSecureChatWriteCompletedCallback);
    }
  }
  
  public final void a(@cgb ChatConversation paramChatConversation)
  {
    if (!ale.a().d())
    {
      ban.a().a(new bbg(SecureChatService.SecureChatWriteCompletedCallback.Status.NO_CONNECTION, "SendingMailman"));
      return;
    }
    ArrayList localArrayList;
    for (;;)
    {
      ChatFeedItem localChatFeedItem;
      synchronized (paramChatConversation.o())
      {
        Object localObject = new ArrayList(???);
        localArrayList = new ArrayList();
        localObject = ((ArrayList)localObject).iterator();
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        localChatFeedItem = (ChatFeedItem)((Iterator)localObject).next();
        if ((!localChatFeedItem.O()) || (!localChatFeedItem.Q())) {
          continue;
        }
        if ((localChatFeedItem instanceof aji)) {
          a((aji)localChatFeedItem);
        }
      }
      if ((localChatFeedItem instanceof akh)) {
        new ys().a((akh)localChatFeedItem);
      } else if (((localChatFeedItem instanceof akb)) && (TextUtils.equals(localChatFeedItem.j(), mMyUsername))) {
        a(paramChatConversation, (akb)localChatFeedItem, true, false);
      } else if ((localChatFeedItem instanceof CashFeedItem)) {
        localArrayList.add((CashFeedItem)localChatFeedItem);
      }
    }
    d.a(paramChatConversation, localArrayList);
    ban.a().a(new baz(mId));
  }
  
  public final void a(@cgb ChatConversation paramChatConversation, @cgb akb paramakb)
  {
    mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENDING;
    paramChatConversation.j(paramakb.d());
    bhf localbhf = paramakb.n();
    nm localnm = b;
    boolean bool = mEnteredConversationFromRecentStoryReply;
    EasyMetric localEasyMetric = new EasyMetric("CHAT_SENT_ATTEMPT");
    String str;
    if (bool)
    {
      str = "1";
      localEasyMetric.a("story_reply", str).d();
      if (localbhf.b()) {
        new EasyMetric("CHAT_" + localbhf.a().c() + "_SENT_ATTEMPT").d();
      }
      str = bfp.b();
      mSendingChatTimers.put(localbhf.c(), new EasyMetric().b().a("reachability", str));
      AnalyticsEvents.k();
      na.a(paramakb);
      if (mSequenceNumberState == ChatConversation.SequenceNumberState.UPDATED) {
        break label280;
      }
      Timber.g("SendingMailman", "CHAT-LOG: ADDING message to pending chat messages because sequence number is not updated (sendChat): %s", new Object[] { localbhf });
      a(paramChatConversation, localbhf);
      AnalyticsEvents.e(a.size());
      c(paramChatConversation);
    }
    for (;;)
    {
      if (mIsStub) {
        mIsStub = false;
      }
      paramChatConversation.u();
      c.a(paramChatConversation, false);
      ban.a().a(new baz(mId, true));
      ban.a().a(new bdd());
      i.c();
      return;
      str = "0";
      break;
      label280:
      long l = paramChatConversation.a(paramakb.s());
      localbhf.a(Long.valueOf(l));
      paramakb.b(l);
      a(paramChatConversation, localbhf);
    }
  }
  
  public final void a(@cgb ChatConversation paramChatConversation, @cgb akb paramakb, int paramInt, boolean paramBoolean)
  {
    String str = ajx.l();
    if (str == null) {
      return;
    }
    Object localObject = paramChatConversation.y();
    bix localbix = mMessagingAuthToken;
    localObject = (bik)asz.a(bii.a.MESSAGE_STATE, str, (List)localObject, localbix);
    ((bik)localObject).a(paramakb.d());
    if (paramBoolean) {}
    for (str = "saved";; str = "unsaved")
    {
      ((bik)localObject).b(str);
      ((bik)localObject).a(Integer.valueOf(paramInt));
      paramakb.a(((bik)localObject).k());
      a(paramChatConversation, (bhl)localObject);
      if (!paramBoolean) {
        break;
      }
      na.c(paramakb);
      return;
    }
    na.d(paramakb);
  }
  
  public final void a(@cgb ChatConversation paramChatConversation, @cgb akb paramakb, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (mSendReceiveStatus == StatefulChatFeedItem.SendReceiveStatus.SENT) {}
    label559:
    label593:
    for (;;)
    {
      return;
      String str = ajx.l();
      if (str != null)
      {
        long l = paramChatConversation.b(System.currentTimeMillis());
        bhf localbhf = paramakb.n();
        bix localbix = mMessagingAuthToken;
        Object localObject = localbhf;
        if (localbhf == null)
        {
          if ((paramakb instanceof ChatMedia))
          {
            localObject = (ChatMedia)paramakb;
            if (((ChatMedia)localObject).B() == null)
            {
              paramChatConversation.b((ChatFeedItem)localObject);
              paramakb = (aim)g.h().get(((ChatMedia)localObject).d());
              if (paramakb == null) {
                AlertDialogUtils.a(2131493165, SnapchatApplication.b());
              }
              while (paramBoolean2)
              {
                ban.a().a(new ben());
                ban.a().a(new baz(mId));
                return;
                try
                {
                  new pj(paramakb).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
                }
                catch (ph.a paramakb)
                {
                  AlertDialogUtils.a(2131493165, SnapchatApplication.b());
                }
              }
              continue;
            }
            localObject = new bih().c(((ChatMedia)localObject).E()).b(((ChatMedia)localObject).D()).a(((ChatMedia)localObject).B()).a(Integer.valueOf(((ChatMedia)localObject).F())).b(Integer.valueOf(((ChatMedia)localObject).G()));
            localObject = new bij().a(bij.a.MEDIA.toString()).a((bih)localObject);
            localbhf = (bhf)asz.a(bii.a.CHAT_MESSAGE, str, paramChatConversation.y(), localbix);
            localbhf.a(paramakb.d());
            localbhf.a((bij)localObject);
            localbhf.b(Long.valueOf(l));
            paramakb.a(localbhf.k());
            paramakb.a(localbhf);
            paramakb.c(l);
            localObject = localbhf;
          }
        }
        else
        {
          ((bhf)localObject).g().a(localbix);
          mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENDING;
          if (paramBoolean1)
          {
            ((bhf)localObject).b(Long.valueOf(l));
            paramakb.c(l);
          }
          mFailedChatMessages.remove(localObject);
          ((bhf)localObject).a(Boolean.valueOf(true));
          if (mSequenceNumberState == ChatConversation.SequenceNumberState.UPDATED) {
            break label559;
          }
          Timber.g("SendingMailman", "CHAT-LOG: ADDING message to pending chat messages because sequence number is not updated (retrySendingChat): %s", new Object[] { localObject });
          a(paramChatConversation, (bhf)localObject);
          AnalyticsEvents.e(a.size());
          c(paramChatConversation);
        }
        for (;;)
        {
          if (!paramBoolean2) {
            break label593;
          }
          ban.a().a(new ben());
          ban.a().a(new baz(mId));
          return;
          if ((paramakb instanceof aki))
          {
            localObject = new bij().a(bij.a.TEXT.toString()).b(paramakb.al());
            break;
          }
          if ((paramakb instanceof akg))
          {
            localObject = new bij().a(bij.a.SCREENSHOT.toString());
            break;
          }
          throw new RuntimeException("Unknown chat type (well this should never happen...): " + paramakb);
          l = paramChatConversation.a(paramakb.s());
          ((bhf)localObject).a(Long.valueOf(l));
          paramakb.b(l);
          a(paramChatConversation, (bhl)localObject);
        }
      }
    }
  }
  
  public final void a(@cgb final ChatConversation paramChatConversation, @cgb final bhl parambhl)
  {
    if ((parambhl instanceof bhf)) {
      AnalyticsEvents.d("CHAT_SEND_REQUEST_LATENCY", parambhl.k());
    }
    SecureChatService.SecureChatWriteCompletedCallback local1 = new SecureChatService.SecureChatWriteCompletedCallback()
    {
      public final void a(boolean paramAnonymousBoolean, SecureChatService.SecureChatWriteCompletedCallback.Status paramAnonymousStatus, String paramAnonymousString)
      {
        Object localObject1 = b;
        Object localObject2 = parambhl;
        Object localObject3;
        int i;
        if (((localObject2 instanceof bhf)) && (!asz.b((bii)localObject2)))
        {
          if (paramAnonymousBoolean) {
            ((nm)localObject1).a((bhf)localObject2);
          }
        }
        else
        {
          localObject3 = yq.this;
          localObject2 = paramChatConversation;
          localObject1 = parambhl;
          if (!paramAnonymousBoolean) {
            break label331;
          }
          if (!asz.b((bii)localObject1))
          {
            Timber.g("SendingMailman", "CHAT-LOG: SUCCEEDED sending message %s", new Object[] { localObject1 });
            ((ChatConversation)localObject2).a((bhl)localObject1);
            if (!(localObject1 instanceof bhf)) {
              break label263;
            }
            paramAnonymousStatus = (bhf)localObject1;
            paramAnonymousString = paramAnonymousStatus.c();
            localObject3 = ((ChatConversation)localObject2).f(paramAnonymousString);
            if (localObject3 != null) {
              mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENT;
            }
            ((ChatConversation)localObject2).a(paramAnonymousStatus.e().longValue(), false);
            mTimestamp = paramAnonymousStatus.f().longValue();
            ((ChatConversation)localObject2).k(paramAnonymousString);
            AndroidNotificationManager.a().a(SnapchatApplication.b(), true);
            i = 1;
            label182:
            if (i != 0) {
              ban.a().a(new baz(mId, ((bhl)localObject1).k()));
            }
          }
        }
        for (;;)
        {
          if ((localObject1 instanceof bhf))
          {
            paramAnonymousStatus = new HashMap();
            paramAnonymousStatus.put("reachability", bfp.b());
            AnalyticsEvents.a("CHAT_SEND_REQUEST_LATENCY", ((bhl)localObject1).k(), paramAnonymousStatus);
          }
          return;
          ((nm)localObject1).b((bhf)localObject2);
          break;
          label263:
          if ((localObject1 instanceof bit))
          {
            ((ChatConversation)localObject2).a((bit)localObject1);
            if (((bit)localObject1).a() == bit.a.DELETE) {}
          }
          else
          {
            while (((localObject1 instanceof bir)) || ((localObject1 instanceof bha)) || ((localObject1 instanceof bjb)))
            {
              i = 0;
              break;
            }
          }
          i = 1;
          break label182;
          label331:
          Timber.g("SendingMailman", "CHAT-LOG: FAILED sending message %s with status %s and message: %s", new Object[] { localObject1, paramAnonymousStatus.name(), paramAnonymousString });
          if ((localObject1 instanceof bhf)) {
            ((ChatConversation)localObject2).k();
          }
          ((ChatConversation)localObject2).a((bhl)localObject1);
          switch (yq.3.a[paramAnonymousStatus.ordinal()])
          {
          default: 
            ((yq)localObject3).b((ChatConversation)localObject2, (bhl)localObject1);
            break;
          case 1: 
            if ((localObject1 instanceof bhf))
            {
              paramAnonymousStatus = atm.b((String)((bhl)localObject1).g().b().get(0), ajv.g());
              AndroidNotificationManager.a().a(SnapchatApplication.b(), paramAnonymousStatus.f());
            }
            ((yq)localObject3).a((ChatConversation)localObject2, (bhl)localObject1, true);
          }
        }
      }
    };
    boolean bool;
    if ((parambhl instanceof bhf)) {
      bool = true;
    }
    while ((bool) && (!atm.a(mTheirUsername)))
    {
      local1.a(false, SecureChatService.SecureChatWriteCompletedCallback.Status.NOT_FRIENDS, "");
      return;
      if ((parambhl instanceof bik)) {
        bool = TextUtils.equals(((bik)parambhl).b(), bik.a.SAVED.name().toLowerCase(Locale.ENGLISH));
      } else {
        bool = false;
      }
    }
    ??? = mFailedReleaseMessages;
    if (!((Set)???).isEmpty())
    {
      localObject1 = mMessagingAuthToken;
      if (localObject1 != null)
      {
        ??? = new HashSet((Collection)???);
        mFailedReleaseMessages.clear();
        ??? = ((Set)???).iterator();
        while (((Iterator)???).hasNext())
        {
          bit localbit = (bit)((Iterator)???).next();
          localbit.g().a((bix)localObject1);
          a(paramChatConversation, localbit);
        }
      }
    }
    Object localObject1 = parambhl.g();
    long l = mMyLastConnSeqNum + 1L;
    mMyLastConnSeqNum = l;
    ((bib)localObject1).a(Long.valueOf(l));
    for (;;)
    {
      synchronized (mSendingMessages)
      {
        mSendingMessages.add(parambhl);
        ??? = mMessagingAuthToken;
        if ((((bib)localObject1).d() == null) && (??? != null))
        {
          ((bib)localObject1).a((bix)???);
          localObject1 = LandingPageActivity.i();
          if (localObject1 != null) {
            break label403;
          }
          if (!asz.a(parambhl)) {
            break;
          }
          Timber.g("SendingMailman", "CHAT-LOG: Adding message to pending messages because SecureChatService is null %s", new Object[] { parambhl });
          a(parambhl, local1);
          return;
        }
      }
      if (??? == null)
      {
        new pr(mId).f();
        if (!(parambhl instanceof bit))
        {
          local1.a(false, SecureChatService.SecureChatWriteCompletedCallback.Status.NOT_FRIENDS, "");
          return;
        }
      }
    }
    local1.a(false, SecureChatService.SecureChatWriteCompletedCallback.Status.NO_CONNECTION, "SCCP connection unavailable - can't send " + parambhl.i());
    return;
    label403:
    if (((parambhl instanceof bhf)) && (ad))
    {
      mNumSCCPChatMessagesSendingOrSent += 1;
      mLastSCCPMessageSentTimestamp = SystemClock.elapsedRealtime();
    }
    ((SecureChatService)localObject1).a(parambhl, local1);
  }
  
  public final void a(@cgb ChatConversation paramChatConversation, @cgb bhl parambhl, boolean paramBoolean)
  {
    akb localakb = null;
    if ((parambhl instanceof bhf))
    {
      parambhl = (bhf)parambhl;
      localakb = paramChatConversation.f(parambhl.c());
      if (localakb != null) {
        mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED;
      }
      mFailedChatMessages.add(parambhl);
      AndroidNotificationManager.a().a(SnapchatApplication.b(), false);
    }
    do
    {
      for (;;)
      {
        if (paramBoolean)
        {
          c.a(paramChatConversation, false);
          ban.a().a(new ben());
          if (localakb != null) {
            ban.a().a(new baz(mId, localakb.d()));
          }
        }
        return;
        if ((parambhl instanceof bik))
        {
          localakb = axi.a(paramChatConversation, (bik)parambhl, false);
        }
        else
        {
          if (!(parambhl instanceof bit)) {
            break;
          }
          parambhl = (bit)parambhl;
          mFailedReleaseMessages.add(parambhl);
        }
      }
    } while (!(parambhl instanceof bir));
  }
  
  public final void a(@cgb ChatConversation paramChatConversation, @cgb Map<String, Long> paramMap1, @cgb Map<String, Long> paramMap2, bit.a parama)
  {
    if ((paramMap1.isEmpty()) && (paramMap2.isEmpty())) {}
    do
    {
      return;
      localObject = ajx.l();
    } while (localObject == null);
    Object localObject = (bit)asz.a(bii.a.MESSAGE_RELEASE, (String)localObject, paramChatConversation.y(), mMessagingAuthToken);
    ((bit)localObject).a(parama.toString());
    ((bit)localObject).a(paramMap1);
    ((bit)localObject).b(paramMap2);
    a(paramChatConversation, (bhl)localObject);
  }
  
  public final void a(@cgb ChatConversation paramChatConversation, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    Object localObject = ajx.l();
    if (localObject == null) {
      return;
    }
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put(localObject, Boolean.valueOf(paramBoolean1));
    localTreeMap.put(mTheirUsername, Boolean.valueOf(paramBoolean2));
    localObject = (bir)asz.a(bii.a.PRESENCE, (String)localObject, paramChatConversation.y(), mMessagingAuthToken);
    ((bir)localObject).a(localTreeMap);
    ((bir)localObject).c(Boolean.valueOf(paramBoolean3));
    if ((asu.b()) && (LocalPreview.a())) {}
    for (paramBoolean1 = true;; paramBoolean1 = false)
    {
      ((bir)localObject).b(Boolean.valueOf(paramBoolean1));
      a(paramChatConversation, (bhl)localObject);
      return;
    }
  }
  
  public final void b(@cgb ChatConversation paramChatConversation)
  {
    List localList = (List)a.get(paramChatConversation);
    if (localList != null)
    {
      akb localakb = null;
      Object localObject = localakb;
      try
      {
        if (!localList.isEmpty())
        {
          localObject = localakb;
          if (mSequenceNumberState == ChatConversation.SequenceNumberState.UPDATED)
          {
            localObject = new ArrayList(localList);
            localList.clear();
          }
        }
        if (localObject == null) {
          return;
        }
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          localakb = paramChatConversation.f(((bhf)((Iterator)localObject).next()).c());
          if (localakb != null) {
            a(paramChatConversation, localakb, false, false);
          }
        }
        ban.a().a(new ben());
      }
      finally {}
      ban.a().a(new baz(mId));
    }
  }
  
  public final void b(@cgb ChatConversation paramChatConversation, @cgb bhl parambhl)
  {
    if (!aud.a(parambhl.h()))
    {
      parambhl.a(Boolean.valueOf(true));
      if ((parambhl instanceof bhf))
      {
        bhf localbhf = (bhf)parambhl;
        akb localakb = paramChatConversation.f(localbhf.c());
        if (localakb == null)
        {
          paramChatConversation.a(parambhl);
          return;
        }
        long l = paramChatConversation.b(System.currentTimeMillis());
        localakb.c(l);
        localbhf.b(Long.valueOf(l));
      }
      parambhl.g().a(mMessagingAuthToken);
      a(paramChatConversation, parambhl);
      return;
    }
    a(paramChatConversation, parambhl, true);
  }
  
  public final void c()
  {
    SecureChatService localSecureChatService = LandingPageActivity.i();
    if (localSecureChatService == null) {
      Timber.g("SendingMailman", "CHAT-LOG: Not sending pending messages because SecureChatService is null", new Object[0]);
    }
    for (;;)
    {
      return;
      Object localObject = new ArrayList(e);
      e.clear();
      HashMap localHashMap = new HashMap(f);
      f.clear();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        bhl localbhl = (bhl)((Iterator)localObject).next();
        localSecureChatService.a(localbhl, (SecureChatService.SecureChatWriteCompletedCallback)localHashMap.get(localbhl.k()));
      }
    }
  }
  
  public final void c(@cgb final ChatConversation paramChatConversation)
  {
    if (mSequenceNumberState != ChatConversation.SequenceNumberState.NOT_UPDATED) {
      return;
    }
    mSequenceNumberState = ChatConversation.SequenceNumberState.UPDATING;
    td.a(mId, new LoadConversationPageTask.a()
    {
      public final void a(boolean paramAnonymousBoolean)
      {
        List localList;
        if (!paramAnonymousBoolean)
        {
          paramChatConversationmSequenceNumberState = ChatConversation.SequenceNumberState.NOT_UPDATED;
          yq localyq = yq.this;
          ChatConversation localChatConversation = paramChatConversation;
          localList = (List)a.get(localChatConversation);
          if (localList != null)
          {
            try
            {
              if (localList.isEmpty()) {
                break label154;
              }
              Object localObject2 = new ArrayList(localList);
              localList.clear();
              localObject2 = ((List)localObject2).iterator();
              while (((Iterator)localObject2).hasNext()) {
                localyq.a(localChatConversation, (bhf)((Iterator)localObject2).next(), false);
              }
              c.a(localChatConversation, false);
            }
            finally {}
            ban.a().a(new ben());
            ban.a().a(new baz(mId));
          }
        }
        label154:
      }
    });
  }
}

/* Location:
 * Qualified Name:     yq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */