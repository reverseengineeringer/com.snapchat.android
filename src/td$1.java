import com.snapchat.android.fragments.cash.TransactionHistoryFragment;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import java.util.Arrays;
import java.util.List;

final class td$1
  implements rl.a
{
  td$1(td paramtd, String paramString) {}
  
  public final void a(@chc rl paramrl) {}
  
  public final void a(@chc rl paramrl, @chd List<rl> paramList, boolean paramBoolean)
  {
    paramrl = new TransactionHistoryFragment(val$title);
    bgr.a();
    paramrl.a(avz.a(Arrays.asList(new String[] { bgr.f(), "cash/history" }), "/"));
    bbo.a().a(new bev(paramrl));
  }
  
  public final void b(@chc rl paramrl) {}
  
  public final void b(@chc rl paramrl, @chd List<rl> paramList, boolean paramBoolean)
  {
    bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493195));
  }
}

/* Location:
 * Qualified Name:     td.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */