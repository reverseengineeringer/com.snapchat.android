import android.os.Bundle;
import android.text.TextUtils;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.ui.ChannelView;
import com.snapchat.android.discover.ui.OpenChannelAnimationView.a;

public final class aeh$a
  implements OpenChannelAnimationView.a
{
  private final Bundle b;
  
  aeh$a(aeh paramaeh, Bundle paramBundle)
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
    aeh.a(a, b);
  }
}

/* Location:
 * Qualified Name:     aeh.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */