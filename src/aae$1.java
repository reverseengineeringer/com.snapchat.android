import android.os.SystemClock;
import java.util.Set;

final class aae$1
  extends aaf
{
  aae$1(aae paramaae, akl paramakl)
  {
    super(paramakl);
  }
  
  protected final void a(akl paramakl)
  {
    aae localaae = a;
    bhp.a();
    e.remove(paramakl);
    if (e.size() == 0)
    {
      long l = SystemClock.elapsedRealtime() - f;
      g.a(localaae, h, l);
      return;
    }
    e.size();
  }
}

/* Location:
 * Qualified Name:     aae.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */