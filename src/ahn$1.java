import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.AlertDialogUtils.YesNoOption;
import com.snapchat.android.util.AlertDialogUtils.a;

final class ahn$1
  implements View.OnClickListener
{
  ahn$1(ahn paramahn, ahn.b paramb, String paramString) {}
  
  public final void onClick(View paramView)
  {
    AlertDialogUtils.a(ahn.a(c), ahn.b(c), ahn.c(c), new AlertDialogUtils.a()
    {
      public final void a(AlertDialogUtils.YesNoOption paramAnonymousYesNoOption)
      {
        if (paramAnonymousYesNoOption == AlertDialogUtils.YesNoOption.YES)
        {
          a.c.setVisibility(8);
          a.d.setVisibility(0);
          ahn.d(c).a(b);
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     ahn.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */