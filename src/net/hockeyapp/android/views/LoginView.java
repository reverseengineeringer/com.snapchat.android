package net.hockeyapp.android.views;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Build.VERSION;
import android.text.method.PasswordTransformationMethod;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import bwj;

public class LoginView
  extends LinearLayout
{
  private LinearLayout a;
  
  public LoginView(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private LoginView(Context paramContext, byte paramByte)
  {
    super(paramContext);
    Object localObject = new LinearLayout.LayoutParams(-1, -2);
    setBackgroundColor(-1);
    setLayoutParams((ViewGroup.LayoutParams)localObject);
    a = new LinearLayout(paramContext);
    a.setId(12289);
    localObject = new LinearLayout.LayoutParams(-1, -1);
    paramByte = (int)TypedValue.applyDimension(1, 20.0F, getResources().getDisplayMetrics());
    gravity = 49;
    a.setLayoutParams((ViewGroup.LayoutParams)localObject);
    a.setPadding(paramByte, paramByte, paramByte, paramByte);
    a.setOrientation(1);
    addView(a);
    localObject = new TextView(paramContext);
    ((TextView)localObject).setId(12290);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.setMargins(0, 0, 0, (int)TypedValue.applyDimension(1, 30.0F, getResources().getDisplayMetrics()));
    ((TextView)localObject).setLayoutParams(localLayoutParams);
    ((TextView)localObject).setText(bwj.a(1280));
    ((TextView)localObject).setTextColor(-7829368);
    ((TextView)localObject).setTextSize(2, 18.0F);
    ((TextView)localObject).setTypeface(null, 0);
    a.addView((View)localObject);
    localObject = new EditText(paramContext);
    ((EditText)localObject).setId(12291);
    localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.setMargins(0, 0, 0, (int)TypedValue.applyDimension(1, 30.0F, getResources().getDisplayMetrics()));
    ((EditText)localObject).setLayoutParams(localLayoutParams);
    ((EditText)localObject).setHint(bwj.a(1282));
    ((EditText)localObject).setImeOptions(5);
    ((EditText)localObject).setInputType(33);
    ((EditText)localObject).setTextColor(-7829368);
    ((EditText)localObject).setTextSize(2, 15.0F);
    ((EditText)localObject).setTypeface(null, 0);
    ((EditText)localObject).setHintTextColor(-3355444);
    a(paramContext, (EditText)localObject);
    a.addView((View)localObject);
    localObject = new EditText(paramContext);
    ((EditText)localObject).setId(12292);
    localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.setMargins(0, 0, 0, (int)TypedValue.applyDimension(1, 30.0F, getResources().getDisplayMetrics()));
    ((EditText)localObject).setLayoutParams(localLayoutParams);
    ((EditText)localObject).setHint(bwj.a(1283));
    ((EditText)localObject).setImeOptions(5);
    ((EditText)localObject).setInputType(128);
    ((EditText)localObject).setTransformationMethod(PasswordTransformationMethod.getInstance());
    ((EditText)localObject).setTextColor(-7829368);
    ((EditText)localObject).setTextSize(2, 15.0F);
    ((EditText)localObject).setTypeface(null, 0);
    ((EditText)localObject).setHintTextColor(-3355444);
    a(paramContext, (EditText)localObject);
    a.addView((View)localObject);
    paramContext = new Button(paramContext);
    paramContext.setId(12293);
    localObject = new LinearLayout.LayoutParams(-1, -2);
    ((LinearLayout.LayoutParams)localObject).setMargins(0, 0, 0, (int)TypedValue.applyDimension(1, 30.0F, getResources().getDisplayMetrics()));
    paramContext.setLayoutParams((ViewGroup.LayoutParams)localObject);
    paramContext.setBackgroundDrawable(getButtonSelector());
    paramContext.setText(bwj.a(1284));
    paramContext.setTextColor(-1);
    paramContext.setTextSize(2, 15.0F);
    a.addView(paramContext);
  }
  
  private static void a(Context paramContext, EditText paramEditText)
  {
    if (Build.VERSION.SDK_INT < 11)
    {
      int i = (int)(getResourcesgetDisplayMetricsdensity * 10.0F);
      ShapeDrawable localShapeDrawable = new ShapeDrawable(new RectShape());
      Paint localPaint = localShapeDrawable.getPaint();
      localPaint.setColor(-1);
      localPaint.setStyle(Paint.Style.FILL_AND_STROKE);
      localPaint.setStrokeWidth(1.0F);
      localShapeDrawable.setPadding(i, i, i, i);
      i = (int)(getResourcesgetDisplayMetricsdensity * 1.5D);
      paramContext = new ShapeDrawable(new RectShape());
      localPaint = paramContext.getPaint();
      localPaint.setColor(-12303292);
      localPaint.setStyle(Paint.Style.FILL_AND_STROKE);
      localPaint.setStrokeWidth(1.0F);
      paramContext.setPadding(0, 0, 0, i);
      paramEditText.setBackgroundDrawable(new LayerDrawable(new Drawable[] { paramContext, localShapeDrawable }));
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
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.views.LoginView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */