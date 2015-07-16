import android.text.TextUtils;

public final class sp
  extends sx<sy>
{
  private final String mPaymentId;
  
  public sp(@chd String paramString, @chc sx.a parama)
  {
    super(parama);
    mPaymentId = paramString;
    registerCallback(sy.class, this);
  }
  
  public sp(@chc sx.a parama)
  {
    this(null, parama);
  }
  
  public final String a()
  {
    if (!TextUtils.isEmpty(mPaymentId)) {
      return "cash/payments/" + mPaymentId + "/accept-terms";
    }
    return "cash/accept-terms";
  }
  
  public final Object getRequestPayload()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     sp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */