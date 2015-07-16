import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

final class aoe$1
  implements CompoundButton.OnCheckedChangeListener
{
  aoe$1(aoe paramaoe, ajy paramajy, CheckBox paramCheckBox, View paramView) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if ((paramBoolean) && (!(a instanceof ajw)) && (!d.a.a(a.mStoryId))) {
      new aqz(aoe.a(d), a, d.a, new aqz.a()
      {
        public final void a(boolean paramAnonymousBoolean)
        {
          b.setChecked(paramAnonymousBoolean);
        }
      }).show();
    }
    aoe.b(d).a(a, paramBoolean);
    aoe.a(d, c, a);
  }
}

/* Location:
 * Qualified Name:     aoe.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */