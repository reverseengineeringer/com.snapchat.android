import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import javax.annotation.Nullable;

@cd
public final class ds
{
  public static <E> HashSet<E> a(E... paramVarArgs)
  {
    HashSet localHashSet = new HashSet(dl.a(paramVarArgs.length));
    Collections.addAll(localHashSet, paramVarArgs);
    return localHashSet;
  }
  
  static boolean a(Set<?> paramSet, @Nullable Object paramObject)
  {
    if (paramSet == paramObject) {}
    for (;;)
    {
      return true;
      if ((paramObject instanceof Set))
      {
        paramObject = (Set)paramObject;
        try
        {
          if (paramSet.size() == ((Set)paramObject).size())
          {
            boolean bool = paramSet.containsAll((Collection)paramObject);
            if (bool) {}
          }
          else
          {
            return false;
          }
        }
        catch (NullPointerException paramSet)
        {
          return false;
        }
        catch (ClassCastException paramSet)
        {
          return false;
        }
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     ds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */