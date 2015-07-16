import android.content.res.Resources;
import android.graphics.Bitmap;
import android.widget.RelativeLayout.LayoutParams;
import com.snapchat.android.ui.SelfScalingImageView;
import com.snapchat.android.ui.smartfilters.GeofilterView;

public final class bhq
{
  public final ajr mGeofilter;
  public final GeofilterView mGeofilterView;
  
  public bhq(ajr paramajr, GeofilterView paramGeofilterView)
  {
    mGeofilter = paramajr;
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
    paramSelfScalingImageView.setImageBitmap(avp.d(paramBitmap, mGeofilterView.getContext()));
    int k = awf.a(paramInt, awf.d(mGeofilterView.getContext()));
    paramBitmap = (RelativeLayout.LayoutParams)paramSelfScalingImageView.getLayoutParams();
    int i;
    if ((k & 0x3) == 3)
    {
      paramInt = 9;
      if ((k & 0x30) != 48) {
        break label121;
      }
      i = 10;
    }
    for (;;)
    {
      if (j > 15) {
        break label145;
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
      label121:
      if ((k & 0x50) == 80) {
        i = 12;
      } else {
        i = 15;
      }
    }
    label145:
    paramBitmap.addRule(paramInt);
    paramBitmap.addRule(i);
    if (paramBoolean) {
      if (awf.e(mGeofilterView.getContext()))
      {
        leftMargin = ((int)mGeofilterView.getResources().getDimension(2131296300));
        rightMargin = ((int)mGeofilterView.getResources().getDimension(2131296300));
        topMargin = ((int)mGeofilterView.getResources().getDimension(2131296259));
        bottomMargin = ((int)mGeofilterView.getResources().getDimension(2131296259));
      }
    }
    for (;;)
    {
      paramSelfScalingImageView.setLayoutParams(paramBitmap);
      return;
      bottomMargin = ((int)mGeofilterView.getResources().getDimension(2131296300));
      topMargin = ((int)mGeofilterView.getResources().getDimension(2131296300));
      leftMargin = ((int)mGeofilterView.getResources().getDimension(2131296259));
      rightMargin = ((int)mGeofilterView.getResources().getDimension(2131296259));
      continue;
      paramSelfScalingImageView.setScaleType(mGeofilter.mLayoutScaleType);
      paramSelfScalingImageView.setGravity(k);
    }
  }
}

/* Location:
 * Qualified Name:     bhq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */