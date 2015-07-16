import android.view.View;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatFeedItem.a;
import java.util.List;

public class ala
  implements ChatFeedItem
{
  private static final String HEADER_ID_SUFFIX = "CHAT_HEADER";
  public String mId;
  public final String mSender;
  public long mTimestamp;
  
  public ala(String paramString, ChatFeedItem paramChatFeedItem)
  {
    mSender = paramString;
    if (paramChatFeedItem != null)
    {
      mTimestamp = paramChatFeedItem.U();
      mId = (ChatFragment.a(paramChatFeedItem) + "CHAT_HEADER");
      return;
    }
    mTimestamp = System.currentTimeMillis();
    mId = "TODAY_DUMMY_HEADER";
  }
  
  public final boolean O()
  {
    return false;
  }
  
  public final boolean P()
  {
    return false;
  }
  
  public final boolean Q()
  {
    return true;
  }
  
  public final boolean R()
  {
    return false;
  }
  
  public final long U()
  {
    return mTimestamp;
  }
  
  public final ChatFeedItem.a a(@chc View paramView, @chd ChatConversation paramChatConversation)
  {
    return null;
  }
  
  public final String a()
  {
    return "";
  }
  
  public final String aj()
  {
    return null;
  }
  
  public final boolean ak()
  {
    return false;
  }
  
  public final boolean am()
  {
    return false;
  }
  
  public final int b(ChatConversation paramChatConversation)
  {
    return -1;
  }
  
  public String b()
  {
    return null;
  }
  
  public final long c(ChatConversation paramChatConversation)
  {
    return mTimestamp;
  }
  
  public final boolean c()
  {
    return false;
  }
  
  public String d()
  {
    return mId;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof ala)) {
      return mId.equals(((ala)paramObject).d());
    }
    return false;
  }
  
  public int hashCode()
  {
    return mId.hashCode();
  }
  
  public final String j()
  {
    return mSender;
  }
  
  public final List<String> k()
  {
    return null;
  }
  
  public final boolean p()
  {
    return false;
  }
  
  public final boolean q()
  {
    return false;
  }
  
  public final boolean r()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     ala
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */