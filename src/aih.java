import android.app.Activity;
import com.addlive.service.AddLiveService.VideoFrameMetadata;
import com.addlive.view.ALVideoTextureView;
import com.snapchat.android.analytics.HereAnalytics;
import com.snapchat.android.ui.here.DisconnectReason;

public abstract interface aih
{
  public abstract void a();
  
  public abstract void a(@chc Activity paramActivity, @chc aih.a parama, @chc HereAnalytics paramHereAnalytics);
  
  public abstract void a(@chc bjc parambjc);
  
  public abstract void a(ALVideoTextureView paramALVideoTextureView);
  
  public abstract void a(@chc DisconnectReason paramDisconnectReason);
  
  public abstract void a(@chc byte[] paramArrayOfByte, @chc AddLiveService.VideoFrameMetadata paramVideoFrameMetadata);
  
  public abstract boolean b();
  
  public abstract boolean c();
  
  public abstract void d();
  
  public abstract void e();
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(@chc DisconnectReason paramDisconnectReason);
    
    public abstract void a(boolean paramBoolean);
    
    public abstract void b(boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     aih
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */