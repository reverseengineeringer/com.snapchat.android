import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

public final class eq$c
  implements Externalizable
{
  List<eq.b> a = new ArrayList();
  
  public final void readExternal(ObjectInput paramObjectInput)
  {
    int j = paramObjectInput.readInt();
    int i = 0;
    while (i < j)
    {
      eq.b localb = new eq.b();
      localb.readExternal(paramObjectInput);
      a.add(localb);
      i += 1;
    }
  }
  
  public final void writeExternal(ObjectOutput paramObjectOutput)
  {
    int j = a.size();
    paramObjectOutput.writeInt(j);
    int i = 0;
    while (i < j)
    {
      ((eq.b)a.get(i)).writeExternal(paramObjectOutput);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     eq.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */