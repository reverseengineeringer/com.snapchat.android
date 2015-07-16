import android.text.TextUtils;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.ui.SnapView;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;

final class avn$b
  implements Runnable
{
  ajk iSnapProvider;
  aka iSnapToOpen;
  
  public avn$b(avn paramavn, aka paramaka, ajk paramajk)
  {
    iSnapToOpen = paramaka;
    iSnapProvider = paramajk;
  }
  
  public final void run()
  {
    this$0.mMediaViewAnalytics.c("view_media", "feed");
    aka localaka = iSnapToOpen;
    Iterator localIterator1 = akx.c().f().iterator();
    while (localIterator1.hasNext())
    {
      ChatConversation localChatConversation = (ChatConversation)localIterator1.next();
      synchronized (localChatConversation.o())
      {
        Iterator localIterator2 = ???.iterator();
        while (localIterator2.hasNext())
        {
          Object localObject2 = (ChatFeedItem)localIterator2.next();
          if ((localObject2 instanceof aka))
          {
            localObject2 = (aka)localObject2;
            if ((!TextUtils.equals(((aka)localObject2).j(), localaka.j())) && (((aka)localObject2).an()) && (((aka)localObject2).A())) {
              ((aka)localObject2).a(localChatConversation);
            }
          }
        }
      }
    }
    bbo.a().a(new bem(true));
    this$0.mSnapView.a(iSnapToOpen, iSnapProvider);
  }
}

/* Location:
 * Qualified Name:     avn.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */