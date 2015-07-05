import android.os.Looper;
import com.squareup.otto.Bus;

public abstract interface boi
{
  public static final boi a = new boi()
  {
    public final void a(Bus paramAnonymousBus) {}
  };
  public static final boi b = new boi()
  {
    public final void a(Bus paramAnonymousBus)
    {
      if (Looper.myLooper() != Looper.getMainLooper()) {
        throw new IllegalStateException("Event bus " + paramAnonymousBus + " accessed from non-main thread " + Looper.myLooper());
      }
    }
  };
  
  public abstract void a(Bus paramBus);
}

/* Location:
 * Qualified Name:     boi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */