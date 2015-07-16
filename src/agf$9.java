import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.model.Friend;

final class agf$9
  implements View.OnClickListener
{
  agf$9(agf paramagf, Friend paramFriend) {}
  
  public final void onClick(View paramView)
  {
    paramView = b.H.d();
    if ((paramView != null) && (!b.H.k))
    {
      b.a(b.H.b(), paramView.length(), b.H.c());
      b.H.k = true;
    }
    b.L.b(a);
    if (b.L.a(a))
    {
      paramView = b.H;
      if (!b.H.e()) {
        break label143;
      }
      m += 1;
    }
    for (;;)
    {
      b.H.notifyDataSetChanged();
      return;
      label143:
      l += 1;
    }
  }
}

/* Location:
 * Qualified Name:     agf.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */