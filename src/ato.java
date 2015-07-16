import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.snapchat.android.SnapchatApplication;

public final class ato
  extends atm
{
  public final CheckBox k;
  private final View l;
  
  public ato(View paramView)
  {
    super(null, paramView);
    k = ((CheckBox)paramView.findViewById(2131362622));
    l = paramView.findViewById(2131361920);
  }
  
  public final void a(Context paramContext)
  {
    super.q();
    a.setOnClickListener(null);
    b(-16777216);
    c(paramContext.getResources().getColor(2131230761));
    k.setOnCheckedChangeListener(null);
    k.setVisibility(8);
    k.setScaleX(1.0F);
    k.setScaleY(1.0F);
    v();
    w();
  }
  
  public final void c(int paramInt)
  {
    l.setBackgroundColor(paramInt);
  }
  
  public final void q()
  {
    a(SnapchatApplication.b());
  }
}

/* Location:
 * Qualified Name:     ato
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */