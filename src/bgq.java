import android.content.res.Resources;
import android.graphics.Bitmap;
import android.widget.RelativeLayout.LayoutParams;
import com.snapchat.android.ui.SelfScalingImageView;
import com.snapchat.android.ui.smartfilters.GeofilterView;

public final class bgq
{
  public final aiv mGeofilter;
  public final GeofilterView mGeofilterView;
  
  public bgq(aiv paramaiv, GeofilterView paramGeofilterView)
  {
    mGeofilter = paramaiv;
    mGeofilterView = paramGeofilterView;
  }
  
  public final void a(SelfScalingImageView paramSelfScalingImageView, @r Bitmap paramBitmap, int paramInt, boolean paramBoolean)
  {
    int j = 9;
    if (paramBitmap == null)
    {
      paramSelfScalingImageView.setImageBitmap(null);
      return;
    }
    paramSelfScalingImageView.setImageBitmap(aur.d(paramBitmap, mGeofilterView.getContext()));
    int k = avh.a(paramInt, avh.d(mGeofilterView.getContext()));
    paramBitmap = (RelativeLayout.LayoutParams)paramSelfScalingImageView.getLayoutParams();
    if (mGeofilter.mIsSponsored)
    {
      int i;
      if ((k & 0x3) == 3)
      {
        paramInt = 9;
        if ((k & 0x30) != 48) {
          break label131;
        }
        i = 10;
      }
      for (;;)
      {
        if (j > 15) {
          break label155;
        }
        paramBitmap.addRule(j, 0);
        j += 1;
        continue;
        if ((k & 0x5) == 5)
        {
          paramInt = 11;
          break;
        }
        paramInt = 14;
        break;
        label131:
        if ((k & 0x50) == 80) {
          i = 12;
        } else {
          i = 15;
        }
      }
      label155:
      paramBitmap.addRule(paramInt);
      paramBitmap.addRule(i);
    }
    if (paramBoolean) {
      if (avh.e(mGeofilterView.getContext()))
      {
        leftMargin = ((int)mGeofilterView.getResources().getDimension(2131296301));
        rightMargin = ((int)mGeofilterView.getResources().getDimension(2131296301));
        topMargin = ((int)mGeofilterView.getResources().getDimension(2131296259));
        bottomMargin = ((int)mGeofilterView.getResources().getDimension(2131296259));
      }
    }
    for (;;)
    {
      paramSelfScalingImageView.setLayoutParams(paramBitmap);
      return;
      bottomMargin = ((int)mGeofilterView.getResources().getDimension(2131296301));
      topMargin = ((int)mGeofilterView.getResources().getDimension(2131296301));
      leftMargin = ((int)mGeofilterView.getResources().getDimension(2131296259));
      rightMargin = ((int)mGeofilterView.getResources().getDimension(2131296259));
      continue;
      paramSelfScalingImageView.setScaleType(mGeofilter.mLayoutScaleType);
      paramSelfScalingImageView.setGravity(k);
      mGeofilterView.setGravity(k);
    }
  }
}

/* Location:
 * Qualified Name:     bgq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */