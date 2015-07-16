import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.app.feature.messaging.feed.model.FeedIconChangeType;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status;
import com.squareup.otto.Bus;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class zm$1
  implements SecureChatService.SecureChatWriteCompletedCallback
{
  zm$1(zm paramzm, bil parambil, ChatConversation paramChatConversation) {}
  
  public final void a(boolean paramBoolean, SecureChatService.SecureChatWriteCompletedCallback.Status paramStatus, String paramString)
  {
    paramString = c.b;
    Object localObject1 = a;
    Object localObject2;
    int i;
    if (((localObject1 instanceof bif)) && (!aty.b((bji)localObject1)))
    {
      if (paramBoolean) {
        paramString.a((bif)localObject1);
      }
    }
    else
    {
      localObject2 = c;
      localObject1 = b;
      paramString = a;
      if (!paramBoolean) {
        break label311;
      }
      if (!aty.b(paramString))
      {
        ((ChatConversation)localObject1).a(paramString);
        if (!(paramString instanceof bif)) {
          break label249;
        }
        paramStatus = (bif)paramString;
        localObject2 = paramStatus.c();
        akw localakw = ((ChatConversation)localObject1).f((String)localObject2);
        if (localakw != null)
        {
          mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENT;
          ((ChatConversation)localObject1).a(localakw, FeedIconChangeType.SENT);
        }
        ((ChatConversation)localObject1).a(paramStatus.e().longValue(), false);
        mTimestamp = paramStatus.f().longValue();
        ((ChatConversation)localObject1).k((String)localObject2);
        AndroidNotificationManager.a().a(SnapchatApplication.b(), true);
        i = 1;
        label172:
        if (i != 0) {
          bbo.a().a(new bca(mId, paramString.k()));
        }
      }
    }
    for (;;)
    {
      if ((paramString instanceof bif))
      {
        paramStatus = new HashMap();
        paramStatus.put("reachability", bgp.b());
        AnalyticsEvents.a("CHAT_SEND_REQUEST_LATENCY", paramString.k(), paramStatus);
      }
      return;
      paramString.b((bif)localObject1);
      break;
      label249:
      if ((paramString instanceof bju))
      {
        ((ChatConversation)localObject1).a((bju)paramString);
        if (((bju)paramString).a() == bju.a.DELETE) {}
      }
      else
      {
        while (((paramString instanceof bjr)) || ((paramString instanceof bia)) || ((paramString instanceof bkc)))
        {
          i = 0;
          break;
        }
      }
      i = 1;
      break label172;
      label311:
      paramStatus.name();
      if ((paramString instanceof bif)) {
        ((ChatConversation)localObject1).k();
      }
      ((ChatConversation)localObject1).a(paramString);
      switch (zm.3.a[paramStatus.ordinal()])
      {
      default: 
        ((zm)localObject2).b((ChatConversation)localObject1, paramString);
        break;
      case 1: 
        if ((paramString instanceof bif))
        {
          paramStatus = auk.b((String)paramString.g().b().get(0), akp.g());
          AndroidNotificationManager.a().a(SnapchatApplication.b(), paramStatus.g());
        }
        zm.a((ChatConversation)localObject1, paramString, true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     zm.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */