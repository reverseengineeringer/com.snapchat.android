import android.app.Activity;
import com.addlive.service.AddLiveService.VideoFrameMetadata;
import com.addlive.view.ALVideoTextureView;
import com.snapchat.android.analytics.HereAnalytics;
import com.snapchat.android.ui.here.DisconnectReason;

public abstract interface ahl
{
  public abstract void a();
  
  public abstract void a(@cgb Activity paramActivity, @cgb ahl.a parama, @cgb HereAnalytics paramHereAnalytics);
  
  public abstract void a(@cgb bic parambic);
  
  public abstract void a(ALVideoTextureView paramALVideoTextureView);
  
  public abstract void a(@cgb DisconnectReason paramDisconnectReason);
  
  public abstract void a(@cgb byte[] paramArrayOfByte, @cgb AddLiveService.VideoFrameMetadata paramVideoFrameMetadata);
  
  public abstract boolean b();
  
  public abstract void c();
  
  public abstract void d();
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(@cgb DisconnectReason paramDisconnectReason);
    
    public abstract void a(boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     ahl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */