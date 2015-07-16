import com.snapchat.android.ui.layertype.LayerType;
import java.util.HashMap;
import java.util.Map;

public final class arf
{
  protected static final LayerType a = LayerType.HARDWARE;
  private static final Map<Integer, LayerType> b;
  
  static
  {
    HashMap localHashMap = new HashMap(LayerType.values().length);
    b = localHashMap;
    localHashMap.put(Integer.valueOf(0), LayerType.NONE);
    b.put(Integer.valueOf(2), LayerType.HARDWARE);
    b.put(Integer.valueOf(1), LayerType.SOFTWARE);
  }
  
  public static LayerType a(int paramInt)
  {
    LayerType localLayerType2 = (LayerType)b.get(Integer.valueOf(paramInt));
    LayerType localLayerType1 = localLayerType2;
    if (localLayerType2 == null) {
      localLayerType1 = a;
    }
    return localLayerType1;
  }
}

/* Location:
 * Qualified Name:     arf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */