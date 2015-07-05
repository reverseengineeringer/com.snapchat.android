import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;

public abstract interface wc
{
  public abstract void a();
  
  public abstract void a(int paramInt, wh paramwh);
  
  public static abstract interface a
  {
    public abstract void a(byte[] paramArrayOfByte, wc.b paramb);
  }
  
  public static abstract interface b
  {
    public abstract void a(int paramInt);
    
    public abstract void a(SurfaceTexture paramSurfaceTexture);
    
    public abstract void a(Camera.Parameters paramParameters);
    
    public abstract void a(wf paramwf);
    
    public abstract void a(wi paramwi);
    
    public abstract void a(boolean paramBoolean);
    
    public abstract void a(byte[] paramArrayOfByte);
    
    public abstract Camera b();
    
    public abstract void b(boolean paramBoolean);
    
    @cgc
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
 * Qualified Name:     wc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */