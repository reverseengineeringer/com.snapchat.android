import android.text.TextUtils;

public final class rz
  extends sh<si>
{
  private final String mPaymentId;
  
  public rz(@cgc String paramString, @cgb sh.a parama)
  {
    super(parama);
    mPaymentId = paramString;
    a(si.class, this);
  }
  
  public rz(@cgb sh.a parama)
  {
    this(null, parama);
  }
  
  public final Object b()
  {
    return null;
  }
  
  public final String e()
  {
    if (!TextUtils.isEmpty(mPaymentId)) {
      return "cash/payments/" + mPaymentId + "/accept-terms";
    }
    return "cash/accept-terms";
  }
}

/* Location:
 * Qualified Name:     rz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */