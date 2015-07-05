package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import fl;

public class SharedProfileSnapcodeView
  extends FrameLayout
{
  private ViewGroup a;
  private ImageView b;
  private ImageView c;
  private TextView d;
  
  public SharedProfileSnapcodeView(Context paramContext)
  {
    super(paramContext);
  }
  
  public SharedProfileSnapcodeView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public Bitmap getBitmapFromView()
  {
    setDrawingCacheEnabled(true);
    measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    layout(0, 0, getMeasuredWidth(), getMeasuredHeight());
    buildDrawingCache();
    Bitmap localBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Drawable localDrawable = getBackground();
    if (localDrawable != null) {
      localDrawable.draw(localCanvas);
    }
    for (;;)
    {
      draw(localCanvas);
      return localBitmap;
      localCanvas.drawColor(-1);
    }
  }
  
  protected void onFinishInflate()
  {
    a = ((ViewGroup)findViewById(2131362682));
    c = ((ImageView)findViewById(2131362683));
    d = ((TextView)findViewById(2131362684));
  }
  
  public void setProfileImage(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
    {
      c.setImageDrawable(null);
      return;
    }
    c.setImageBitmap(paramBitmap);
  }
  
  public void setSnapcodeSvg(fl paramfl)
  {
    if (b == null)
    {
      b = new ImageView(getContext());
      b.setLayerType(1, null);
      int i = getResources().getDimensionPixelSize(2131296398);
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(i, i);
      localLayoutParams.addRule(13, -1);
      a.addView(b, localLayoutParams);
      b.setVisibility(0);
    }
    paramfl = paramfl.a();
    b.setImageDrawable(paramfl);
  }
  
  public void setUsername(String paramString)
  {
    d.setText(paramString);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SharedProfileSnapcodeView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */