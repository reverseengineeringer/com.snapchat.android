import com.snapchat.android.api2.framework.HttpMethod;

public final class sv
  extends tg
  implements ui.b<tm>
{
  private static final String TAG = "RetrieveCashCustomerStatusTask";
  private sz mListener;
  
  public sv(@chc sz paramsz)
  {
    mListener = paramsz;
    registerCallback(tm.class, this);
  }
  
  protected final String a()
  {
    return "cash";
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
 * Qualified Name:     sv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */