import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;

public abstract class qc<T extends ScCashResponsePayload>
  extends tg
  implements ts.b<T>
{
  private static final String TAG = "BasicScCashRequestTask";
  private final qc.a mCallback;
  
  protected qc(@cgb qc.a parama)
  {
    mCallback = parama;
  }
  
  public static abstract interface a
  {
    public abstract void a(@cgb ScCashResponsePayload.Status paramStatus, int paramInt);
    
    public abstract void a(@cgb ScCashResponsePayload paramScCashResponsePayload);
  }
}

/* Location:
 * Qualified Name:     qc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */