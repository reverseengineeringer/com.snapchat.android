import com.google.gson.annotations.SerializedName;

public final class sa
  extends sh<si>
{
  final String mPasscode;
  private final String mPaymentId;
  
  public sa(@cgb String paramString1, @cgc String paramString2, @cgb sh.a parama)
  {
    super(parama);
    mPaymentId = paramString1;
    mPasscode = paramString2;
    a(si.class, this);
  }
  
  public final Object b()
  {
    return new sa.a();
  }
  
  public final String e()
  {
    return "cash/payments/" + mPaymentId + "/confirm";
  }
  
  @tx
  final class a
  {
    @SerializedName("passcode")
    final String passcode = mPasscode;
    
    a() {}
  }
}

/* Location:
 * Qualified Name:     sa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */