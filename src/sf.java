import com.snapchat.android.api2.framework.HttpMethod;

public final class sf
  extends sq
  implements ts.b<sw>
{
  private static final String TAG = "RetrieveCashCustomerStatusTask";
  private sj mListener;
  
  public sf(@cgb sj paramsj)
  {
    mListener = paramsj;
    a(sw.class, this);
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
    return "cash";
  }
}

/* Location:
 * Qualified Name:     sf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */