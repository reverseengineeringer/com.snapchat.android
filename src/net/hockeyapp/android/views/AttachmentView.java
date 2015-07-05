package net.hockeyapp.android.views;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.TextView;
import buz;
import bvs;
import bwh;
import java.io.File;

public class AttachmentView
  extends FrameLayout
{
  final ViewGroup a;
  public TextView b;
  private final Context c;
  private final bvs d;
  private final Uri e;
  private final String f;
  private ImageView g;
  private int h;
  private int i;
  private int j;
  private int k;
  private int l;
  private int m;
  
  public AttachmentView(Context paramContext, ViewGroup paramViewGroup, Uri paramUri)
  {
    super(paramContext);
    c = paramContext;
    a = paramViewGroup;
    d = null;
    e = paramUri;
    f = paramUri.getLastPathSegment();
    a(20);
    a(paramContext, true);
    b.setText(f);
    new AsyncTask() {}.execute(new Void[0]);
  }
  
  public AttachmentView(Context paramContext, ViewGroup paramViewGroup, bvs parambvs)
  {
    super(paramContext);
    c = paramContext;
    a = paramViewGroup;
    d = parambvs;
    e = Uri.fromFile(new File(buz.a(), parambvs.a()));
    f = c;
    a(30);
    a(paramContext, false);
    m = 0;
    b.setText("Loading...");
    a(false);
  }
  
  private Bitmap a()
  {
    try
    {
      m = bwh.a(c, e);
      int n;
      if (m == 1)
      {
        n = j;
        if (m != 1) {
          break label125;
        }
      }
      label125:
      for (int i1 = k;; i1 = i)
      {
        Context localContext = c;
        Uri localUri = e;
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        inJustDecodeBounds = true;
        BitmapFactory.decodeStream(localContext.getContentResolver().openInputStream(localUri), null, localOptions);
        inSampleSize = bwh.a(localOptions, n, i1);
        inJustDecodeBounds = false;
        return BitmapFactory.decodeStream(localContext.getContentResolver().openInputStream(localUri), null, localOptions);
        n = h;
        break;
      }
      return null;
    }
    catch (Throwable localThrowable) {}
  }
  
  private Drawable a(String paramString)
  {
    return getResources().getDrawable(getResources().getIdentifier(paramString, "drawable", "android"));
  }
  
  private void a(int paramInt)
  {
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    l = Math.round(TypedValue.applyDimension(1, 10.0F, localDisplayMetrics));
    paramInt = Math.round(TypedValue.applyDimension(1, paramInt, localDisplayMetrics));
    int n = widthPixels;
    int i1 = l;
    int i2 = l;
    h = ((n - paramInt * 2 - i1 * 2) / 3);
    j = ((n - paramInt * 2 - i2 * 1) / 2);
    i = (h * 2);
    k = j;
  }
  
  private void a(Context paramContext, boolean paramBoolean)
  {
    setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
    setPadding(0, l, 0, 0);
    g = new ImageView(paramContext);
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -2, 80));
    localLinearLayout.setGravity(3);
    localLinearLayout.setOrientation(1);
    localLinearLayout.setBackgroundColor(Color.parseColor("#80262626"));
    b = new TextView(paramContext);
    b.setLayoutParams(new FrameLayout.LayoutParams(-1, -2, 17));
    b.setGravity(17);
    b.setTextColor(Color.parseColor("#FFFFFF"));
    b.setSingleLine();
    b.setEllipsize(TextUtils.TruncateAt.MIDDLE);
    if (paramBoolean)
    {
      paramContext = new ImageButton(paramContext);
      paramContext.setLayoutParams(new FrameLayout.LayoutParams(-1, -2, 80));
      paramContext.setAdjustViewBounds(true);
      paramContext.setImageDrawable(a("ic_menu_delete"));
      paramContext.setBackgroundResource(0);
      paramContext.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = AttachmentView.this;
          a.removeView(paramAnonymousView);
        }
      });
      localLinearLayout.addView(paramContext);
    }
    localLinearLayout.addView(b);
    addView(g);
    addView(localLinearLayout);
  }
  
  private void a(Bitmap paramBitmap, final boolean paramBoolean)
  {
    int n;
    if (m == 1)
    {
      n = j;
      if (m != 1) {
        break label137;
      }
    }
    label137:
    for (int i1 = k;; i1 = i)
    {
      b.setMaxWidth(n);
      b.setMinWidth(n);
      g.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      g.setAdjustViewBounds(true);
      g.setMinimumWidth(n);
      g.setMaxWidth(n);
      g.setMaxHeight(i1);
      g.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
      g.setImageBitmap(paramBitmap);
      g.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (!paramBoolean) {
            return;
          }
          paramAnonymousView = new Intent();
          paramAnonymousView.setAction("android.intent.action.VIEW");
          paramAnonymousView.setDataAndType(AttachmentView.c(AttachmentView.this), "image/*");
          AttachmentView.d(AttachmentView.this).startActivity(paramAnonymousView);
        }
      });
      return;
      n = h;
      break;
    }
  }
  
  private void a(final boolean paramBoolean)
  {
    b.setMaxWidth(h);
    b.setMinWidth(h);
    g.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    g.setAdjustViewBounds(false);
    g.setBackgroundColor(Color.parseColor("#eeeeee"));
    g.setMinimumHeight((int)(h * 1.2F));
    g.setMinimumWidth(h);
    g.setScaleType(ImageView.ScaleType.FIT_CENTER);
    g.setImageDrawable(a("ic_menu_attachment"));
    g.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (!paramBoolean) {
          return;
        }
        paramAnonymousView = new Intent();
        paramAnonymousView.setAction("android.intent.action.VIEW");
        paramAnonymousView.setDataAndType(AttachmentView.c(AttachmentView.this), "*/*");
        AttachmentView.d(AttachmentView.this).startActivity(paramAnonymousView);
      }
    });
  }
  
  public bvs getAttachment()
  {
    return d;
  }
  
  public Uri getAttachmentUri()
  {
    return e;
  }
  
  public int getEffectiveMaxHeight()
  {
    if (m == 1) {
      return k;
    }
    return i;
  }
  
  public int getGap()
  {
    return l;
  }
  
  public int getMaxHeightLandscape()
  {
    return k;
  }
  
  public int getMaxHeightPortrait()
  {
    return i;
  }
  
  public int getWidthLandscape()
  {
    return j;
  }
  
  public int getWidthPortrait()
  {
    return h;
  }
  
  public void setImage(Bitmap paramBitmap, int paramInt)
  {
    b.setText(f);
    m = paramInt;
    if (paramBitmap == null)
    {
      a(true);
      return;
    }
    a(paramBitmap, true);
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.views.AttachmentView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */