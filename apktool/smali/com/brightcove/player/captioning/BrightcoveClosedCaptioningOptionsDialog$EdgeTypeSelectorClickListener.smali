.class public Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$EdgeTypeSelectorClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EdgeTypeSelectorClickListener"
.end annotation


# instance fields
.field protected optionsType:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

.field final synthetic this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;


# direct methods
.method public constructor <init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$EdgeTypeSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput-object p2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$EdgeTypeSelectorClickListener;->optionsType:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    .line 590
    return-void
.end method

.method private getSelectedEdgeType(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;
    .locals 1

    .prologue
    .line 599
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_edge_selection_depressed_edges:I

    if-ne p1, v0, :cond_0

    .line 600
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->DEPRESSED:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    .line 611
    :goto_0
    return-object v0

    .line 601
    :cond_0
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_edge_selection_drop_shadow_edges:I

    if-ne p1, v0, :cond_1

    .line 602
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->DROP_SHADOW:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    goto :goto_0

    .line 603
    :cond_1
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_edge_selection_no_edge_attribute:I

    if-ne p1, v0, :cond_2

    .line 604
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->NONE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    goto :goto_0

    .line 605
    :cond_2
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_edge_selection_raised_edges:I

    if-ne p1, v0, :cond_3

    .line 606
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->RAISED:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    goto :goto_0

    .line 607
    :cond_3
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_edge_selection_uniform_edges:I

    if-ne p1, v0, :cond_4

    .line 608
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->UNIFORM:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    goto :goto_0

    .line 611
    :cond_4
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->NONE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    goto :goto_0
.end method

.method private setBuilderEdgeAttribute(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;)V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$EdgeTypeSelectorClickListener;->optionsType:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->EDGE_TYPE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    if-ne v0, v1, :cond_0

    .line 616
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$EdgeTypeSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setEdgeAttribute(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 618
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .prologue
    .line 594
    invoke-direct {p0, p2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$EdgeTypeSelectorClickListener;->getSelectedEdgeType(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$EdgeTypeSelectorClickListener;->setBuilderEdgeAttribute(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;)V

    .line 595
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$EdgeTypeSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->updateCaptions()V

    .line 596
    return-void
.end method
