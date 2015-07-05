import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class afo
  extends BaseAdapter
  implements AdapterView.OnItemClickListener
{
  public List<afo.b> a;
  private Context b;
  private LayoutInflater c;
  private afo.a d;
  
  public afo(Context paramContext, List<Bitmap> paramList, afo.a parama)
  {
    if (paramContext == null) {
      throw new NullPointerException();
    }
    if (paramList == null) {
      throw new NullPointerException();
    }
    if (paramList.size() != 9) {
      throw new IllegalArgumentException("Wrong number of images: " + paramList.size());
    }
    b = paramContext;
    c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    d = parama;
    a = new ArrayList(9);
    int i = 0;
    while (i < 9)
    {
      a.add(new afo.b((Bitmap)paramList.get(i)));
      i += 1;
    }
  }
  
  private void a(View paramView, afo.b paramb)
  {
    if (a)
    {
      paramView.setBackgroundColor(b.getResources().getColor(2131230727));
      return;
    }
    paramView.setBackgroundDrawable(null);
  }
  
  public int getCount()
  {
    return a.size();
  }
  
  public Object getItem(int paramInt)
  {
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = c.inflate(2130968598, paramViewGroup, false);
    }
    if (localView == null) {
      throw new NullPointerException("Failed to inflate captcha_item");
    }
    paramView = (afo.b)a.get(paramInt);
    ((ImageView)localView.findViewById(2131361968)).setImageBitmap(b);
    a(localView, paramView);
    return localView;
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = 0;
    paramAdapterView = (afo.b)a.get(paramInt);
    if (paramAdapterView == null) {
      return;
    }
    if (!a) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      a(paramView, paramAdapterView);
      if (d == null) {
        break;
      }
      paramAdapterView = d;
      paramView = a.iterator();
      paramInt = i;
      while (paramView.hasNext()) {
        if (nexta) {
          paramInt += 1;
        }
      }
    }
    paramAdapterView.a(paramInt);
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt);
  }
  
  public final class b
  {
    public boolean a;
    Bitmap b;
    
    b(Bitmap paramBitmap)
    {
      b = paramBitmap;
    }
  }
}

/* Location:
 * Qualified Name:     afo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */