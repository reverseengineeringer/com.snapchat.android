import com.google.gson.annotations.SerializedName;

public final class rc
  extends tx
{
  final String mFriendName;
  
  public rc(@chc String paramString)
  {
    mFriendName = paramString;
  }
  
  protected final String getPath()
  {
    return "/cash/check_recipient_eligible";
  }
  
  public final Object getRequestPayload()
  {
    return new rc.a();
  }
  
  @ud
  final class a
    extends qc
  {
    @SerializedName("recipient")
    String recipient = mFriendName;
    
    a() {}
  }
}

/* Location:
 * Qualified Name:     rc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */