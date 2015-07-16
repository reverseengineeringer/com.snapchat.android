import com.google.gson.annotations.SerializedName;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.List;

public final class tu
  extends tx
{
  public static final String CHAT_TYPING_PATH = "/bq/chat_typing";
  private static final String TAG = "TellThemIAmTypingTask";
  private ChatConversation mConversation;
  
  public tu(@chc ChatConversation paramChatConversation)
  {
    mConversation = paramChatConversation;
    mConversation.mIsNotifyingRecipientAboutTyping = true;
  }
  
  protected final String getPath()
  {
    return "/bq/chat_typing";
  }
  
  public final void onResult(@chc us paramus)
  {
    super.onResult(paramus);
    mConversation.mIsNotifyingRecipientAboutTyping = false;
  }
  
  @ud
  public final class a
    extends qc
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
 * Qualified Name:     tu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */