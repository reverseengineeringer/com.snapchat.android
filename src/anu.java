import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;

public final class anu
  extends anv
{
  public anu(String paramString)
  {
    this(paramString, System.currentTimeMillis(), -1L);
  }
  
  public anu(String paramString, long paramLong1, long paramLong2)
  {
    super(paramString, paramLong1, paramLong2);
  }
  
  public final String a()
  {
    return "";
  }
  
  public final void a(long paramLong)
  {
    Timber.c("ChatViewingSession", "onScreenshotDetected " + paramLong, new Object[0]);
    Object localObject1 = a;
    ChatConversation localChatConversation = akc.b().a((String)localObject1);
    if (localChatConversation == null) {
      return;
    }
    localObject1 = new akg.a(ajx.l(), (String)localObject1).a();
    ((akg)localObject1).c(paramLong);
    yq localyq = yq.a();
    Object localObject2 = ajx.l();
    if (localObject2 != null)
    {
      ((akg)localObject1).c(localChatConversation.b(((akg)localObject1).W()));
      localChatConversation.a((ChatFeedItem)localObject1);
      bij localbij = new bij().a(bij.a.SCREENSHOT.toString());
      localObject2 = (bhf)asz.a(bii.a.CHAT_MESSAGE, (String)localObject2, localChatConversation.y(), mMessagingAuthToken);
      ((bhf)localObject2).a(((akg)localObject1).d());
      ((bhf)localObject2).a(localbij);
      ((bhf)localObject2).b(Long.valueOf(((akg)localObject1).W()));
      ((akg)localObject1).a(((bhf)localObject2).k());
      ((akg)localObject1).a((bhf)localObject2);
      localyq.a(localChatConversation, (akb)localObject1);
    }
    d.d();
  }
}

/* Location:
 * Qualified Name:     anu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */