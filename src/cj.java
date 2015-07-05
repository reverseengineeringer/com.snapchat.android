import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

@cd
public final class cj
{
  @CheckReturnValue
  public static boolean a(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
}

/* Location:
 * Qualified Name:     cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */