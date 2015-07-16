import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.ui.ChannelView;

final class afl$1
  implements View.OnClickListener
{
  afl$1(afl paramafl) {}
  
  public final void onClick(View paramView)
  {
    ChannelView localChannelView = (ChannelView)paramView;
    int i = -1;
    if (paramView.getTag(2131361793) != null) {
      i = ((Integer)paramView.getTag(2131361793)).intValue();
    }
    a.c.a(localChannelView, a.d, EditionOpenOrigin.DISCOVER, i);
  }
}

/* Location:
 * Qualified Name:     afl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */