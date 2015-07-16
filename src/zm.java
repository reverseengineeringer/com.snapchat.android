import android.os.SystemClock;
import android.text.TextUtils;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.api2.chat.LoadConversationPageTask.a;
import com.snapchat.android.app.feature.messaging.feed.model.FeedIconChangeType;
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

public final class zm
{
  private static zm k;
  final ConcurrentHashMap<ChatConversation, List<bif>> a = new ConcurrentHashMap();
  final od b = new od();
  @Inject
  protected yw c;
  private final List<bil> d = new ArrayList();
  private final Map<String, SecureChatService.SecureChatWriteCompletedCallback> e = new HashMap();
  private final aki f;
  private final zj g;
  private final tt h;
  private final oa i;
  private final nr j;
  
  private zm()
  {
    this(aki.a(), zj.a(), tt.a(), oa.a(), nr.a());
  }
  
  private zm(@chc aki paramaki, @chc zj paramzj, @chc tt paramtt, @chc oa paramoa, @chc nr paramnr)
  {
    SnapchatApplication.b().c().a(this);
    f = paramaki;
    g = paramzj;
    h = paramtt;
    i = paramoa;
    j = paramnr;
  }
  
  public static zm a()
  {
    try
    {
      if (k == null) {
        k = new zm();
      }
      zm localzm = k;
      return localzm;
    }
    finally {}
  }
  
