package javax.validation;

import java.util.List;

public abstract interface Path
  extends Iterable<Node>
{
  public static abstract interface BeanNode
    extends Path.Node
  {}
  
  public static abstract interface ConstructorNode
    extends Path.Node
  {
    public abstract List<Class<?>> getParameterTypes();
  }
  
  public static abstract interface CrossParameterNode
    extends Path.Node
  {}
  
  public static abstract interface MethodNode
    extends Path.Node
  {
    public abstract List<Class<?>> getParameterTypes();
  }
  
  public static abstract interface Node
  {
    public abstract <T extends Node> T as$2e59f947();
    
    public abstract Integer getIndex();
    
    public abstract Object getKey();
    
    public abstract int getKind$62ec5c83();
    
    public abstract String getName();
    
    public abstract boolean isInIterable();
  }
  
  public static abstract interface ParameterNode
    extends Path.Node
  {
    public abstract int getParameterIndex();
  }
  
  public static abstract interface PropertyNode
    extends Path.Node
  {}
  
  public static abstract interface ReturnValueNode
    extends Path.Node
  {}
}

/* Location:
 * Qualified Name:     javax.validation.Path
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */