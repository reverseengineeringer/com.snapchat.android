import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.Friend;
import com.squareup.otto.Bus;

final class aff$12
  implements View.OnClickListener
{
  aff$12(aff paramaff, Friend paramFriend) {}
  
  public final void onClick(View paramView)
  {
    b.M.a(new bcr(1));
    b.M.a(new bcz(a.h(), 11, false));
    ScAnalyticsEventEngine.a(new jo());
  }
}

/* Location:
 * Qualified Name:     aff.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */