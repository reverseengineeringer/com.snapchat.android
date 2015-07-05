.class public Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;
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
    name = "OpacitySelectorChangedListener"
.end annotation


# instance fields
.field protected final optionsType:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

.field final synthetic this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;


# direct methods
.method public constructor <init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->optionsType:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    .line 497
    return-void
.end method


# virtual methods
.method protected getColorWithOpacity(I)I
    .locals 4

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->getCurrentColor()I

    move-result v0

    .line 508
    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_none:I

    if-ne p1, v1, :cond_1

    .line 509
    sget v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->OPACITY_TRANSPARENT:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 517
    :cond_0
    :goto_0
    return v0

    .line 510
    :cond_1
    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_semi_transparent:I

    if-ne p1, v1, :cond_2

    .line 511
    sget v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->OPACITY_SEMI_TRANSPARENT:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    .line 512
    :cond_2
    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_semi_transparent_light:I

    if-ne p1, v1, :cond_3

    .line 513
    sget v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->OPACITY_SEMI_TRANSPARENT_LIGHT:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    .line 514
    :cond_3
    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_opaque:I

    if-ne p1, v1, :cond_0

    .line 515
    const/16 v1, 0xff

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0
.end method

.method protected getCurrentColor()I
    .locals 4

    .prologue
    .line 522
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$3;->$SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType:[I

    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->optionsType:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 532
    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$100()Ljava/lang/String;

    const-string v0, "Unknown CC Options Type: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->optionsType:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {v3}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 535
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 524
    :pswitch_0
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getTextColor()I

    move-result v0

    goto :goto_0

    .line 526
    :pswitch_1
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getEdgeColor()I

    move-result v0

    goto :goto_0

    .line 528
    :pswitch_2
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getHighlightColor()I

    move-result v0

    goto :goto_0

    .line 530
    :pswitch_3
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getBackgroundColor()I

    move-result v0

    goto :goto_0

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0, p2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->getColorWithOpacity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->setBuilderColor(I)V

    .line 502
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->updateCaptions()V

    .line 503
    return-void
.end method

.method protected setBuilderColor(I)V
    .locals 2

    .prologue
    .line 539
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$3;->$SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType:[I

    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->optionsType:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 553
    :goto_0
    return-void

    .line 541
    :pswitch_0
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setTextColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    goto :goto_0

    .line 544
    :pswitch_1
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setEdgeColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    goto :goto_0

    .line 547
    :pswitch_2
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setHighlightColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    goto :goto_0

    .line 550
    :pswitch_3
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setBackgroundColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    goto :goto_0

    .line 539
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
