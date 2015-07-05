import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status;
import com.squareup.otto.Bus;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class yq$1
  implements SecureChatService.SecureChatWriteCompletedCallback
{
  yq$1(yq paramyq, bhl parambhl, ChatConversation paramChatConversation) {}
  
  public final void a(boolean paramBoolean, SecureChatService.SecureChatWriteCompletedCallback.Status paramStatus, String paramString)
  {
    Object localObject1 = c.b;
    Object localObject2 = a;
    Object localObject3;
    int i;
    if (((localObject2 instanceof bhf)) && (!asz.b((bii)localObject2)))
    {
      if (paramBoolean) {
        ((nm)localObject1).a((bhf)localObject2);
      }
    }
    else
    {
      localObject3 = c;
      localObject2 = b;
      localObject1 = a;
      if (!paramBoolean) {
        break label331;
      }
      if (!asz.b((bii)localObject1))
      {
        Timber.g("SendingMailman", "CHAT-LOG: SUCCEEDED sending message %s", new Object[] { localObject1 });
        ((ChatConversation)localObject2).a((bhl)localObject1);
        if (!(localObject1 instanceof bhf)) {
          break label263;
        }
        paramStatus = (bhf)localObject1;
        paramString = paramStatus.c();
        localObject3 = ((ChatConversation)localObject2).f(paramString);
        if (localObject3 != null) {
          mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENT;
        }
        ((ChatConversation)localObject2).a(paramStatus.e().longValue(), false);
        mTimestamp = paramStatus.f().longValue();
        ((ChatConversation)localObject2).k(paramString);
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
        paramStatus = new HashMap();
        paramStatus.put("reachability", bfp.b());
        AnalyticsEvents.a("CHAT_SEND_REQUEST_LATENCY", ((bhl)localObject1).k(), paramStatus);
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
      Timber.g("SendingMailman", "CHAT-LOG: FAILED sending message %s with status %s and message: %s", new Object[] { localObject1, paramStatus.name(), paramString });
      if ((localObject1 instanceof bhf)) {
        ((ChatConversation)localObject2).k();
      }
      ((ChatConversation)localObject2).a((bhl)localObject1);
      switch (yq.3.a[paramStatus.ordinal()])
      {
      default: 
        ((yq)localObject3).b((ChatConversation)localObject2, (bhl)localObject1);
        break;
      case 1: 
        if ((localObject1 instanceof bhf))
        {
          paramStatus = atm.b((String)((bhl)localObject1).g().b().get(0), ajv.g());
          AndroidNotificationManager.a().a(SnapchatApplication.b(), paramStatus.f());
        }
        ((yq)localObject3).a((ChatConversation)localObject2, (bhl)localObject1, true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     yq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */