package net.hockeyapp.android.views;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import bxo;

public class UpdateView
  extends RelativeLayout
{
  protected RelativeLayout a = null;
  protected boolean b = false;
  protected boolean c = false;
  
  public UpdateView(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private UpdateView(Context paramContext, byte paramByte)
  {
    this(paramContext, true, false);
  }
  
  public UpdateView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, true, false);
  }
  
  public UpdateView(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext);
    Object localObject1;
    label129:
    Object localObject2;
    Object localObject3;
    int i;
    if (paramBoolean1)
    {
      setLayoutHorizontally(paramContext);
      c = paramBoolean2;
      localObject1 = new RelativeLayout.LayoutParams(-1, -2);
      setBackgroundColor(-1);
      setLayoutParams((ViewGroup.LayoutParams)localObject1);
      a = new RelativeLayout(paramContext);
      a.setId(4097);
      if (!b) {
        break label827;
      }
      localObject1 = new RelativeLayout.LayoutParams((int)TypedValue.applyDimension(1, 250.0F, getResources().getDisplayMetrics()), -1);
      ((RelativeLayout.LayoutParams)localObject1).addRule(9, -1);
      a.setPadding(0, 0, 0, 0);
      a.setLayoutParams((ViewGroup.LayoutParams)localObject1);
      a.setBackgroundColor(Color.rgb(230, 236, 239));
      localObject1 = a;
      localObject2 = new TextView(paramContext);
      ((TextView)localObject2).setId(4098);
      localObject3 = new RelativeLayout.LayoutParams(-2, -2);
      i = (int)TypedValue.applyDimension(1, 20.0F, getResources().getDisplayMetrics());
      ((RelativeLayout.LayoutParams)localObject3).setMargins(i, i, i, 0);
      ((TextView)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
      ((TextView)localObject2).setEllipsize(TextUtils.TruncateAt.END);
      ((TextView)localObject2).setShadowLayer(1.0F, 0.0F, 1.0F, -1);
      ((TextView)localObject2).setSingleLine(true);
      ((TextView)localObject2).setTextColor(-16777216);
      ((TextView)localObject2).setTextSize(2, 20.0F);
      ((TextView)localObject2).setTypeface(null, 1);
      ((RelativeLayout)localObject1).addView((View)localObject2);
      localObject1 = a;
      localObject2 = new TextView(paramContext);
      ((TextView)localObject2).setId(4099);
      localObject3 = new RelativeLayout.LayoutParams(-2, -2);
      i = (int)TypedValue.applyDimension(1, 20.0F, getResources().getDisplayMetrics());
      ((RelativeLayout.LayoutParams)localObject3).setMargins(i, (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics()), i, 0);
      ((RelativeLayout.LayoutParams)localObject3).addRule(3, 4098);
      ((TextView)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
      ((TextView)localObject2).setEllipsize(TextUtils.TruncateAt.END);
      ((TextView)localObject2).setShadowLayer(1.0F, 0.0F, 1.0F, -1);
      ((TextView)localObject2).setLines(2);
      ((TextView)localObject2).setLineSpacing(0.0F, 1.1F);
      ((TextView)localObject2).setTextColor(-16777216);
      ((TextView)localObject2).setTextSize(2, 16.0F);
      ((TextView)localObject2).setTypeface(null, 1);
      ((RelativeLayout)localObject1).addView((View)localObject2);
      localObject1 = a;
      localObject2 = new Button(paramContext);
      ((Button)localObject2).setId(4100);
      i = (int)TypedValue.applyDimension(1, 20.0F, getResources().getDisplayMetrics());
      localObject3 = new RelativeLayout.LayoutParams((int)TypedValue.applyDimension(1, 120.0F, getResources().getDisplayMetrics()), -2);
      ((RelativeLayout.LayoutParams)localObject3).setMargins(i, i, i, i);
      ((RelativeLayout.LayoutParams)localObject3).addRule(9, -1);
      ((RelativeLayout.LayoutParams)localObject3).addRule(3, 4099);
      ((Button)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
      ((Button)localObject2).setBackgroundDrawable(getButtonSelector());
      ((Button)localObject2).setText("Update");
      ((Button)localObject2).setTextColor(-1);
      ((Button)localObject2).setTextSize(2, 16.0F);
      ((RelativeLayout)localObject1).addView((View)localObject2);
      addView(a);
      localObject1 = new WebView(paramContext);
      ((WebView)localObject1).setId(4101);
      i = (int)TypedValue.applyDimension(1, 400.0F, paramContext.getResources().getDisplayMetrics());
      if (!c) {
        break label866;
      }
      label622:
      localObject2 = new RelativeLayout.LayoutParams(-1, i);
      if (!b) {
        break label872;
      }
      ((RelativeLayout.LayoutParams)localObject2).addRule(1, 4097);
      label650:
      ((RelativeLayout.LayoutParams)localObject2).setMargins(0, 0, 0, 0);
      ((WebView)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
      ((WebView)localObject1).setBackgroundColor(-1);
      addView((View)localObject1);
      localObject2 = a;
      i = (int)TypedValue.applyDimension(1, 3.0F, getResources().getDisplayMetrics());
      localObject3 = new ImageView(paramContext);
      if (!b) {
        break label884;
      }
      localObject1 = new RelativeLayout.LayoutParams(1, -1);
      ((RelativeLayout.LayoutParams)localObject1).addRule(11, -1);
      ((ImageView)localObject3).setBackgroundDrawable(new ColorDrawable(-16777216));
      label750:
      ((ImageView)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject1);
      ((RelativeLayout)localObject2).addView((View)localObject3);
      paramContext = new ImageView(paramContext);
      localObject1 = new RelativeLayout.LayoutParams(-1, i);
      if (!b) {
        break label915;
      }
      ((RelativeLayout.LayoutParams)localObject1).addRule(10, -1);
    }
    for (;;)
    {
      paramContext.setLayoutParams((ViewGroup.LayoutParams)localObject1);
      paramContext.setBackgroundDrawable(bxo.a());
      addView(paramContext);
      return;
      b = false;
      break;
      label827:
      localObject1 = new RelativeLayout.LayoutParams(-1, -2);
      a.setPadding(0, 0, 0, (int)TypedValue.applyDimension(1, 20.0F, getResources().getDisplayMetrics()));
      break label129;
      label866:
      i = -1;
      break label622;
      label872:
      ((RelativeLayout.LayoutParams)localObject2).addRule(3, 4097);
      break label650;
      label884:
      localObject1 = new RelativeLayout.LayoutParams(-1, i);
      ((RelativeLayout.LayoutParams)localObject1).addRule(10, -1);
      ((ImageView)localObject3).setBackgroundDrawable(bxo.a());
      break label750;
      label915:
      ((RelativeLayout.LayoutParams)localObject1).addRule(3, 4097);
    }
  }
  
  private Drawable getButtonSelector()
  {
    StateListDrawable localStateListDrawable = new StateListDrawable();
    ColorDrawable localColorDrawable = new ColorDrawable(-16777216);
    localStateListDrawable.addState(new int[] { -16842919 }, localColorDrawable);
    localColorDrawable = new ColorDrawable(-12303292);
    localStateListDrawable.addState(new int[] { -16842919, 16842908 }, localColorDrawable);
    localColorDrawable = new ColorDrawable(-7829368);
    localStateListDrawable.addState(new int[] { 16842919 }, localColorDrawable);
    return localStateListDrawable;
  }
  
  private void setLayoutHorizontally(Context paramContext)
  {
    if (getResourcesgetConfigurationorientation == 2)
    {
      b = true;
      return;
    }
    b = false;
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.views.UpdateView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */