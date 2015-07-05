import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority;
import com.snapchat.android.model.chat.ChatFeedItem.a;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import java.util.Locale;

public final class akg
  extends akb
{
  public static final String TYPE = "screenshot";
  
  private akg(akg.a parama)
  {
    super(parama);
    B();
  }
  
  public akg(bhf parambhf)
  {
    super(parambhf);
    B();
  }
  
  private void B()
  {
    if (TextUtils.equals(mSender, ajx.l()))
    {
      mStatusText = SnapchatApplication.b().getString(2131493012);
      return;
    }
    String str = atm.e(mSender, ajv.g());
    mStatusText = SnapchatApplication.b().getString(2131493005, new Object[] { str.toUpperCase(Locale.getDefault()) });
  }
  
  public final boolean P()
  {
    return true;
  }
  
  public final int a(ChatConversation paramChatConversation)
  {
    return ChatFeedItem.FeedIconPriority.MOST_RECENT.ordinal();
  }
  
  public final ChatFeedItem.a a(@cgb View paramView, @cgc ChatConversation paramChatConversation)
  {
    super.a(paramView, paramChatConversation);
    return new ChatFeedItem.a(2130837554);
  }
  
  public final String a()
  {
    return SnapchatApplication.b().getResources().getString(2131493380);
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
    return false;
  }
  
  public final String h()
  {
    return "screenshot";
  }
  
  public static final class a
    extends akb.a
  {
    public a(String paramString1, String paramString2)
    {
      super(paramString2);
    }
    
    public final akg a()
    {
      return new akg(this, (byte)0);
    }
  }
}

/* Location:
 * Qualified Name:     akg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */