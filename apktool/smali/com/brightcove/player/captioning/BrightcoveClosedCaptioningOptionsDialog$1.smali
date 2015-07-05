.class Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;


# direct methods
.method constructor <init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected createColorSelection(Landroid/view/View;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)Landroid/widget/RadioGroup;
    .locals 5

    .prologue
    .line 211
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_color_selector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 212
    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_selector:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 213
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getChildRadioButtons(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v2

    .line 215
    new-instance v3, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;

    iget-object v4, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-direct {v3, v4, v2, p2, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;-><init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;Ljava/util/List;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;Landroid/widget/RadioGroup;)V

    .line 217
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 218
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 221
    :cond_0
    return-object v0
.end method

.method protected createEdgeSelection(Landroid/view/View;)Landroid/widget/RadioGroup;
    .locals 4

    .prologue
    .line 240
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_edge_type_selector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 241
    new-instance v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$EdgeTypeSelectorClickListener;

    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    sget-object v3, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->EDGE_TYPE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-direct {v1, v2, v3}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$EdgeTypeSelectorClickListener;-><init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)V

    .line 242
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 243
    return-object v0
.end method

.method protected createOpacitySelection(Landroid/view/View;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)Landroid/widget/RadioGroup;
    .locals 3

    .prologue
    .line 225
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_selector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 226
    new-instance v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;

    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-direct {v1, v2, p2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;-><init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)V

    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 231
    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->TEXT_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    if-ne p2, v1, :cond_0

    .line 232
    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_none:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_semi_transparent_light:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :cond_0
    return-object v0
.end method

.method protected getBuilderCurrentColor(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 336
    .line 338
    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$3;->$SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType:[I

    invoke-virtual {p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 352
    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$100()Ljava/lang/String;

    const-string v1, "Cannot get the color of %s. It is not a color."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 359
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getTextColor()I

    move-result v0

    goto :goto_0

    .line 343
    :pswitch_1
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getEdgeColor()I

    move-result v0

    goto :goto_0

    .line 346
    :pswitch_2
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getHighlightColor()I

    move-result v0

    goto :goto_0

    .line 349
    :pswitch_3
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getBackgroundColor()I

    move-result v0

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getBuilderCurrentOpacity(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 363
    .line 365
    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$3;->$SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType:[I

    invoke-virtual {p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 379
    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$100()Ljava/lang/String;

    const-string v1, "Cannot get the color of %s. It is not a color."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 382
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    return v0

    .line 367
    :pswitch_0
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getTextColor()I

    move-result v0

    goto :goto_0

    .line 370
    :pswitch_1
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getEdgeColor()I

    move-result v0

    goto :goto_0

    .line 373
    :pswitch_2
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getHighlightColor()I

    move-result v0

    goto :goto_0

    .line 376
    :pswitch_3
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getBackgroundColor()I

    move-result v0

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 138
    mul-int/lit8 v0, p1, 0x64

    add-int/2addr v0, p2

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$000(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    iget-object v0, v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->CLOSED_CAPTIONING_OPTIONS_CHILD_VIEWS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 157
    invoke-virtual {p0, p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->getGroup(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 199
    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$100()Ljava/lang/String;

    .line 202
    :goto_1
    return-object v1

    .line 159
    :sswitch_0
    const-string v3, "Font"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "Text Size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "Text Color"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "Edge Type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "Edge Color"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "Highlight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "Background"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :pswitch_0
    move-object v0, v1

    .line 161
    check-cast v0, Landroid/widget/RadioGroup;

    .line 162
    new-instance v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$FontChangedListener;

    iget-object v3, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-direct {v2, v3}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$FontChangedListener;-><init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 163
    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->selectCurrentFont(Landroid/widget/RadioGroup;)V

    goto :goto_1

    .line 166
    :pswitch_1
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_text_size_selector:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 167
    new-instance v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$TextSizeChangedListener;

    iget-object v3, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-direct {v2, v3}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$TextSizeChangedListener;-><init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->selectCurrentTextSize(Landroid/widget/RadioGroup;)V

    goto :goto_1

    .line 171
    :pswitch_2
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->TEXT_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v1, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->createColorSelection(Landroid/view/View;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)Landroid/widget/RadioGroup;

    move-result-object v0

    .line 172
    sget-object v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->TEXT_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->createOpacitySelection(Landroid/view/View;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)Landroid/widget/RadioGroup;

    move-result-object v2

    .line 173
    sget-object v3, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->TEXT_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v0, v3}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->selectCurrentColor(Landroid/widget/RadioGroup;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)V

    .line 174
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->TEXT_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v2, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->selectCurrentOpacity(Landroid/widget/RadioGroup;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)V

    goto/16 :goto_1

    .line 177
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->createEdgeSelection(Landroid/view/View;)Landroid/widget/RadioGroup;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->selectCurrentEdgeType(Landroid/widget/RadioGroup;)V

    goto/16 :goto_1

    .line 181
    :pswitch_4
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->EDGE_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v1, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->createColorSelection(Landroid/view/View;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)Landroid/widget/RadioGroup;

    move-result-object v0

    .line 182
    sget-object v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->EDGE_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->createOpacitySelection(Landroid/view/View;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)Landroid/widget/RadioGroup;

    move-result-object v2

    .line 183
    sget-object v3, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->EDGE_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v0, v3}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->selectCurrentColor(Landroid/widget/RadioGroup;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)V

    .line 184
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->EDGE_COLOR:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v2, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->selectCurrentOpacity(Landroid/widget/RadioGroup;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)V

    goto/16 :goto_1

    .line 187
    :pswitch_5
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->HIGHLIGHT:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v1, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->createColorSelection(Landroid/view/View;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)Landroid/widget/RadioGroup;

    move-result-object v0

    .line 188
    sget-object v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->HIGHLIGHT:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->createOpacitySelection(Landroid/view/View;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)Landroid/widget/RadioGroup;

    move-result-object v2

    .line 189
    sget-object v3, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->HIGHLIGHT:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v0, v3}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->selectCurrentColor(Landroid/widget/RadioGroup;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)V

    .line 190
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->HIGHLIGHT:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v2, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->selectCurrentOpacity(Landroid/widget/RadioGroup;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)V

    goto/16 :goto_1

    .line 193
    :pswitch_6
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->BACKGROUND:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v1, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->createColorSelection(Landroid/view/View;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)Landroid/widget/RadioGroup;

    move-result-object v0

    .line 194
    sget-object v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->BACKGROUND:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->createOpacitySelection(Landroid/view/View;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)Landroid/widget/RadioGroup;

    move-result-object v2

    .line 195
    sget-object v3, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->BACKGROUND:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v0, v3}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->selectCurrentColor(Landroid/widget/RadioGroup;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)V

    .line 196
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;->BACKGROUND:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;

    invoke-virtual {p0, v2, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->selectCurrentOpacity(Landroid/widget/RadioGroup;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)V

    goto/16 :goto_1

    .line 159
    :sswitch_data_0
    .sparse-switch
        -0x7eb24c43 -> :sswitch_3
        -0x7487e150 -> :sswitch_2
        -0x588b64c0 -> :sswitch_4
        0x21806f -> :sswitch_0
        0x276a314e -> :sswitch_6
        0x36135314 -> :sswitch_1
        0x4ed7ac94 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    iget-object v0, v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->CLOSED_CAPTIONING_OPTIONS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    iget-object v0, v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->CLOSED_CAPTIONING_OPTIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 133
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$000(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 149
    sget v1, Lcom/brightcove/player/R$layout;->closed_captioning_options_group_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 150
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_group_title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    iget-object v1, v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->CLOSED_CAPTIONING_OPTIONS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-object v2
.end method

.method protected getMapColorsToTags()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->colorToTagMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$300(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    new-instance v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;

    invoke-direct {v1, p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;-><init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;)V

    # setter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->colorToTagMap:Landroid/util/SparseArray;
    invoke-static {v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$302(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->colorToTagMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$300(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method protected selectCurrentColor(Landroid/widget/RadioGroup;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 278
    invoke-virtual {p0, p2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->getBuilderCurrentColor(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)I

    move-result v0

    .line 279
    invoke-virtual {p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->getMapColorsToTags()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 281
    if-eqz v0, :cond_0

    .line 282
    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$100()Ljava/lang/String;

    const-string v1, "Checking color button with tag %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 283
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 285
    :cond_0
    return-void
.end method

.method protected selectCurrentEdgeType(Landroid/widget/RadioGroup;)V
    .locals 2

    .prologue
    .line 318
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$2;

    const-class v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$2;-><init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;Ljava/lang/Class;)V

    .line 327
    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getEdgeAttribute()Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    move-result-object v1

    .line 328
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 333
    :cond_0
    return-void
.end method

.method protected selectCurrentFont(Landroid/widget/RadioGroup;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 249
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-ne v0, v1, :cond_1

    .line 250
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_font_selection_normal:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    if-ne v0, v1, :cond_2

    .line 252
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_font_selection_monospace:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 253
    :cond_2
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    if-ne v0, v1, :cond_3

    .line 254
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_font_selection_sans_serif:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 255
    :cond_3
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    if-ne v0, v1, :cond_0

    .line 256
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_font_selection_serif:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method protected selectCurrentOpacity(Landroid/widget/RadioGroup;Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)V
    .locals 2

    .prologue
    .line 304
    invoke-virtual {p0, p2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->getBuilderCurrentOpacity(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;)I

    move-result v0

    .line 306
    sget v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->OPACITY_TRANSPARENT:I

    if-ne v0, v1, :cond_1

    .line 307
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_none:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    sget v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->OPACITY_SEMI_TRANSPARENT:I

    if-ne v0, v1, :cond_2

    .line 309
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_semi_transparent:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 310
    :cond_2
    sget v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->OPACITY_SEMI_TRANSPARENT_LIGHT:I

    if-ne v0, v1, :cond_3

    .line 311
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_semi_transparent_light:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 312
    :cond_3
    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 313
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_opacity_opaque:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method protected selectCurrentTextSize(Landroid/widget/RadioGroup;)V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getTextSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x40e00000    # 7.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 264
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_text_size_50_percent:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x41280000    # 10.5f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 266
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_text_size_75_percent:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 268
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_text_size_100_percent:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 269
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x41a80000    # 21.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    .line 270
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_text_size_150_percent:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 271
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x41e00000    # 28.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 272
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_text_size_200_percent:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method