  public static void a(@chc ake paramake, @chc ChatConversation paramChatConversation)
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
            localObject2 = new zp();
            aji localaji = (aji)a.e().get(paramake.d());
            if (localaji == null) {
              throw new or("AnnotatedMediabryo was null");
            }
          }
          catch (or localor)
          {
            paramake.g();
            paramChatConversation.a(paramake, FeedIconChangeType.FAILED_TO_SEND);
            AlertDialogUtils.a(2131493164, SnapchatApplication.b());
            new ErrorMetric(localor.getMessage()).a(localor).e();
            return;
          }
          EasyMetric.EasyMetricFactory.a("SEND_SNAP_RETRY").a(false);
          if (!paramake.p()) {
            break;
          }
          localObject2 = akr.l();
          localObject1 = mMediaMailingMetadata;
        } while (localObject2 == null);
        localObject1 = zi.a(ayg.a((String)localObject2, ((MediaMailingMetadata)localObject1).e()));
      } while (localObject1 == null);
      ((ChatConversation)localObject1).b(paramake);
      return;
    } while (!((zp)localObject2).a((aji)localObject1, true, false));
    paramake.h();
    mTimeOfLastSendAttempt = System.currentTimeMillis();
    bbo.a().a(new beq());
  }
  
  private void a(@chc ChatConversation paramChatConversation, @chc bif parambif)
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
      ((List)localObject).add(parambif);
      return;
    }
    finally {}
  }
  
  public static void a(@chc ChatConversation paramChatConversation, @chc bil parambil, boolean paramBoolean)
  {
    akw localakw = null;
    if ((parambil instanceof bif))
    {
      parambil = (bif)parambil;
      localakw = paramChatConversation.f(parambil.c());
      if (localakw != null)
      {
        mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED;
        if (paramBoolean) {
          paramChatConversation.a(localakw, FeedIconChangeType.FAILED_TO_SEND);
        }
      }
      mFailedChatMessages.add(parambil);
      AndroidNotificationManager.a().a(SnapchatApplication.b(), false);
    }
    do
    {
      for (;;)
      {
        if ((paramBoolean) && (localakw != null)) {
          bbo.a().a(new bca(mId, localakw.d()));
        }
        return;
        if ((parambil instanceof bjk))
        {
          localakw = ayg.a(paramChatConversation, (bjk)parambil, false);
        }
        else
        {
          if (!(parambil instanceof bju)) {
            break;
          }
          parambil = (bju)parambil;
          mFailedReleaseMessages.add(parambil);
        }
      }
    } while (!(parambil instanceof bjr));
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
  
  public final void a(@chc bil parambil, @chd SecureChatService.SecureChatWriteCompletedCallback paramSecureChatWriteCompletedCallback)
  {
    if (!d.contains(parambil))
    {
      d.add(parambil);
      e.put(parambil.k(), paramSecureChatWriteCompletedCallback);
    }
  }
  
  public final void a(@chc ChatConversation paramChatConversation)
  {
    if (!ama.a().d())
    {
      bbo.a().a(new bcg(SecureChatService.SecureChatWriteCompletedCallback.Status.NO_CONNECTION, "SendingMailman"));
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
        if ((!localChatFeedItem.P()) || (!localChatFeedItem.R())) {
          continue;
        }
        if ((localChatFeedItem instanceof ake)) {
          a((ake)localChatFeedItem, paramChatConversation);
        }
      }
      if ((localChatFeedItem instanceof alc)) {
        new zo().a((alc)localChatFeedItem, paramChatConversation);
      } else if (((localChatFeedItem instanceof akw)) && (TextUtils.equals(localChatFeedItem.j(), mMyUsername))) {
        a(paramChatConversation, (akw)localChatFeedItem, true, false);
      } else if ((localChatFeedItem instanceof CashFeedItem)) {
        localArrayList.add((CashFeedItem)localChatFeedItem);
      }
    }
    c.a(paramChatConversation, localArrayList);
    paramChatConversation.r();
    bbo.a().a(new bca(mId));
  }
  
  public final void a(@chc ChatConversation paramChatConversation, @chc akw paramakw)
  {
    mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENDING;
    paramChatConversation.j(paramakw.d());
    bif localbif = paramakw.i();
    od localod = b;
    boolean bool = mEnteredConversationFromRecentStoryReply;
    EasyMetric localEasyMetric = new EasyMetric("CHAT_SENT_ATTEMPT");
    String str;
    if (bool)
    {
      str = "1";
      localEasyMetric.a("story_reply", str).e();
      if (localbif.b()) {
        new EasyMetric("CHAT_" + localbif.a().c() + "_SENT_ATTEMPT").e();
      }
      str = bgp.b();
      mSendingChatTimers.put(localbif.c(), EasyMetric.EasyMetricFactory.b("CHAT_SENT").b().a("reachability", str));
      AnalyticsEvents.k();
      nr.a(paramakw);
      if (mSequenceNumberState == ChatConversation.SequenceNumberState.UPDATED) {
        break label250;
      }
      a(paramChatConversation, localbif);
      AnalyticsEvents.e(a.size());
      c(paramChatConversation);
    }
    for (;;)
    {
      if (mIsStub) {
        mIsStub = false;
      }
      bbo.a().a(new bca(mId, true));
      bbo.a().a(new bed());
      i.c();
      return;
      str = "0";
      break;
      label250:
      long l = paramChatConversation.a(paramakw.t());
      localbif.a(Long.valueOf(l));
      paramakw.b(l);
      a(paramChatConversation, localbif);
    }
  }
  
  public final void a(@chc ChatConversation paramChatConversation, @chc akw paramakw, int paramInt, boolean paramBoolean)
  {
    String str = akr.l();
    if (str == null) {
      return;
    }
    Object localObject = paramChatConversation.z();
    bjy localbjy = mMessagingAuthToken;
    localObject = (bjk)aty.a(bji.a.MESSAGE_STATE, str, (List)localObject, localbjy);
    ((bjk)localObject).a(paramakw.d());
    if (paramBoolean) {}
    for (str = "saved";; str = "unsaved")
    {
      ((bjk)localObject).b(str);
      ((bjk)localObject).a(Integer.valueOf(paramInt));
      paramakw.a(((bjk)localObject).k());
      a(paramChatConversation, (bil)localObject);
      if (!paramBoolean) {
        break;
      }
      nr.c(paramakw);
      return;
    }
    nr.d(paramakw);
  }
  
  public final void a(@chc ChatConversation paramChatConversation, @chc akw paramakw, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (mSendReceiveStatus == StatefulChatFeedItem.SendReceiveStatus.SENT) {}
    label112:
    label187:
    label189:
    label558:
    label592:
    for (;;)
    {
      return;
      String str = akr.l();
      if (str != null)
      {
        long l = paramChatConversation.b(System.currentTimeMillis());
        bif localbif = paramakw.i();
        bjy localbjy = mMessagingAuthToken;
        Object localObject = localbif;
        if (localbif == null)
        {
          if ((paramakw instanceof ChatMedia))
          {
            localObject = (ChatMedia)paramakw;
            if (((ChatMedia)localObject).C() == null)
            {
              paramChatConversation.b((ChatFeedItem)localObject);
              paramakw = (aji)f.h().get(((ChatMedia)localObject).d());
              int m;
              if (paramakw == null)
              {
                AlertDialogUtils.a(2131493164, SnapchatApplication.b());
                m = 1;
                if (!paramBoolean2) {
                  break label187;
                }
                if (m == 0) {
                  break label189;
                }
                paramChatConversation.a((ChatFeedItem)localObject, FeedIconChangeType.FAILED_TO_SEND);
              }
              for (;;)
              {
                bbo.a().a(new bca(mId));
                return;
                try
                {
                  new qa(paramakw).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
                  m = 0;
                }
                catch (py.a paramakw)
                {
                  AlertDialogUtils.a(2131493164, SnapchatApplication.b());
                  m = 1;
                }
                break label112;
                break;
                paramChatConversation.a((ChatFeedItem)localObject, FeedIconChangeType.SENDING);
              }
            }
            localObject = new bjh().c(((ChatMedia)localObject).F()).b(((ChatMedia)localObject).E()).a(((ChatMedia)localObject).C()).a(Integer.valueOf(((ChatMedia)localObject).G())).b(Integer.valueOf(((ChatMedia)localObject).H()));
            localObject = new bjj().a(bjj.a.MEDIA.toString()).a((bjh)localObject);
            localbif = (bif)aty.a(bji.a.CHAT_MESSAGE, str, paramChatConversation.z(), localbjy);
            localbif.a(paramakw.d());
            localbif.a((bjj)localObject);
            localbif.b(Long.valueOf(l));
            paramakw.a(localbif.k());
            paramakw.a(localbif);
            paramakw.c(l);
            localObject = localbif;
          }
        }
        else
        {
          ((bif)localObject).g().a(localbjy);
          mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENDING;
          if (paramBoolean1)
          {
            ((bif)localObject).b(Long.valueOf(l));
            paramakw.c(l);
          }
          mFailedChatMessages.remove(localObject);
          ((bif)localObject).a(Boolean.valueOf(true));
          if (mSequenceNumberState == ChatConversation.SequenceNumberState.UPDATED) {
            break label558;
          }
          a(paramChatConversation, (bif)localObject);
          AnalyticsEvents.e(a.size());
          c(paramChatConversation);
        }
        for (;;)
        {
          if (!paramBoolean2) {
            break label592;
          }
          paramChatConversation.a(paramakw, FeedIconChangeType.SENDING);
          bbo.a().a(new bca(mId));
          return;
          if ((paramakw instanceof ald))
          {
            localObject = new bjj().a(bjj.a.TEXT.toString()).b(paramakw.aj());
            break;
          }
          if ((paramakw instanceof alb))
          {
            localObject = new bjj().a(bjj.a.SCREENSHOT.toString());
            break;
          }
          throw new RuntimeException("Unknown chat type (well this should never happen...): " + paramakw);
          l = paramChatConversation.a(paramakw.t());
          ((bif)localObject).a(Long.valueOf(l));
          paramakw.b(l);
          a(paramChatConversation, (bil)localObject);
        }
      }
    }
  }
  
  public final void a(@chc final ChatConversation paramChatConversation, @chc final bil parambil)
  {
    if ((parambil instanceof bif)) {
      AnalyticsEvents.d("CHAT_SEND_REQUEST_LATENCY", parambil.k());
    }
    SecureChatService.SecureChatWriteCompletedCallback local1 = new SecureChatService.SecureChatWriteCompletedCallback()
    {
      public final void a(boolean paramAnonymousBoolean, SecureChatService.SecureChatWriteCompletedCallback.Status paramAnonymousStatus, String paramAnonymousString)
      {
        paramAnonymousString = b;
        Object localObject1 = parambil;
        Object localObject2;
        int i;
        if (((localObject1 instanceof bif)) && (!aty.b((bji)localObject1)))
        {
          if (paramAnonymousBoolean) {
            paramAnonymousString.a((bif)localObject1);
          }
        }
        else
        {
          localObject2 = zm.this;
          localObject1 = paramChatConversation;
          paramAnonymousString = parambil;
          if (!paramAnonymousBoolean) {
            break label311;
          }
          if (!aty.b(paramAnonymousString))
          {
            ((ChatConversation)localObject1).a(paramAnonymousString);
            if (!(paramAnonymousString instanceof bif)) {
              break label249;
            }
            paramAnonymousStatus = (bif)paramAnonymousString;
            localObject2 = paramAnonymousStatus.c();
            akw localakw = ((ChatConversation)localObject1).f((String)localObject2);
            if (localakw != null)
            {
              mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENT;
              ((ChatConversation)localObject1).a(localakw, FeedIconChangeType.SENT);
            }
            ((ChatConversation)localObject1).a(paramAnonymousStatus.e().longValue(), false);
            mTimestamp = paramAnonymousStatus.f().longValue();
            ((ChatConversation)localObject1).k((String)localObject2);
            AndroidNotificationManager.a().a(SnapchatApplication.b(), true);
            i = 1;
            label172:
            if (i != 0) {
              bbo.a().a(new bca(mId, paramAnonymousString.k()));
            }
          }
        }
        for (;;)
        {
          if ((paramAnonymousString instanceof bif))
          {
            paramAnonymousStatus = new HashMap();
            paramAnonymousStatus.put("reachability", bgp.b());
            AnalyticsEvents.a("CHAT_SEND_REQUEST_LATENCY", paramAnonymousString.k(), paramAnonymousStatus);
          }
          return;
          paramAnonymousString.b((bif)localObject1);
          break;
          label249:
          if ((paramAnonymousString instanceof bju))
          {
            ((ChatConversation)localObject1).a((bju)paramAnonymousString);
            if (((bju)paramAnonymousString).a() == bju.a.DELETE) {}
          }
          else
          {
            while (((paramAnonymousString instanceof bjr)) || ((paramAnonymousString instanceof bia)) || ((paramAnonymousString instanceof bkc)))
            {
              i = 0;
              break;
            }
          }
          i = 1;
          break label172;
          label311:
          paramAnonymousStatus.name();
          if ((paramAnonymousString instanceof bif)) {
            ((ChatConversation)localObject1).k();
          }
          ((ChatConversation)localObject1).a(paramAnonymousString);
          switch (zm.3.a[paramAnonymousStatus.ordinal()])
          {
          default: 
            ((zm)localObject2).b((ChatConversation)localObject1, paramAnonymousString);
            break;
          case 1: 
            if ((paramAnonymousString instanceof bif))
            {
              paramAnonymousStatus = auk.b((String)paramAnonymousString.g().b().get(0), akp.g());
              AndroidNotificationManager.a().a(SnapchatApplication.b(), paramAnonymousStatus.g());
            }
            zm.a((ChatConversation)localObject1, paramAnonymousString, true);
          }
        }
      }
    };
    boolean bool;
    if ((parambil instanceof bif)) {
      bool = true;
    }
    while ((bool) && (!auk.a(mTheirUsername)))
    {
      local1.a(false, SecureChatService.SecureChatWriteCompletedCallback.Status.NOT_FRIENDS, "");
      return;
      if ((parambil instanceof bjk)) {
        bool = TextUtils.equals(((bjk)parambil).b(), bjk.a.SAVED.name().toLowerCase(Locale.ENGLISH));
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
          bju localbju = (bju)((Iterator)???).next();
          localbju.g().a((bjy)localObject1);
          a(paramChatConversation, localbju);
        }
      }
    }
    Object localObject1 = parambil.g();
    long l = mMyLastConnSeqNum + 1L;
    mMyLastConnSeqNum = l;
    ((bjb)localObject1).a(Long.valueOf(l));
    for (;;)
    {
      synchronized (mSendingMessages)
      {
        mSendingMessages.add(parambil);
        ??? = mMessagingAuthToken;
        if ((((bjb)localObject1).d() == null) && (??? != null))
        {
          ((bjb)localObject1).a((bjy)???);
          localObject1 = LandingPageActivity.i();
          if (localObject1 != null) {
            break label386;
          }
          if (!aty.a(parambil)) {
            break;
          }
          a(parambil, local1);
          return;
        }
      }
      if (??? == null)
      {
        new qi(mId).execute();
        if (!(parambil instanceof bju))
        {
          local1.a(false, SecureChatService.SecureChatWriteCompletedCallback.Status.NOT_FRIENDS, "");
          return;
        }
      }
    }
    local1.a(false, SecureChatService.SecureChatWriteCompletedCallback.Status.NO_CONNECTION, "SCCP connection unavailable - can't send " + parambil.i());
    return;
    label386:
    if (((parambil instanceof bif)) && (ad))
    {
      mNumSCCPChatMessagesSendingOrSent += 1;
      mLastSCCPMessageSentTimestamp = SystemClock.elapsedRealtime();
    }
    ((SecureChatService)localObject1).a(parambil, local1);
  }
  
  public final void a(@chc ChatConversation paramChatConversation, @chc Map<String, Long> paramMap1, @chc Map<String, Long> paramMap2, bju.a parama)
  {
    if ((paramMap1.isEmpty()) && (paramMap2.isEmpty())) {}
    do
    {
      return;
      localObject = akr.l();
    } while (localObject == null);
    Object localObject = (bju)aty.a(bji.a.MESSAGE_RELEASE, (String)localObject, paramChatConversation.z(), mMessagingAuthToken);
    ((bju)localObject).a(parama.toString());
    ((bju)localObject).a(paramMap1);
    ((bju)localObject).b(paramMap2);
    a(paramChatConversation, (bil)localObject);
  }
  
  public final void a(@chc ChatConversation paramChatConversation, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    Object localObject = akr.l();
    if (localObject == null) {
      return;
    }
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put(localObject, Boolean.valueOf(paramBoolean1));
    localTreeMap.put(mTheirUsername, Boolean.valueOf(paramBoolean2));
    localObject = (bjr)aty.a(bji.a.PRESENCE, (String)localObject, paramChatConversation.z(), mMessagingAuthToken);
    ((bjr)localObject).a(localTreeMap);
    ((bjr)localObject).c(Boolean.valueOf(paramBoolean3));
    if ((att.b()) && (LocalPreview.a())) {}
    for (paramBoolean1 = true;; paramBoolean1 = false)
    {
      ((bjr)localObject).b(Boolean.valueOf(paramBoolean1));
      a(paramChatConversation, (bil)localObject);
      return;
    }
  }
  
  public final void b(@chc ChatConversation paramChatConversation)
  {
    List localList = (List)a.get(paramChatConversation);
    if (localList != null)
    {
      akw localakw = null;
      Object localObject = localakw;
      try
      {
        if (!localList.isEmpty())
        {
          localObject = localakw;
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
          localakw = paramChatConversation.f(((bif)((Iterator)localObject).next()).c());
          if (localakw != null) {
            a(paramChatConversation, localakw, false, false);
          }
        }
        paramChatConversation.r();
      }
      finally {}
      bbo.a().a(new bca(mId));
    }
  }
  
  public final void b(@chc ChatConversation paramChatConversation, @chc bil parambil)
  {
    if (!avb.a(parambil.h()))
    {
      parambil.a(Boolean.valueOf(true));
      if ((parambil instanceof bif))
      {
        bif localbif = (bif)parambil;
        akw localakw = paramChatConversation.f(localbif.c());
        if (localakw == null)
        {
          paramChatConversation.a(parambil);
          return;
        }
        long l = paramChatConversation.b(System.currentTimeMillis());
        localakw.c(l);
        localbif.b(Long.valueOf(l));
      }
      parambil.g().a(mMessagingAuthToken);
      a(paramChatConversation, parambil);
      return;
    }
    a(paramChatConversation, parambil, true);
  }
  
  public final void c()
  {
    SecureChatService localSecureChatService = LandingPageActivity.i();
    if (localSecureChatService == null) {}
    for (;;)
    {
      return;
      Object localObject = new ArrayList(d);
      d.clear();
      HashMap localHashMap = new HashMap(e);
      e.clear();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        bil localbil = (bil)((Iterator)localObject).next();
        localSecureChatService.a(localbil, (SecureChatService.SecureChatWriteCompletedCallback)localHashMap.get(localbil.k()));
      }
    }
  }
  
  @awj
  public final void c(@chc final ChatConversation paramChatConversation)
  {
    if (mSequenceNumberState != ChatConversation.SequenceNumberState.NOT_UPDATED) {
      return;
    }
    mSequenceNumberState = ChatConversation.SequenceNumberState.UPDATING;
    tt.a(mId, new LoadConversationPageTask.a()
    {
      public final void a(boolean paramAnonymousBoolean)
      {
        Object localObject2;
        if (!paramAnonymousBoolean)
        {
          paramChatConversationmSequenceNumberState = ChatConversation.SequenceNumberState.NOT_UPDATED;
          localObject2 = zm.this;
          ChatConversation localChatConversation = paramChatConversation;
          localObject2 = (List)a.get(localChatConversation);
          if (localObject2 != null)
          {
            try
            {
              if (((List)localObject2).isEmpty()) {
                break label130;
              }
              Object localObject3 = new ArrayList((Collection)localObject2);
              ((List)localObject2).clear();
              localObject3 = ((List)localObject3).iterator();
              while (((Iterator)localObject3).hasNext()) {
                zm.a(localChatConversation, (bif)((Iterator)localObject3).next(), false);
              }
              ((ChatConversation)localObject1).r();
            }
            finally {}
            bbo.a().a(new bca(mId));
          }
        }
        label130:
      }
    });
  }
}

/* Location:
 * Qualified Name:     zm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */