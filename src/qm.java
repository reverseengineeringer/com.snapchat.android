import com.google.gson.annotations.SerializedName;

public final class qm
  extends th
{
  final String mFriendName;
  
  public qm(@cgb String paramString)
  {
    mFriendName = paramString;
  }
  
  public final Object b()
  {
    return new qm.a();
  }
  
  protected final String d()
  {
    return "/cash/check_recipient_eligible";
  }
  
  @tn
  final class a
    extends pl
  {
    @SerializedName("recipient")
    String recipient = mFriendName;
    
    a() {}
  }
}

/* Location:
 * Qualified Name:     qm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */