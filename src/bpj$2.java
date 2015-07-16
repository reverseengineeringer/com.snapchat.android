import android.os.Looper;
import com.squareup.otto.Bus;

final class bpj$2
  implements bpj
{
  public final void a(Bus paramBus)
  {
    if (Looper.myLooper() != Looper.getMainLooper()) {
      throw new IllegalStateException("Event bus " + paramBus + " accessed from non-main thread " + Looper.myLooper());
    }
  }
}

/* Location:
 * Qualified Name:     bpj.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */