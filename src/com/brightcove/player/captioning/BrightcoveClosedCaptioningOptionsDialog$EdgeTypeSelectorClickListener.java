package com.brightcove.player.captioning;

import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import com.brightcove.player.R.id;

public class BrightcoveClosedCaptioningOptionsDialog$EdgeTypeSelectorClickListener
  implements RadioGroup.OnCheckedChangeListener
{
  protected BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType optionsType;
  
  public BrightcoveClosedCaptioningOptionsDialog$EdgeTypeSelectorClickListener(BrightcoveClosedCaptioningOptionsDialog paramBrightcoveClosedCaptioningOptionsDialog, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType paramClosedCaptioningOptionsType)
  {
    optionsType = paramClosedCaptioningOptionsType;
  }
  
  private BrightcoveClosedCaptioningTextView.EdgeAttribute getSelectedEdgeType(int paramInt)
  {
    if (paramInt == R.id.closed_captioning_options_edge_selection_depressed_edges) {
      return BrightcoveClosedCaptioningTextView.EdgeAttribute.DEPRESSED;
    }
    if (paramInt == R.id.closed_captioning_options_edge_selection_drop_shadow_edges) {
      return BrightcoveClosedCaptioningTextView.EdgeAttribute.DROP_SHADOW;
    }
    if (paramInt == R.id.closed_captioning_options_edge_selection_no_edge_attribute) {
      return BrightcoveClosedCaptioningTextView.EdgeAttribute.NONE;
    }
    if (paramInt == R.id.closed_captioning_options_edge_selection_raised_edges) {
      return BrightcoveClosedCaptioningTextView.EdgeAttribute.RAISED;
    }
    if (paramInt == R.id.closed_captioning_options_edge_selection_uniform_edges) {
      return BrightcoveClosedCaptioningTextView.EdgeAttribute.UNIFORM;
    }
    return BrightcoveClosedCaptioningTextView.EdgeAttribute.NONE;
  }
  
  private void setBuilderEdgeAttribute(BrightcoveClosedCaptioningTextView.EdgeAttribute paramEdgeAttribute)
  {
    if (optionsType == BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.EDGE_TYPE) {
      BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).setEdgeAttribute(paramEdgeAttribute);
    }
  }
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    setBuilderEdgeAttribute(getSelectedEdgeType(paramInt));
    this$0.updateCaptions();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog.EdgeTypeSelectorClickListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */