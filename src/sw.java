import com.snapchat.android.api2.framework.HttpMethod;

public final class sw
  extends tb
{
  private String mPaymentId;
  
  public sw(@chc String paramString, @chc ta paramta)
  {
    super(paramta);
    mPaymentId = paramString;
  }
  
  protected final String a()
  {
    return "cash/payments/" + mPaymentId;
  }
  
  public final HttpMethod getMethod()
  {
    return HttpMethod.GET;
  }
  
  public final Object getRequestPayload()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     sw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */