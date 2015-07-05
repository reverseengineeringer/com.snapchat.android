import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public final class bsm
{
  public URL a;
  public Map b = new HashMap();
  public int c = 0;
  public boolean d = true;
  public boolean e = true;
  public String f = "POST";
  public boolean g = false;
  public int h = 2500;
  
  public bsm(URL paramURL)
  {
    a = paramURL;
    b.put("User-Agent", Arrays.asList(new String[] { "4.5.4" }));
    b.put("Content-Type", Arrays.asList(new String[] { "application/json" }));
    b.put("Accept", Arrays.asList(new String[] { "text/plain", "application/json" }));
  }
}

/* Location:
 * Qualified Name:     bsm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */