import android.content.res.Resources;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority;
import com.snapchat.android.model.chat.StatefulChatFeedItem;

public final class ale
  extends akw
{
  private static final String TYPE = "unknown";
  
  private ale(ale.a parama)
  {
    super(parama);
    D();
  }
  
  public ale(bif parambif)
  {
    super(parambif);
    D();
  }
  
  private void D()
  {
    mStatusText = auv.a(null, 2131493577, new Object[] { mSender });
  }
  
  public final void C_() {}
  
  public final boolean Q()
  {
    return true;
  }
  
  public final String a()
  {
    return SnapchatApplication.b().getResources().getString(2131493519);
  }
  
  public final int b(ChatConversation paramChatConversation)
  {
    return ChatFeedItem.FeedIconPriority.MOST_RECENT.ordinal();
  }
  
  public final boolean c()
  {
    return false;
  }
  
  public final boolean e()
  {
    return true;
  }
  
  public final String h()
  {
    return "unknown";
  }
  
  public static final class a
    extends akw.a
  {
    public a(String paramString1, String paramString2)
    {
      super(paramString2);
    }
  }
}

/* Location:
 * Qualified Name:     ale
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */