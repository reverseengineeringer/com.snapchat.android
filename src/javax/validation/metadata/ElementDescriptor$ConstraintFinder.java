package javax.validation.metadata;

import java.util.Set;

public abstract interface ElementDescriptor$ConstraintFinder
{
  public abstract ConstraintFinder declaredOn$58e0e6bf();
  
  public abstract Set<ConstraintDescriptor<?>> getConstraintDescriptors();
  
  public abstract boolean hasConstraints();
  
  public abstract ConstraintFinder lookingAt$66197095$7566a1f8();
  
  public abstract ConstraintFinder unorderedAndMatchingGroups$2b203509();
}

/* Location:
 * Qualified Name:     javax.validation.metadata.ElementDescriptor.ConstraintFinder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */