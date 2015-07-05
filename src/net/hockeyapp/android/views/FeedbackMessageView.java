package net.hockeyapp.android.views;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class FeedbackMessageView
  extends LinearLayout
{
  private TextView a;
  private TextView b;
  private TextView c;
  private AttachmentListView d;
  private boolean e = true;
  
  public FeedbackMessageView(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private FeedbackMessageView(Context paramContext, byte paramByte)
  {
    super(paramContext);
    setOrientation(1);
    setGravity(3);
    setBackgroundColor(-3355444);
    a = new TextView(paramContext);
    a.setId(12289);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    paramByte = (int)TypedValue.applyDimension(1, 20.0F, getResources().getDisplayMetrics());
    localLayoutParams.setMargins(paramByte, paramByte, paramByte, 0);
    a.setLayoutParams(localLayoutParams);
    a.setShadowLayer(1.0F, 0.0F, 1.0F, -1);
    a.setSingleLine(true);
    a.setTextColor(-7829368);
    a.setTextSize(2, 15.0F);
    a.setTypeface(null, 0);
    addView(a);
    b = new TextView(paramContext);
    b.setId(12290);
    localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    paramByte = (int)TypedValue.applyDimension(1, 20.0F, getResources().getDisplayMetrics());
    localLayoutParams.setMargins(paramByte, 0, paramByte, 0);
    b.setLayoutParams(localLayoutParams);
    b.setShadowLayer(1.0F, 0.0F, 1.0F, -1);
    b.setSingleLine(true);
    b.setTextColor(-7829368);
    b.setTextSize(2, 15.0F);
    b.setTypeface(null, 2);
    addView(b);
    c = new TextView(paramContext);
    c.setId(12291);
    localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    paramByte = (int)TypedValue.applyDimension(1, 20.0F, getResources().getDisplayMetrics());
    localLayoutParams.setMargins(paramByte, 0, paramByte, paramByte);
    c.setLayoutParams(localLayoutParams);
    c.setShadowLayer(1.0F, 0.0F, 1.0F, -1);
    c.setSingleLine(false);
    c.setTextColor(-16777216);
    c.setTextSize(2, 18.0F);
    c.setTypeface(null, 0);
    addView(c);
    d = new AttachmentListView(paramContext);
    d.setId(12292);
    paramContext = new LinearLayout.LayoutParams(-1, -1);
    paramByte = (int)TypedValue.applyDimension(1, 20.0F, getResources().getDisplayMetrics());
    paramContext.setMargins(paramByte, 0, paramByte, paramByte);
    d.setLayoutParams(paramContext);
    addView(d);
  }
  
  private void setAuthorLaberColor(int paramInt)
  {
    if (a != null) {
      a.setTextColor(paramInt);
    }
  }
  
  private void setDateLaberColor(int paramInt)
  {
    if (b != null) {
      b.setTextColor(paramInt);
    }
  }
  
  private void setMessageLaberColor(int paramInt)
  {
    if (c != null) {
      c.setTextColor(paramInt);
    }
  }
  
  public void setAuthorLabelText(String paramString)
  {
    if ((a != null) && (paramString != null)) {
      a.setText(paramString);
    }
  }
  
  public void setDateLabelText(String paramString)
  {
    if ((b != null) && (paramString != null)) {
      b.setText(paramString);
    }
  }
  
  public void setFeedbackMessageViewBgAndTextColor(int paramInt)
  {
    if (paramInt == 0)
    {
      setBackgroundColor(-3355444);
      setAuthorLaberColor(-1);
      setDateLaberColor(-1);
    }
    for (;;)
    {
      setMessageLaberColor(-16777216);
      return;
      if (paramInt == 1)
      {
        setBackgroundColor(-1);
        setAuthorLaberColor(-3355444);
        setDateLaberColor(-3355444);
      }
    }
  }
  
  public void setMessageLabelText(String paramString)
  {
    if ((c != null) && (paramString != null)) {
      c.setText(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.views.FeedbackMessageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */