import android.os.Bundle;
import android.text.TextUtils;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.ui.ChannelView;
import com.snapchat.android.discover.ui.OpenChannelAnimationView.a;

public final class afh$a
  implements OpenChannelAnimationView.a
{
  private final Bundle b;
  
  afh$a(afh paramafh, Bundle paramBundle)
  {
    b = paramBundle;
  }
  
  public final void a(ChannelView paramChannelView)
  {
    paramChannelView = paramChannelView.getChannelPage();
    b.putParcelable(ChannelPage.a, paramChannelView);
    if (TextUtils.isEmpty(b.getString("edition_id"))) {
      b.putString("edition_id", e);
    }
    afh.a(a, b);
  }
}

/* Location:
 * Qualified Name:     afh.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */