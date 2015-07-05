.class public Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorSelectorClickListener"
.end annotation


# instance fields
.field protected colorButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field protected opacityRadioGroup:Landroid/widget/RadioGroup;

.field protected optionsType:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

.field final synthetic this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;


# direct methods
.method public constructor <init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;Ljava/util/List;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;Landroid/widget/RadioGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RadioButton;",
            ">;",
            "Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;",
            "Landroid/widget/RadioGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 413
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->colorButtons:Ljava/util/List;

    .line 415
    iput-object p3, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->optionsType:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    .line 416
    iput-object p4, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->opacityRadioGroup:Landroid/widget/RadioGroup;

    .line 417
    return-void
.end method

.method private getColorWithOpacity(II)I
    .locals 4

    .prologue
    .line 431
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_none:I

    if-ne p2, v0, :cond_1

    .line 432
    sget v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->OPACITY_TRANSPARENT:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 440
    :cond_0
    :goto_0
    return p1

    .line 433
    :cond_1
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_semi_transparent:I

    if-ne p2, v0, :cond_2

    .line 434
    sget v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->OPACITY_SEMI_TRANSPARENT:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    goto :goto_0

    .line 435
    :cond_2
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_semi_transparent_light:I

    if-ne p2, v0, :cond_3

    .line 436
    sget v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->OPACITY_SEMI_TRANSPARENT_LIGHT:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    goto :goto_0

    .line 437
    :cond_3
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_opaque:I

    if-ne p2, v0, :cond_0

    .line 438
    const/16 v0, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    goto :goto_0
.end method

.method private getSelectedColor(Landroid/widget/RadioButton;)I
    .locals 5

    .prologue
    .line 445
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 446
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 448
    const-string v2, "clickedColorButton tag is %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 450
    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/brightcove/player/R$string;->closed_captioning_red_tag:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    sget v0, Lcom/brightcove/player/R$color;->closed_captioning_red:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 468
    :goto_0
    return v0

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/brightcove/player/R$string;->closed_captioning_yellow_tag:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    sget v0, Lcom/brightcove/player/R$color;->closed_captioning_yellow:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 454
    :cond_1
    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/brightcove/player/R$string;->closed_captioning_green_tag:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 455
    sget v0, Lcom/brightcove/player/R$color;->closed_captioning_green:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 456
    :cond_2
    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/brightcove/player/R$string;->closed_captioning_cyan_tag:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 457
    sget v0, Lcom/brightcove/player/R$color;->closed_captioning_cyan:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 458
    :cond_3
    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/brightcove/player/R$string;->closed_captioning_blue_tag:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 459
    sget v0, Lcom/brightcove/player/R$color;->closed_captioning_blue:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 460
    :cond_4
    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/brightcove/player/R$string;->closed_captioning_magenta_tag:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 461
    sget v0, Lcom/brightcove/player/R$color;->closed_captioning_magenta:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 462
    :cond_5
    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/brightcove/player/R$string;->closed_captioning_white_tag:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 463
    sget v0, Lcom/brightcove/player/R$color;->closed_captioning_white:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 464
    :cond_6
    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/brightcove/player/R$string;->closed_captioning_black_tag:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 465
    sget v0, Lcom/brightcove/player/R$color;->closed_captioning_black:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 468
    :cond_7
    const/high16 v0, -0x1000000

    goto/16 :goto_0
.end method

.method private resetButtons(Landroid/widget/RadioButton;)V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->colorButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 473
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 475
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 476
    return-void
.end method

.method private setBuilderColor(I)V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->optionsType:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->TEXT_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    if-ne v0, v1, :cond_1

    .line 480
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setTextColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->optionsType:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->EDGE_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    if-ne v0, v1, :cond_2

    .line 482
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setEdgeColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    goto :goto_0

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->optionsType:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->BACKGROUND:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    if-ne v0, v1, :cond_3

    .line 484
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setBackgroundColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    goto :goto_0

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->optionsType:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->HIGHLIGHT:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    if-ne v0, v1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setHighlightColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->opacityRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Color selected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    check-cast p1, Landroid/widget/RadioButton;

    .line 424
    invoke-direct {p0, p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->getSelectedColor(Landroid/widget/RadioButton;)I

    move-result v1

    .line 425
    invoke-direct {p0, v1, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->getColorWithOpacity(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->setBuilderColor(I)V

    .line 426
    invoke-direct {p0, p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->resetButtons(Landroid/widget/RadioButton;)V

    .line 427
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->updateCaptions()V

    .line 428
    return-void
.end method
