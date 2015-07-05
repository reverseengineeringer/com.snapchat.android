import android.content.res.Resources;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority;
import com.snapchat.android.model.chat.StatefulChatFeedItem;

public final class akj
  extends akb
{
  private static final String TYPE = "unknown";
  
  private akj(akj.a parama)
  {
    super(parama);
    B();
  }
  
  public akj(bhf parambhf)
  {
    super(parambhf);
    B();
  }
  
  private void B()
  {
    mStatusText = atx.a(null, 2131493579, new Object[] { mSender });
  }
  
  public final boolean P()
  {
    return true;
  }
  
  public final int a(ChatConversation paramChatConversation)
  {
    return ChatFeedItem.FeedIconPriority.MOST_RECENT.ordinal();
  }
  
  public final String a()
  {
    return SnapchatApplication.b().getResources().getString(2131493519);
  }
  
  public final long b(ChatConversation paramChatConversation)
  {
    return W();
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
  
  public final void p() {}
  
  public static final class a
    extends akb.a
  {
    public a(String paramString1, String paramString2)
    {
      super(paramString2);
    }
  }
}

/* Location:
 * Qualified Name:     akj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */