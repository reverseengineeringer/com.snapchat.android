package com.snapchat.android.ui.smartfilters;

import ajr;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import apy;
import bhp;
import bhq;
import cdn;
import chc;
import cht;
import com.snapchat.android.model.server.GeofilterResponse.SponsoredSlugPosition;
import com.snapchat.android.ui.SelfScalingImageView;
import java.util.Date;

public class GeofilterView
  extends RelativeLayout
{
  public final SelfScalingImageView a;
  public final apy b;
  public boolean c;
  private final SelfScalingImageView d;
  private final ajr e;
  private final bhq f;
  private float g = 1.0F;
  private int h;
  private int i;
  
  public GeofilterView(Context paramContext, @chc ajr paramajr)
  {
    super(paramContext);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130968681, this, true);
    d = ((SelfScalingImageView)findViewById(2131362371));
    a = ((SelfScalingImageView)findViewById(2131362372));
    e = paramajr;
    c = false;
    b = new apy(this, a);
    f = new bhq(e, this);
    b();
  }
  
  @cdn
  private void b()
  {
    
    Bitmap localBitmap;
    bhq localbhq;
    SelfScalingImageView localSelfScalingImageView;
    if ((e.mIsDynamic) && (e.a() != null) && (e.b() != null) && (e.b().b(cht.c())))
    {
      localBitmap = e.a();
      f.a(d, localBitmap, e.mLayoutGravity, false);
      if ((e.mIsSponsored) && (!c))
      {
        localbhq = f;
        localSelfScalingImageView = a;
        if (mGeofilter.mSponsoredSlugImageUrl == null) {
          break label228;
        }
        localBitmap = ((BitmapDrawable)Drawable.createFromPath(mGeofilter.mSponsoredSlugImageUrl)).getBitmap();
      }
    }
    for (;;)
    {
      label132:
      int j;
      if (localBitmap != null)
      {
        GeofilterResponse.SponsoredSlugPosition localSponsoredSlugPosition = mGeofilter.mSponsoredSlugPosition;
        if (localSponsoredSlugPosition != null) {}
        switch (bhq.1.$SwitchMap$com$snapchat$android$model$server$GeofilterResponse$SponsoredSlugPosition[localSponsoredSlugPosition.ordinal()])
        {
        default: 
          j = 85;
        }
      }
      for (;;)
      {
        localbhq.a(localSelfScalingImageView, localBitmap, j, true);
        return;
        localBitmap = e.mBitmap;
        break;
        label228:
        if (mGeofilterView.getResources().getDrawable(2130838125) == null) {
          break label313;
        }
        localBitmap = ((BitmapDrawable)mGeofilterView.getResources().getDrawable(2130838125)).getBitmap();
        break label132;
        j = 51;
        continue;
        j = 49;
        continue;
        j = 53;
        continue;
        j = 19;
        continue;
        j = 17;
        continue;
        j = 21;
        continue;
        j = 83;
        continue;
        j = 81;
      }
      label313:
      localBitmap = null;
    }
  }
  
  public final void a()
  {
    if ((a != null) && (!c))
    {
      apy localapy = b;
      if (f != null)
      {
        e.cancel();
        if (f != null)
        {
          Date localDate = new Date();
          if (f != null)
          {
            long l1 = localDate.getTime();
            long l2 = f.getTime();
            c -= l1 - l2;
            if (c < 0L)
            {
              d = ((int)(d + c));
              c = 0L;
              if (d < 0) {
                d = 0;
              }
            }
          }
        }
        b.setVisibility(0);
        f = null;
        g = true;
      }
    }
  }
  
  public String getFilterId()
  {
    return e.mFilterId;
  }
  
  public ajr getGeofilter()
  {
    return e;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    paramInt1 = paramInt3 - paramInt1;
    paramInt2 = paramInt4 - paramInt2;
    if ((paramInt1 != h) || (paramInt2 != i))
    {
      h = paramInt1;
      i = paramInt2;
      b();
    }
  }
  
  public void setVisibilityOfPreviewOnlyContent(int paramInt)
  {
    if (a != null)
    {
      if (paramInt == 0) {
        a.setAlpha(g);
      }
    }
    else {
      return;
    }
    g = a.getAlpha();
    a.setAlpha(0.0F);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.smartfilters.GeofilterView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */