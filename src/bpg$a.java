import android.graphics.Bitmap.Config;
import android.net.Uri;
import java.util.List;

public final class bpg$a
{
  Uri a;
  int b;
  String c;
  int d;
  int e;
  boolean f;
  boolean g;
  boolean h;
  float i;
  float j;
  float k;
  boolean l;
  List<bpm> m;
  Bitmap.Config n;
  int o;
  
  bpg$a(Uri paramUri, Bitmap.Config paramConfig)
  {
    a = paramUri;
    b = 0;
    n = paramConfig;
  }
  
  public final a a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      throw new IllegalArgumentException("Width must be positive number or 0.");
    }
    if (paramInt2 < 0) {
      throw new IllegalArgumentException("Height must be positive number or 0.");
    }
    if ((paramInt2 == 0) && (paramInt1 == 0)) {
      throw new IllegalArgumentException("At least one dimension has to be positive number.");
    }
    d = paramInt1;
    e = paramInt2;
    return this;
  }
  
  final boolean a()
  {
    return (a != null) || (b != 0);
  }
}

/* Location:
 * Qualified Name:     bpg.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */