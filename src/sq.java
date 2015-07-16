import com.google.gson.annotations.SerializedName;

public final class sq
  extends sx<sy>
{
  final String mPasscode;
  private final String mPaymentId;
  
  public sq(@chc String paramString1, @chd String paramString2, @chc sx.a parama)
  {
    super(parama);
    mPaymentId = paramString1;
    mPasscode = paramString2;
    registerCallback(sy.class, this);
  }
  
  public final String a()
  {
    return "cash/payments/" + mPaymentId + "/confirm";
  }
  
  public final Object getRequestPayload()
  {
    return new sq.a();
  }
  
  @un
  final class a
  {
    @SerializedName("passcode")
    final String passcode = mPasscode;
    
    a() {}
  }
}

/* Location:
 * Qualified Name:     sq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */