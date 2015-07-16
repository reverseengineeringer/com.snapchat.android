import java.util.Map.Entry;
import javax.annotation.Nullable;

@cd
abstract class do<K, V>
  extends dr<Map.Entry<K, V>>
{
  public boolean contains(@Nullable Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Map.Entry))
    {
      paramObject = (Map.Entry)paramObject;
      Object localObject = e().get(((Map.Entry)paramObject).getKey());
      bool1 = bool2;
      if (localObject != null)
      {
        bool1 = bool2;
        if (localObject.equals(((Map.Entry)paramObject).getValue())) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  abstract dm<K, V> e();
  
  public int size()
  {
    return e().size();
  }
}

/* Location:
 * Qualified Name:     do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */