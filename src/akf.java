import android.view.View;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatFeedItem.a;
import java.util.List;

public class akf
  implements ChatFeedItem
{
  private static final String HEADER_ID_SUFFIX = "CHAT_HEADER";
  public String mId;
  public final String mSender;
  public long mTimestamp;
  
  public akf(String paramString, ChatFeedItem paramChatFeedItem)
  {
    mSender = paramString;
    if (paramChatFeedItem != null)
    {
      mTimestamp = paramChatFeedItem.W();
      mId = (ChatFragment.a(paramChatFeedItem) + "CHAT_HEADER");
      return;
    }
    mTimestamp = System.currentTimeMillis();
    mId = "TODAY_DUMMY_HEADER";
  }
  
  public final boolean N()
  {
    return false;
  }
  
  public final boolean O()
  {
    return false;
  }
  
  public final boolean P()
  {
    return true;
  }
  
  public final boolean Q()
  {
    return false;
  }
  
  public final long W()
  {
    return mTimestamp;
  }
  
  public final int a(ChatConversation paramChatConversation)
  {
    return -1;
  }
  
  public final ChatFeedItem.a a(@cgb View paramView, @cgc ChatConversation paramChatConversation)
  {
    return null;
  }
  
  public final String a()
  {
    return "";
  }
  
  public final String al()
  {
    return null;
  }
  
  public final boolean am()
  {
    return false;
  }
  
  public final boolean ao()
  {
    return false;
  }
  
  public final long b(ChatConversation paramChatConversation)
  {
    return mTimestamp;
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
    if ((paramObject instanceof akf)) {
      return mId.equals(((akf)paramObject).d());
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
  
  public final void p() {}
  
  public final boolean q()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     akf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */