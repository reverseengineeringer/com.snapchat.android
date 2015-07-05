import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.ui.ChannelView;
import java.util.Map;

final class acz$1
  implements View.OnClickListener
{
  acz$1(acz paramacz) {}
  
  public final void onClick(View paramView)
  {
    paramView = (ChannelView)paramView;
    if (!acz.b(a).a(paramView, acz.a(a), EditionOpenOrigin.STORIES))
    {
      String str = getChannelPageb;
      ads localads = (ads)a.a.get(str);
      paramView = localads;
      if (localads == null) {
        paramView = new ads();
      }
      a = true;
      a.a.put(str, paramView);
    }
  }
}

/* Location:
 * Qualified Name:     acz.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */