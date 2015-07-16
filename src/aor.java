import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;

public final class aor
  extends aos
{
  public aor(String paramString)
  {
    this(paramString, System.currentTimeMillis(), -1L);
  }
  
  public aor(String paramString, long paramLong1, long paramLong2)
  {
    super(paramString, paramLong1, paramLong2);
  }
  
  public final String a()
  {
    return "";
  }
  
  public final void a(long paramLong)
  {
    Object localObject1 = a;
    ChatConversation localChatConversation = akx.c().a((String)localObject1);
    if (localChatConversation == null) {
      return;
    }
    localObject1 = new alb.a(akr.l(), (String)localObject1).a();
    ((alb)localObject1).c(paramLong);
    zm localzm = zm.a();
    Object localObject2 = akr.l();
    if (localObject2 != null)
    {
      ((alb)localObject1).c(localChatConversation.b(((alb)localObject1).U()));
      localChatConversation.a((ChatFeedItem)localObject1);
      bjj localbjj = new bjj().a(bjj.a.SCREENSHOT.toString());
      localObject2 = (bif)aty.a(bji.a.CHAT_MESSAGE, (String)localObject2, localChatConversation.z(), mMessagingAuthToken);
      ((bif)localObject2).a(((alb)localObject1).d());
      ((bif)localObject2).a(localbjj);
      ((bif)localObject2).b(Long.valueOf(((alb)localObject1).U()));
      ((alb)localObject1).a(((bif)localObject2).k());
      ((alb)localObject1).a((bif)localObject2);
      localzm.a(localChatConversation, (akw)localObject1);
    }
    d.d();
  }
}

/* Location:
 * Qualified Name:     aor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */