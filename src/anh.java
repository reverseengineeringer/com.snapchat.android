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

public final class anh
  extends apf<ajc>
{
  @Inject
  protected zs a;
  private Context b;
  private LayoutInflater c;
  private anh.a d;
  
  public anh(Context paramContext, List<ajc> paramList, anh.a parama)
  {
    super(paramContext, 2130968710, paramList);
    SnapchatApplication.b().c().a(this);
    c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    b = paramContext;
    d = parama;
  }
  
  private void a(View paramView, ajc paramajc)
  {
    if (!(paramajc instanceof aja))
    {
      paramView.setBackgroundColor(getContext().getResources().getColor(2131230800));
      return;
    }
    if (d.a(paramajc))
    {
      paramView.setBackgroundColor(getContext().getResources().getColor(2131230799));
      return;
    }
    paramView.setBackgroundDrawable(null);
  }
  
  public final View getView(int paramInt, final View paramView, final ViewGroup paramViewGroup)
  {
    int i = 0;
    final View localView = paramView;
    if (paramView == null) {
      localView = c.inflate(2130968710, paramViewGroup, false);
    }
    paramView = (ajc)getItem(paramInt);
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
          if ((paramAnonymousBoolean) && (!(paramView instanceof aja)) && (!a.a(paramViewmStoryId))) {
            new aqa(anh.a(anh.this), paramView, a, new aqa.a()
            {
              public final void a(boolean paramAnonymous2Boolean)
              {
                b.setChecked(paramAnonymous2Boolean);
              }
            }).show();
          }
          anh.b(anh.this).a(paramView, paramAnonymousBoolean);
          anh.a(anh.this, localView, paramView);
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
    public abstract void a(ajc paramajc, boolean paramBoolean);
    
    public abstract boolean a(ajc paramajc);
  }
}

/* Location:
 * Qualified Name:     anh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */