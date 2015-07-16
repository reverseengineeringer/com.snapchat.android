import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.snapchat.android.model.Friend;

final class ahk$1
  implements CompoundButton.OnCheckedChangeListener
{
  ahk$1(ahk paramahk, Friend paramFriend) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ahk.a(b).b(a);
      return;
    }
    ahk.a(b).c(a);
  }
}

/* Location:
 * Qualified Name:     ahk.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */