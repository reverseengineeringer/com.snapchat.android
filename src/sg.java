import com.snapchat.android.api2.framework.HttpMethod;

public final class sg
  extends sl
{
  private String mPaymentId;
  
  public sg(@cgb String paramString, @cgb sk paramsk)
  {
    super(paramsk);
    mPaymentId = paramString;
  }
  
  public final Object b()
  {
    return null;
  }
  
  public final HttpMethod c()
  {
    return HttpMethod.GET;
  }
  
  protected final String e()
  {
    return "cash/payments/" + mPaymentId;
  }
}

/* Location:
 * Qualified Name:     sg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */