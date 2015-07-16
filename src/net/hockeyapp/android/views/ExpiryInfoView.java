package net.hockeyapp.android.views;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import bxo;

public class ExpiryInfoView
  extends RelativeLayout
{
  public ExpiryInfoView(Context paramContext)
  {
    this(paramContext, "");
  }
  
  public ExpiryInfoView(Context paramContext, String paramString)
  {
    super(paramContext);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    setBackgroundColor(-1);
    setLayoutParams(localLayoutParams);
    localLayoutParams = new RelativeLayout.LayoutParams(-1, (int)TypedValue.applyDimension(1, 3.0F, getResources().getDisplayMetrics()));
    localLayoutParams.addRule(10, -1);
    ImageView localImageView = new ImageView(paramContext);
    localImageView.setLayoutParams(localLayoutParams);
    localImageView.setBackgroundDrawable(bxo.a());
    addView(localImageView);
    int i = (int)TypedValue.applyDimension(1, 20.0F, getResources().getDisplayMetrics());
    localLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
    localLayoutParams.addRule(13, -1);
    localLayoutParams.setMargins(i, i, i, i);
    paramContext = new TextView(paramContext);
    paramContext.setGravity(17);
    paramContext.setLayoutParams(localLayoutParams);
    paramContext.setText(paramString);
    paramContext.setTextColor(-16777216);
    addView(paramContext);
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.views.ExpiryInfoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */