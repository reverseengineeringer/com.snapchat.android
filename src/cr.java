import java.util.Map.Entry;
import javax.annotation.Nullable;

@cd
abstract class cr<K, V>
  implements Map.Entry<K, V>
{
  public boolean equals(@Nullable Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Map.Entry))
    {
      paramObject = (Map.Entry)paramObject;
      bool1 = bool2;
      if (cj.a(getKey(), ((Map.Entry)paramObject).getKey()))
      {
        bool1 = bool2;
        if (cj.a(getValue(), ((Map.Entry)paramObject).getValue())) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public abstract K getKey();
  
  public abstract V getValue();
  
  public int hashCode()
  {
    int j = 0;
    Object localObject1 = getKey();
    Object localObject2 = getValue();
    int i;
    if (localObject1 == null)
    {
      i = 0;
      if (localObject2 != null) {
        break label36;
      }
    }
    for (;;)
    {
      return j ^ i;
      i = localObject1.hashCode();
      break;
      label36:
      j = localObject2.hashCode();
    }
  }
  
  public V setValue(V paramV)
  {
    throw new UnsupportedOperationException();
  }
  
  public String toString()
  {
    String str1 = String.valueOf(String.valueOf(getKey()));
    String str2 = String.valueOf(String.valueOf(getValue()));
    return str1.length() + 1 + str2.length() + str1 + "=" + str2;
  }
}

/* Location:
 * Qualified Name:     cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */