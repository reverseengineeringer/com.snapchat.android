import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.model.Friend;

final class aff$9
  implements View.OnClickListener
{
  aff$9(aff paramaff, Friend paramFriend) {}
  
  public final void onClick(View paramView)
  {
    paramView = b.H.c();
    if ((paramView != null) && (!b.H.j))
    {
      ProfileEventAnalytics.a(b.H.a(), paramView.length(), b.H.b());
      b.H.j = true;
    }
    b.L.b(a);
    b.H.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     aff.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */