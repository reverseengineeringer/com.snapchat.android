package com.snapchat.android.ui.smartfilters;

import aiv;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import apc;
import bgp;
import bgq;
import ccm;
import cgb;
import cgs;
import com.snapchat.android.model.server.GeofilterResponse.SponsoredSlugPosition;
import com.snapchat.android.ui.SelfScalingImageView;
import java.util.Date;

public class GeofilterView
  extends RelativeLayout
{
  public final SelfScalingImageView a;
  public final apc b;
  public boolean c;
  private final SelfScalingImageView d;
  private final aiv e;
  private final bgq f;
  private float g = 1.0F;
  private int h;
  private int i;
  
  public GeofilterView(Context paramContext, @cgb aiv paramaiv)
  {
    super(paramContext);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130968680, this, true);
    d = ((SelfScalingImageView)findViewById(2131362373));
    a = ((SelfScalingImageView)findViewById(2131362374));
    e = paramaiv;
    c = false;
    b = new apc(this, a);
    f = new bgq(e, this);
    b();
  }
  
  @ccm
  private void b()
  {
    
    Bitmap localBitmap;
    bgq localbgq;
    SelfScalingImageView localSelfScalingImageView;
    if ((e.mIsDynamic) && (e.a() != null) && (e.b() != null) && (e.b().b(cgs.c())))
    {
      localBitmap = e.a();
      f.a(d, localBitmap, e.mLayoutGravity, false);
      if ((e.mIsSponsored) && (!c))
      {
        localbgq = f;
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
        switch (bgq.1.$SwitchMap$com$snapchat$android$model$server$GeofilterResponse$SponsoredSlugPosition[localSponsoredSlugPosition.ordinal()])
        {
        default: 
          j = 85;
        }
      }
      for (;;)
      {
        localbgq.a(localSelfScalingImageView, localBitmap, j, true);
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
      apc localapc = b;
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
  
  public aiv getGeofilter()
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