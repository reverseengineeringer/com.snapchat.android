import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import java.util.List;
import javax.inject.Inject;

public final class aoe
  extends aqb<ajy>
{
  @Inject
  protected aas a;
  private Context b;
  private LayoutInflater c;
  private aoe.a d;
  
  public aoe(Context paramContext, List<ajy> paramList, aoe.a parama)
  {
    super(paramContext, 2130968712, paramList);
    SnapchatApplication.b().c().a(this);
    c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    b = paramContext;
    d = parama;
  }
  
  private void a(View paramView, ajy paramajy)
  {
    if (!(paramajy instanceof ajw))
    {
      paramView.setBackgroundColor(getContext().getResources().getColor(2131230801));
      return;
    }
    if (d.a(paramajy))
    {
      paramView.setBackgroundColor(getContext().getResources().getColor(2131230800));
      return;
    }
    paramView.setBackgroundDrawable(null);
  }
  
  public final View getView(int paramInt, final View paramView, final ViewGroup paramViewGroup)
  {
    int i = 0;
    final View localView = paramView;
    if (paramView == null) {
      localView = c.inflate(2130968712, paramViewGroup, false);
    }
    paramView = (ajy)getItem(paramInt);
    if (paramView != null)
    {
      paramViewGroup = (TextView)localView.findViewById(2131362129);
      paramViewGroup.setText(mDisplayName);
      paramInt = i;
      if (d.a(paramView)) {
        paramInt = 1;
      }
      paramViewGroup.setTypeface(null, paramInt);
      paramViewGroup = (CheckBox)localView.findViewById(2131362196);
      paramViewGroup.setOnCheckedChangeListener(null);
      paramViewGroup.setChecked(d.a(paramView));
      paramViewGroup.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          if ((paramAnonymousBoolean) && (!(paramView instanceof ajw)) && (!a.a(paramViewmStoryId))) {
            new aqz(aoe.a(aoe.this), paramView, a, new aqz.a()
            {
              public final void a(boolean paramAnonymous2Boolean)
              {
                b.setChecked(paramAnonymous2Boolean);
              }
            }).show();
          }
          aoe.b(aoe.this).a(paramView, paramAnonymousBoolean);
          aoe.a(aoe.this, localView, paramView);
        }
      });
      localView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = paramViewGroup;
          if (!paramViewGroup.isChecked()) {}
          for (boolean bool = true;; bool = false)
          {
            paramAnonymousView.setChecked(bool);
            return;
          }
        }
      });
      a(localView, paramView);
    }
    return localView;
  }
  
  public static abstract interface a
  {
    public abstract void a(ajy paramajy, boolean paramBoolean);
    
    public abstract boolean a(ajy paramajy);
  }
}

/* Location:
 * Qualified Name:     aoe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */