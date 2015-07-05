import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.model.StoryCollection;
import com.squareup.otto.Bus;
import java.util.List;

public final class aor
  extends apf<StoryCollection>
{
  private final LayoutInflater a;
  private final auy b;
  private final Bus c;
  
  public aor(Context paramContext, List<StoryCollection> paramList, auy paramauy, Bus paramBus)
  {
    super(paramContext, 2130968693, paramList);
    a = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    b = paramauy;
    c = paramBus;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    StoryCollection localStoryCollection;
    Object localObject;
    label80:
    float f;
    if (paramView == null)
    {
      paramView = a.inflate(2130968693, paramViewGroup, false);
      paramViewGroup = new aot(paramView);
      paramView.setTag(paramViewGroup);
      localStoryCollection = (StoryCollection)getItem(paramInt);
      b.setText(localStoryCollection.h());
      localObject = b.a(localStoryCollection.m());
      if (localObject != null) {
        break label150;
      }
      a.setImageResource(2130838142);
      localObject = a;
      if (!localStoryCollection.n()) {
        break label162;
      }
      f = 1.0F;
      label97:
      ((ImageView)localObject).setAlpha(f);
      paramViewGroup = c;
      if (!localStoryCollection.o()) {
        break label169;
      }
    }
    label150:
    label162:
    label169:
    for (paramInt = 0;; paramInt = 8)
    {
      paramViewGroup.setVisibility(paramInt);
      paramView.setOnClickListener(new aon(localStoryCollection));
      return paramView;
      paramViewGroup = (aot)paramView.getTag();
      break;
      a.setImageBitmap((Bitmap)localObject);
      break label80;
      f = 0.5F;
      break label97;
    }
  }
}

/* Location:
 * Qualified Name:     aor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */