import com.google.gson.annotations.SerializedName;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;

public final class tb
  extends th
{
  private ChatConversation mConversation;
  private String mConversationId;
  
  public tb(@cgb ChatConversation paramChatConversation)
  {
    mConversation = paramChatConversation;
    mConversationId = mId;
  }
  
  public final void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    if (paramuc.d()) {
      akc.b().b(mConversationId, true);
    }
    for (;;)
    {
      ban.a().a(new ben());
      return;
      ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493419));
      mConversation.mBeingCleared = false;
    }
  }
  
  protected final String d()
  {
    return "/loq/clear_conversation";
  }
  
  @tn
  public final class a
    extends pl
  {
    @SerializedName("conversation_id")
    private String conversationId;
    
    public a(@cgb String paramString)
    {
      conversationId = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     tb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */