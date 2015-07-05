import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

final class anh$1
  implements CompoundButton.OnCheckedChangeListener
{
  anh$1(anh paramanh, ajc paramajc, CheckBox paramCheckBox, View paramView) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if ((paramBoolean) && (!(a instanceof aja)) && (!d.a.a(a.mStoryId))) {
      new aqa(anh.a(d), a, d.a, new aqa.a()
      {
        public final void a(boolean paramAnonymousBoolean)
        {
          b.setChecked(paramAnonymousBoolean);
        }
      }).show();
    }
    anh.b(d).a(a, paramBoolean);
    anh.a(d, c, a);
  }
}

/* Location:
 * Qualified Name:     anh.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */