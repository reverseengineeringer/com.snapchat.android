import android.text.TextUtils;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.ui.SnapView;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;

final class aup$b
  implements Runnable
{
  aio iSnapProvider;
  aje iSnapToOpen;
  
  public aup$b(aup paramaup, aje paramaje, aio paramaio)
  {
    iSnapToOpen = paramaje;
    iSnapProvider = paramaio;
  }
  
  public final void run()
  {
    this$0.mMediaViewAnalytics.c("view_media", "feed");
    if (iSnapToOpen.z()) {
      return;
    }
    aje localaje = iSnapToOpen;
    Iterator localIterator1 = akc.b().e().iterator();
    while (localIterator1.hasNext()) {
      synchronized (((ChatConversation)localIterator1.next()).o())
      {
        Iterator localIterator2 = ???.iterator();
        while (localIterator2.hasNext())
        {
          Object localObject2 = (ChatFeedItem)localIterator2.next();
          if ((localObject2 instanceof aje))
          {
            localObject2 = (aje)localObject2;
            if ((!TextUtils.equals(((aje)localObject2).j(), localaje.j())) && (((aje)localObject2).ap()) && (((aje)localObject2).z())) {
              ((aje)localObject2).o();
            }
          }
        }
      }
    }
    ban.a().a(new bdm(true));
    this$0.mSnapView.a(iSnapToOpen, iSnapProvider);
  }
}

/* Location:
 * Qualified Name:     aup.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */