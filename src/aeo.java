import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

public final class aeo
  implements EventListener
{
  private final aeo.a a;
  private int b;
  private int c = 0;
  
  public aeo(@chc aeo.a parama)
  {
    a = parama;
  }
  
  public final void processEvent(Event paramEvent)
  {
    if (!paramEvent.getType().equals("progress")) {}
    int i;
    do
    {
      return;
      i = paramEvent.getIntegerProperty("playheadPosition");
      if (b != i) {
        break;
      }
      c += 1;
    } while (c != 3);
    a.a();
    return;
    if (c >= 3) {
      a.b();
    }
    c = 0;
    b = i;
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     aeo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */