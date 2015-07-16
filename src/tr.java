import com.google.gson.annotations.SerializedName;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;

public final class tr
  extends tx
{
  private ChatConversation mConversation;
  private String mConversationId;
  
  public tr(@chc ChatConversation paramChatConversation)
  {
    mConversation = paramChatConversation;
    mConversationId = mId;
  }
  
  protected final String getPath()
  {
    return "/loq/clear_conversation";
  }
  
  public final void onResult(@chc us paramus)
  {
    super.onResult(paramus);
    if (paramus.d()) {
      akx.c().b(mConversationId, true);
    }
    for (;;)
    {
      bbo.a().a(new bfm());
      return;
      bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493419));
      mConversation.mBeingCleared = false;
    }
  }
  
  @ud
  public final class a
    extends qc
  {
    @SerializedName("conversation_id")
    private String conversationId;
    
    public a(@chc String paramString)
    {
      conversationId = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     tr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */