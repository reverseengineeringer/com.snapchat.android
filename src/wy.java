import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;

public abstract interface wy
{
  public abstract void a();
  
  public abstract void a(int paramInt, xd paramxd);
  
  public static abstract interface a
  {
    public abstract void a(byte[] paramArrayOfByte, wy.b paramb);
  }
  
  public static abstract interface b
  {
    public abstract void a(int paramInt);
    
    public abstract void a(SurfaceTexture paramSurfaceTexture);
    
    public abstract void a(Camera.Parameters paramParameters);
    
    public abstract void a(xb paramxb);
    
    public abstract void a(xe paramxe);
    
    public abstract void a(boolean paramBoolean);
    
    public abstract void a(byte[] paramArrayOfByte);
    
    public abstract Camera b();
    
    public abstract void b(boolean paramBoolean);
    
    @chd
    public abstract Camera.Parameters c();
    
    public abstract void d();
    
    public abstract void e();
    
    public abstract boolean f();
    
    public abstract void g();
  }
  
  public static abstract interface c
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     wy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */