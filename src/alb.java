import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority;
import com.snapchat.android.model.chat.ChatFeedItem.a;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import java.util.Locale;

public final class alb
  extends akw
{
  public static final String TYPE = "screenshot";
  
  private alb(alb.a parama)
  {
    super(parama);
    D();
  }
  
  public alb(bif parambif)
  {
    super(parambif);
    D();
  }
  
  private void D()
  {
    if (TextUtils.equals(mSender, akr.l()))
    {
      mStatusText = SnapchatApplication.b().getString(2131493012);
      return;
    }
    String str = auk.e(mSender, akp.g());
    mStatusText = SnapchatApplication.b().getString(2131493005, new Object[] { str.toUpperCase(Locale.getDefault()) });
  }
  
  public final boolean Q()
  {
    return true;
  }
  
  public final ChatFeedItem.a a(@chc View paramView, @chd ChatConversation paramChatConversation)
  {
    super.a(paramView, paramChatConversation);
    return new ChatFeedItem.a(2130837554);
  }
  
  public final String a()
  {
    return SnapchatApplication.b().getResources().getString(2131493380);
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
    return false;
  }
  
  public final String h()
  {
    return "screenshot";
  }
  
  public static final class a
    extends akw.a
  {
    public a(String paramString1, String paramString2)
    {
      super(paramString2);
    }
    
    public final alb a()
    {
      return new alb(this, (byte)0);
    }
  }
}

/* Location:
 * Qualified Name:     alb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */