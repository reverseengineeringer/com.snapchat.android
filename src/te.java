import com.google.gson.annotations.SerializedName;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.List;

public final class te
  extends th
{
  public static final String CHAT_TYPING_PATH = "/bq/chat_typing";
  private static final String TAG = "TellThemIAmTypingTask";
  private ChatConversation mConversation;
  
  public te(@cgb ChatConversation paramChatConversation)
  {
    mConversation = paramChatConversation;
    mConversation.mIsNotifyingRecipientAboutTyping = true;
  }
  
  public final void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    mConversation.mIsNotifyingRecipientAboutTyping = false;
  }
  
  protected final String d()
  {
    return "/bq/chat_typing";
  }
  
  @tn
  public final class a
    extends pl
  {
    @SerializedName("recipient_usernames")
    private String recipientUsernames;
    
    public a()
    {
      Object localObject;
      recipientUsernames = mGsonWrapper.a(localObject);
    }
  }
}

/* Location:
 * Qualified Name:     te
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */