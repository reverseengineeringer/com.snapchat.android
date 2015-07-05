import com.google.gson.annotations.SerializedName;

public final class pr
  extends th
  implements ts.b<pr.b>
{
  final String mConversationId;
  
  public pr(@cgb String paramString)
  {
    mConversationId = paramString;
    a(pr.b.class, this);
  }
  
  public final Object b()
  {
    return new pr.a();
  }
  
  protected final String d()
  {
    return "/loq/conversation_auth_token";
  }
  
  @tn
  final class a
    extends pl
  {
    @SerializedName("conversation_id")
    final String conversationId = mConversationId;
    
    a() {}
  }
  
  static class b
  {
    @SerializedName("messaging_auth")
    @cgc
    bix messagingAuth;
  }
}

/* Location:
 * Qualified Name:     pr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */