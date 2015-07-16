import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.ui.ChannelView;
import java.util.Map;

final class adz$1
  implements View.OnClickListener
{
  adz$1(adz paramadz) {}
  
  public final void onClick(View paramView)
  {
    Object localObject = (ChannelView)paramView;
    int i = -1;
    if (paramView.getTag(2131361793) != null) {
      i = ((Integer)paramView.getTag(2131361793)).intValue();
    }
    if (!adz.b(a).a((ChannelView)localObject, adz.a(a), EditionOpenOrigin.STORIES, i))
    {
      String str = getChannelPageb;
      localObject = (aes)a.a.get(str);
      paramView = (View)localObject;
      if (localObject == null) {
        paramView = new aes();
      }
      a = true;
      a.a.put(str, paramView);
    }
  }
}

/* Location:
 * Qualified Name:     adz.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */