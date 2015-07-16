import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;

public abstract class qs<T extends ScCashResponsePayload>
  extends tw
  implements ui.b<T>
{
  private static final String TAG = "BasicScCashRequestTask";
  private final qs.a mCallback;
  
  protected qs(@chc qs.a parama)
  {
    mCallback = parama;
  }
  
  public static abstract interface a
  {
    public abstract void a(@chc ScCashResponsePayload.Status paramStatus, int paramInt);
    
    public abstract void a(@chc ScCashResponsePayload paramScCashResponsePayload);
  }
}

/* Location:
 * Qualified Name:     qs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */