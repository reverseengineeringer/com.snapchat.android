import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.snapchat.android.discover.ui.media.VideoProperties;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public final class aer
  implements EventListener
{
  final List<VideoProperties> a = new ArrayList();
  public long b;
  private final boolean[] c = new boolean[100];
  private boolean d;
  private int e;
  private int f;
  
  public aer()
  {
    b();
  }
  
  private void c()
  {
    e = 0;
    Arrays.fill(c, false);
  }
  
  public final long a()
  {
    if ((a.isEmpty()) || (f >= a.size())) {
      return 0L;
    }
    Object localObject = (VideoProperties)a.get(f);
    int m = c.intValue();
    int n = d.intValue();
    localObject = c;
    if (m < 0) {
      return 0L;
    }
    int i1 = localObject.length;
    int i = 0;
    int j = 0;
    if (i < i1)
    {
      if (localObject[i] != 0) {}
      for (int k = 1;; k = 0)
      {
        j += k;
        i += 1;
        break;
      }
    }
    return (j / 100.0D * (m / 8) * (n / 1000));
  }
  
  public final void b()
  {
    c();
    d = false;
    b = 0L;
    f = 0;
    a.clear();
  }
  
  public final void processEvent(Event paramEvent)
  {
    String str = paramEvent.getType();
    int i = -1;
    switch (str.hashCode())
    {
    default: 
      switch (i)
      {
      }
      break;
    }
    do
    {
      int j;
      do
      {
        do
        {
          return;
          if (!str.equals("completed")) {
            break;
          }
          i = 0;
          break;
          if (!str.equals("bufferedUpdate")) {
            break;
          }
          i = 1;
          break;
          if (!str.equals("seekTo")) {
            break;
          }
          i = 2;
          break;
          if (!str.equals("didSeekTo")) {
            break;
          }
          i = 3;
          break;
          if (!str.equals("willChangeVideo")) {
            break;
          }
          i = 4;
          break;
          b += a();
          c();
          return;
        } while (d);
        j = paramEvent.getIntegerProperty("percentComplete");
      } while (j < e);
      i = e;
      while (i < j)
      {
        c[i] = true;
        i += 1;
      }
      e = j;
      return;
      d = true;
      return;
      d = false;
      i = a.get(f)).d.intValue();
      e = ((int)(paramEvent.getIntegerProperty("seekPosition") * 100.0D / i));
      return;
    } while (properties.get("currentVideo") == null);
    f += 1;
  }
}

/* Location:
 * Qualified Name:     aer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */