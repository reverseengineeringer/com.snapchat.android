import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.model.StoryCollection;
import java.util.List;

public final class apn
  extends aqb<StoryCollection>
{
  private final LayoutInflater a;
  private final avw b;
  
  public apn(Context paramContext, List<StoryCollection> paramList, avw paramavw)
  {
    this(paramContext, paramList, paramavw, (LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  private apn(Context paramContext, List<StoryCollection> paramList, avw paramavw, LayoutInflater paramLayoutInflater)
  {
    super(paramContext, 2130968694, paramList);
    a = paramLayoutInflater;
    b = paramavw;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    float f2 = 0.6F;
    int i = 0;
    float f1 = 1.0F;
    StoryCollection localStoryCollection = (StoryCollection)getItem(paramInt);
    Object localObject;
    if (getCount() == 1)
    {
      if ((paramView == null) || (!(paramView.getTag() instanceof apr)))
      {
        paramView = a.inflate(2130968707, paramViewGroup, false);
        paramViewGroup = new apr(localStoryCollection.l(), paramView);
        paramView.setTag(paramViewGroup);
        b.setText(localStoryCollection.u());
        localObject = b.a(localStoryCollection.p());
        if (localObject != null) {
          break label209;
        }
        a.setImageResource(2130838142);
        label113:
        boolean bool = localStoryCollection.h();
        localObject = a;
        if (!bool) {
          break label221;
        }
        f2 = 1.0F;
        label134:
        ((ImageView)localObject).setAlpha(f2);
        localObject = b;
        if (!bool) {
          break label228;
        }
        label152:
        ((TextView)localObject).setAlpha(f1);
        paramViewGroup = c;
        if (!localStoryCollection.i()) {
          break label235;
        }
      }
      label209:
      label221:
      label228:
      label235:
      for (i = 0;; i = 8)
      {
        paramViewGroup.setVisibility(i);
        paramView.setOnClickListener(new apj(localStoryCollection, paramInt));
        return paramView;
        paramViewGroup = (apr)paramView.getTag();
        break;
        a.setImageBitmap((Bitmap)localObject);
        break label113;
        f2 = 0.6F;
        break label134;
        f1 = 0.6F;
        break label152;
      }
    }
    if ((paramView == null) || (!(paramView.getTag() instanceof apq)) || ((paramView.getTag() instanceof apr)))
    {
      paramView = a.inflate(2130968694, paramViewGroup, false);
      paramViewGroup = new apq(localStoryCollection.l(), paramView);
      paramView.setTag(paramViewGroup);
      label297:
      b.setText(localStoryCollection.u());
      localObject = b.a(localStoryCollection.p());
      if (localObject != null) {
        break label415;
      }
      a.setImageResource(2130838142);
      label337:
      localObject = a;
      if (localStoryCollection.h()) {
        f2 = 1.0F;
      }
      ((ImageView)localObject).setAlpha(f2);
      localObject = c;
      if (!localStoryCollection.i()) {
        break label427;
      }
      label375:
      ((ProgressBar)localObject).setVisibility(i);
      paramViewGroup = b;
      if (!localStoryCollection.h()) {
        break label434;
      }
    }
    for (;;)
    {
      paramViewGroup.setAlpha(f1);
      break;
      paramViewGroup = (apq)paramView.getTag();
      break label297;
      label415:
      a.setImageBitmap((Bitmap)localObject);
      break label337;
      label427:
      i = 8;
      break label375;
      label434:
      f1 = 0.4F;
    }
  }
}

/* Location:
 * Qualified Name:     apn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */