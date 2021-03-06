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
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import bwj;

public class FeedbackView
  extends LinearLayout
{
  private LinearLayout a;
  private ScrollView b;
  private LinearLayout c;
  private LinearLayout d;
  private LinearLayout e;
  private ViewGroup f;
  private ListView g;
  
  public FeedbackView(Context paramContext)
  {
    super(paramContext);
    Object localObject = new LinearLayout.LayoutParams(-1, -2);
    setBackgroundColor(-1);
    setLayoutParams((ViewGroup.LayoutParams)localObject);
    a = new LinearLayout(paramContext);
    a.setId(131090);
    localObject = new LinearLayout.LayoutParams(-1, -1);
    gravity = 49;
    a.setLayoutParams((ViewGroup.LayoutParams)localObject);
    a.setPadding(0, 0, 0, 0);
    a.setOrientation(1);
    addView(a);
    b = new ScrollView(paramContext);
    b.setId(131095);
    localObject = new LinearLayout.LayoutParams(-1, -1);
    int i = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    gravity = 17;
    b.setLayoutParams((ViewGroup.LayoutParams)localObject);
    b.setPadding(i, 0, i, 0);
    a.addView(b);
    c = new LinearLayout(paramContext);
    c.setId(131091);
    localObject = new LinearLayout.LayoutParams(-1, -1);
    i = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    gravity = 3;
    c.setLayoutParams((ViewGroup.LayoutParams)localObject);
    c.setPadding(i, i, i, i);
    c.setGravity(48);
    c.setOrientation(1);
    b.addView(c);
    d = new LinearLayout(paramContext);
    d.setId(131093);
    localObject = new LinearLayout.LayoutParams(-1, -1);
    i = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    gravity = 17;
    d.setLayoutParams((ViewGroup.LayoutParams)localObject);
    d.setPadding(i, i, i, 0);
    d.setGravity(48);
    d.setOrientation(1);
    a.addView(d);
    localObject = new EditText(paramContext);
    ((EditText)localObject).setId(8194);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    i = (int)TypedValue.applyDimension(1, 20.0F, getResources().getDisplayMetrics());
    localLayoutParams.setMargins(0, i / 2, 0, i);
    ((EditText)localObject).setLayoutParams(localLayoutParams);
    ((EditText)localObject).setImeOptions(5);
    ((EditText)localObject).setInputType(16385);
    ((EditText)localObject).setSingleLine(true);
    ((EditText)localObject).setTextColor(-7829368);
    ((EditText)localObject).setTextSize(2, 15.0F);
    ((EditText)localObject).setTypeface(null, 0);
    ((EditText)localObject).setHint(bwj.a(1026));
    ((EditText)localObject).setHintTextColor(-3355444);
    a(paramContext, (EditText)localObject);
    c.addView((View)localObject);
    localObject = new EditText(paramContext);
    ((EditText)localObject).setId(8196);
    localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.setMargins(0, 0, 0, (int)TypedValue.applyDimension(1, 20.0F, getResources().getDisplayMetrics()));
    ((EditText)localObject).setLayoutParams(localLayoutParams);
    ((EditText)localObject).setImeOptions(5);
    ((EditText)localObject).setInputType(33);
    ((EditText)localObject).setSingleLine(true);
    ((EditText)localObject).setTextColor(-7829368);
    ((EditText)localObject).setTextSize(2, 15.0F);
    ((EditText)localObject).setTypeface(null, 0);
    ((EditText)localObject).setHint(bwj.a(1027));
    ((EditText)localObject).setHintTextColor(-3355444);
    a(paramContext, (EditText)localObject);
    c.addView((View)localObject);
    localObject = new EditText(paramContext);
    ((EditText)localObject).setId(8198);
    localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.setMargins(0, 0, 0, (int)TypedValue.applyDimension(1, 20.0F, getResources().getDisplayMetrics()));
    ((EditText)localObject).setLayoutParams(localLayoutParams);
    ((EditText)localObject).setImeOptions(5);
    ((EditText)localObject).setInputType(16433);
    ((EditText)localObject).setSingleLine(true);
    ((EditText)localObject).setTextColor(-7829368);
    ((EditText)localObject).setTextSize(2, 15.0F);
    ((EditText)localObject).setTypeface(null, 0);
    ((EditText)localObject).setHint(bwj.a(1028));
    ((EditText)localObject).setHintTextColor(-3355444);
    a(paramContext, (EditText)localObject);
    c.addView((View)localObject);
    localObject = new EditText(paramContext);
    ((EditText)localObject).setId(8200);
    localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    i = (int)TypedValue.applyDimension(1, 20.0F, getResources().getDisplayMetrics());
    int j = (int)TypedValue.applyDimension(1, 100.0F, getResources().getDisplayMetrics());
    localLayoutParams.setMargins(0, 0, 0, i);
    ((EditText)localObject).setLayoutParams(localLayoutParams);
    ((EditText)localObject).setImeOptions(5);
    ((EditText)localObject).setInputType(16385);
    ((EditText)localObject).setSingleLine(false);
    ((EditText)localObject).setTextColor(-7829368);
    ((EditText)localObject).setTextSize(2, 15.0F);
    ((EditText)localObject).setTypeface(null, 0);
    ((EditText)localObject).setMinimumHeight(j);
    ((EditText)localObject).setHint(bwj.a(1029));
    ((EditText)localObject).setHintTextColor(-3355444);
    a(paramContext, (EditText)localObject);
    c.addView((View)localObject);
    f = new AttachmentListView(paramContext);
    f.setId(8209);
    localObject = new LinearLayout.LayoutParams(-1, -1);
    i = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    gravity = 3;
    f.setLayoutParams((ViewGroup.LayoutParams)localObject);
    f.setPadding(0, 0, 0, i);
    c.addView(f);
    localObject = new Button(paramContext);
    ((Button)localObject).setId(8208);
    i = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    j = (int)TypedValue.applyDimension(1, 30.0F, getResources().getDisplayMetrics());
    int k = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.setMargins(0, 0, 0, k);
    gravity = 1;
    ((Button)localObject).setLayoutParams(localLayoutParams);
    ((Button)localObject).setBackgroundDrawable(getButtonSelector());
    ((Button)localObject).setPadding(j, i, j, i);
    ((Button)localObject).setText(bwj.a(1031));
    ((Button)localObject).setTextColor(-1);
    ((Button)localObject).setTextSize(2, 15.0F);
    c.addView((View)localObject);
    localObject = new Button(paramContext);
    ((Button)localObject).setId(8201);
    i = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    j = (int)TypedValue.applyDimension(1, 30.0F, getResources().getDisplayMetrics());
    k = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.setMargins(0, 0, 0, k);
    gravity = 1;
    ((Button)localObject).setLayoutParams(localLayoutParams);
    ((Button)localObject).setBackgroundDrawable(getButtonSelector());
    ((Button)localObject).setPadding(j, i, j, i);
    ((Button)localObject).setText(bwj.a(1032));
    ((Button)localObject).setTextColor(-1);
    ((Button)localObject).setTextSize(2, 15.0F);
    c.addView((View)localObject);
    localObject = new TextView(paramContext);
    ((TextView)localObject).setId(8192);
    localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    i = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    localLayoutParams.setMargins(0, 0, 0, 0);
    ((TextView)localObject).setLayoutParams(localLayoutParams);
    ((TextView)localObject).setPadding(0, i, 0, i);
    ((TextView)localObject).setEllipsize(TextUtils.TruncateAt.END);
    ((TextView)localObject).setShadowLayer(1.0F, 0.0F, 1.0F, -1);
    ((TextView)localObject).setSingleLine(true);
    ((TextView)localObject).setText(bwj.a(1030));
    ((TextView)localObject).setTextColor(-7829368);
    ((TextView)localObject).setTextSize(2, 15.0F);
    ((TextView)localObject).setTypeface(null, 0);
    d.addView((View)localObject);
    e = new LinearLayout(paramContext);
    e.setId(131092);
    localObject = new LinearLayout.LayoutParams(-1, -2);
    i = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    gravity = 3;
    e.setLayoutParams((ViewGroup.LayoutParams)localObject);
    e.setPadding(0, i, 0, i);
    e.setGravity(48);
    e.setOrientation(0);
    d.addView(e);
    localObject = new Button(paramContext);
    ((Button)localObject).setId(131088);
    i = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    j = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    k = (int)TypedValue.applyDimension(1, 5.0F, getResources().getDisplayMetrics());
    localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.setMargins(0, 0, k, j);
    gravity = 1;
    weight = 1.0F;
    ((Button)localObject).setLayoutParams(localLayoutParams);
    ((Button)localObject).setBackgroundDrawable(getButtonSelector());
    ((Button)localObject).setPadding(0, i, 0, i);
    ((Button)localObject).setGravity(17);
    ((Button)localObject).setText(bwj.a(1033));
    ((Button)localObject).setTextColor(-1);
    ((Button)localObject).setTextSize(2, 15.0F);
    e.addView((View)localObject);
    localObject = new Button(paramContext);
    ((Button)localObject).setId(131089);
    i = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    j = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    k = (int)TypedValue.applyDimension(1, 5.0F, getResources().getDisplayMetrics());
    localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.setMargins(k, 0, 0, j);
    gravity = 1;
    ((Button)localObject).setLayoutParams(localLayoutParams);
    ((Button)localObject).setBackgroundDrawable(getButtonSelector());
    ((Button)localObject).setPadding(0, i, 0, i);
    ((Button)localObject).setGravity(17);
    ((Button)localObject).setText(bwj.a(1034));
    ((Button)localObject).setTextColor(-1);
    ((Button)localObject).setTextSize(2, 15.0F);
    weight = 1.0F;
    e.addView((View)localObject);
    g = new ListView(paramContext);
    g.setId(131094);
    paramContext = new LinearLayout.LayoutParams(-1, -1);
    i = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    g.setLayoutParams(paramContext);
    g.setPadding(0, i, 0, i);
    d.addView(g);
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
 * Qualified Name:     net.hockeyapp.android.views.FeedbackView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */