import com.snapchat.android.model.StoryCollection;

public final class aad
{
  public final apl a;
  public final StoryCollection b;
  public final aac c;
  public akl d = null;
  public akl e = null;
  public akj f = null;
  public int g;
  public int h;
  
  public aad(@chc akl paramakl, @chc StoryCollection paramStoryCollection) {}
  
  private aad(akl paramakl, StoryCollection paramStoryCollection, apl paramapl, aac paramaac)
  {
    a = paramapl;
    c = paramaac;
    h = a;
    d = paramakl;
    e = paramakl;
    b = paramStoryCollection;
    g = 1;
    if ((b instanceof akc))
    {
      h = (b.b() + 1);
      b.a(h);
    }
    for (;;)
    {
      paramakl = d;
      paramakl = b;
      paramakl = c;
      int i = g;
      i = h;
      return;
      h = 1;
    }
  }
  
  public final boolean a()
  {
    akl localakl = d;
    aac localaac = c;
    int i = g;
    int j = h;
    int k = b.b(e);
    if ((localakl != null) && (!mCanAdFollow)) {}
    while ((i < c) || (j < a) || (k < b)) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     aad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */