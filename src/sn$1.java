import com.snapchat.android.fragments.cash.TransactionHistoryFragment;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import java.util.Arrays;
import java.util.List;

final class sn$1
  implements qv.a
{
  sn$1(sn paramsn, String paramString) {}
  
  public final void a(@cgb qv paramqv) {}
  
  public final void a(@cgb qv paramqv, @cgc List<qv> paramList, boolean paramBoolean)
  {
    paramqv = new TransactionHistoryFragment(val$title);
    bfr.a();
    paramqv.a(avb.a(Arrays.asList(new String[] { bfr.f(), "cash/history" }), "/"));
    ban.a().a(new bdw(paramqv));
  }
  
  public final void b(@cgb qv paramqv) {}
  
  public final void b(@cgb qv paramqv, @cgc List<qv> paramList, boolean paramBoolean)
  {
    ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493195));
  }
}

/* Location:
 * Qualified Name:     sn.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */