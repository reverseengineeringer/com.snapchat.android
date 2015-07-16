import com.snapchat.android.ui.SwipeImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class atk$1
  implements Runnable
{
  atk$1(atk paramatk, SwipeImageView paramSwipeImageView, asv paramasv) {}
  
  public final void run()
  {
    atk localatk = c;
    SwipeImageView localSwipeImageView = a;
    asv localasv = b;
    Object localObject = a.c();
    ArrayList localArrayList = new ArrayList(((List)localObject).size());
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      ajr localajr = (ajr)((Iterator)localObject).next();
      if (mBitmap != null) {
        localArrayList.add(localajr);
      }
    }
    bhp.a(new atk.2(localatk, localSwipeImageView, localasv, localArrayList));
  }
}

/* Location:
 * Qualified Name:     atk.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */