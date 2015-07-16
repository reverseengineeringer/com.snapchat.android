import com.google.gson.annotations.SerializedName;

public final class qi
  extends tx
  implements ui.b<qi.b>
{
  final String mConversationId;
  
  public qi(@chc String paramString)
  {
    mConversationId = paramString;
    registerCallback(qi.b.class, this);
  }
  
  protected final String getPath()
  {
    return "/loq/conversation_auth_token";
  }
  
  public final Object getRequestPayload()
  {
    return new qi.a();
  }
  
  @ud
  final class a
    extends qc
  {
    @SerializedName("conversation_id")
    final String conversationId = mConversationId;
    
    a() {}
  }
  
  static class b
  {
    @SerializedName("messaging_auth")
    @chd
    bjy messagingAuth;
  }
}

/* Location:
 * Qualified Name:     qi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */