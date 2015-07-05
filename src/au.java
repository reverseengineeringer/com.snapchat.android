import java.util.List;

public abstract interface au
{
  public abstract List<as> getBoxes();
  
  public abstract <T extends as> List<T> getBoxes(Class<T> paramClass, boolean paramBoolean);
  
  public abstract void setBoxes(List<as> paramList);
}

/* Location:
 * Qualified Name:     au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */