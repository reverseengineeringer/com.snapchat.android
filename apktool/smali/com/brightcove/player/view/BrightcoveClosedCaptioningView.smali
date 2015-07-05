.class public Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/Component;


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "captionsAvailable"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "didLoadCaptions",
        "progress",
        "setCaptionsState",
        "toggleClosedCaptions"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$5;,
        Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;,
        Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_HORIZONTAL_GRAVITY:I = 0x11

.field protected static final DEFAULT_TEXT_ROWS:I = 0x2

.field public static final DEFAULT_VERTICAL_GRAVITY:I = 0x10

.field protected static final HORIZONTAL_JUSTIFY_CENTER:I = 0x2

.field protected static final HORIZONTAL_JUSTIFY_LEFT:I = 0x0

.field protected static final HORIZONTAL_JUSTIFY_RIGHT:I = 0x1

.field protected static final SAFE_AREA:F = 0.1f

.field protected static final TAG:Ljava/lang/String;

.field protected static final VERTICAL_JUSTIFY_BOTTOM:I = 0x1

.field protected static final VERTICAL_JUSTIFY_CENTER:I = 0x2

.field protected static final VERTICAL_JUSTIFY_TOP:I


# instance fields
.field protected beginTimeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected blockParams:Landroid/widget/LinearLayout$LayoutParams;

.field protected currentCaptionBlock:Landroid/widget/LinearLayout;

.field protected currentMode:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

.field protected didLoadCaptionsLoadListener:Lcom/brightcove/player/event/EventListener;

.field protected eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field protected inflater:Landroid/view/LayoutInflater;

.field protected lastProgressTime:Ljava/lang/Integer;

.field protected progressListener:Lcom/brightcove/player/event/EventListener;

.field protected progressListenerToken:I

.field protected setCaptionsStateListener:Lcom/brightcove/player/event/EventListener;

.field protected toggleClosedCaptionsListener:Lcom/brightcove/player/event/EventListener;

.field protected videoPlayer:Lcom/brightcove/player/view/BaseVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->progressListenerToken:I

    .line 123
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->lastProgressTime:Ljava/lang/Integer;

    .line 736
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$1;

    invoke-direct {v0, p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$1;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->progressListener:Lcom/brightcove/player/event/EventListener;

    .line 764
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$2;

    invoke-direct {v0, p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$2;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->didLoadCaptionsLoadListener:Lcom/brightcove/player/event/EventListener;

    .line 785
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$3;

    invoke-direct {v0, p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$3;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->setCaptionsStateListener:Lcom/brightcove/player/event/EventListener;

    .line 792
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;

    invoke-direct {v0, p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->toggleClosedCaptionsListener:Lcom/brightcove/player/event/EventListener;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->progressListenerToken:I

    .line 123
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->lastProgressTime:Ljava/lang/Integer;

    .line 736
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$1;

    invoke-direct {v0, p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$1;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->progressListener:Lcom/brightcove/player/event/EventListener;

    .line 764
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$2;

    invoke-direct {v0, p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$2;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->didLoadCaptionsLoadListener:Lcom/brightcove/player/event/EventListener;

    .line 785
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$3;

    invoke-direct {v0, p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$3;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->setCaptionsStateListener:Lcom/brightcove/player/event/EventListener;

    .line 792
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;

    invoke-direct {v0, p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->toggleClosedCaptionsListener:Lcom/brightcove/player/event/EventListener;

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->progressListenerToken:I

    .line 123
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->lastProgressTime:Ljava/lang/Integer;

    .line 736
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$1;

    invoke-direct {v0, p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$1;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->progressListener:Lcom/brightcove/player/event/EventListener;

    .line 764
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$2;

    invoke-direct {v0, p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$2;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->didLoadCaptionsLoadListener:Lcom/brightcove/player/event/EventListener;

    .line 785
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$3;

    invoke-direct {v0, p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$3;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->setCaptionsStateListener:Lcom/brightcove/player/event/EventListener;

    .line 792
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;

    invoke-direct {v0, p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$4;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->toggleClosedCaptionsListener:Lcom/brightcove/player/event/EventListener;

    .line 150
    return-void
.end method


# virtual methods
.method protected applyRegionLayout(Landroid/widget/LinearLayout;Lcom/brightcove/player/model/TTMLDocument;Lcom/brightcove/player/captioning/BrightcoveClosedCaption;I)V
    .locals 2

    .prologue
    .line 641
    invoke-virtual {p0, p3, p2}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getCaptionDisplayAlignAsGravity(Lcom/brightcove/player/captioning/BrightcoveClosedCaption;Lcom/brightcove/player/model/TTMLDocument;)I

    move-result v0

    .line 642
    or-int/2addr v0, p4

    .line 644
    invoke-virtual {p0, p1}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getLayoutParamsForBlock(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 645
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 646
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    return-void
.end method

.method protected applyRegionLayout(Landroid/widget/LinearLayout;Lcom/brightcove/player/model/WebVTTDocument;Lcom/brightcove/player/captioning/BrightcoveClosedCaption;I)V
    .locals 2

    .prologue
    .line 650
    invoke-virtual {p0, p3, p2}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getCaptionDisplayAlignAsGravity(Lcom/brightcove/player/captioning/BrightcoveClosedCaption;Lcom/brightcove/player/model/WebVTTDocument;)I

    move-result v0

    .line 651
    or-int/2addr v0, p4

    .line 653
    invoke-virtual {p0, p1}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getLayoutParamsForBlock(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 654
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 655
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    return-void
.end method

.method protected buildCaptionBlock(Lcom/brightcove/player/model/TTMLDocument;Lcom/brightcove/player/captioning/BrightcoveClosedCaption;)Landroid/view/ViewGroup;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 515
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/brightcove/player/R$layout;->caption_block:I

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 516
    invoke-virtual {p0, p2}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getCaptionTextAlignAsGravity(Lcom/brightcove/player/captioning/BrightcoveClosedCaption;)I

    move-result v5

    .line 518
    invoke-virtual {p0, v0, p1, p2, v5}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->applyRegionLayout(Landroid/widget/LinearLayout;Lcom/brightcove/player/model/TTMLDocument;Lcom/brightcove/player/captioning/BrightcoveClosedCaption;I)V

    .line 520
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    invoke-virtual {p2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->getLines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 523
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/brightcove/player/R$layout;->caption_text:I

    invoke-virtual {v2, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;

    .line 529
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 530
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_1

    .line 531
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brightcove/player/model/Span;

    .line 532
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v3, v8}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->buildSpannableString(Landroid/widget/TextView;Lcom/brightcove/player/model/Span;F)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 530
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 535
    :cond_1
    invoke-virtual {p0, v7}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->collapseWhitespace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    invoke-virtual {v2, v5}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setGravity(I)V

    .line 538
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 541
    :cond_2
    return-object v0
.end method

.method protected buildCaptionBlock(Lcom/brightcove/player/model/WebVTTDocument;Lcom/brightcove/player/captioning/BrightcoveClosedCaption;)Landroid/view/ViewGroup;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 545
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/brightcove/player/R$layout;->caption_block:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 546
    invoke-virtual {p0, p2}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getCaptionTextAlignAsGravity(Lcom/brightcove/player/captioning/BrightcoveClosedCaption;)I

    move-result v2

    .line 548
    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->applyRegionLayout(Landroid/widget/LinearLayout;Lcom/brightcove/player/model/WebVTTDocument;Lcom/brightcove/player/captioning/BrightcoveClosedCaption;I)V

    .line 550
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 552
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/brightcove/player/R$layout;->caption_text:I

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;

    .line 553
    invoke-virtual {p2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    invoke-virtual {v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setGravity(I)V

    .line 555
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 557
    return-object v0
.end method

.method protected buildSpannableString(Landroid/widget/TextView;Lcom/brightcove/player/model/Span;F)Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 677
    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const-string v0, ""

    .line 726
    :goto_0
    return-object v0

    .line 681
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 682
    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 683
    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getFontStyle()Lcom/brightcove/player/model/StyledElement$FontStyle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 686
    sget-object v2, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$5;->$SwitchMap$com$brightcove$player$model$StyledElement$FontStyle:[I

    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getFontStyle()Lcom/brightcove/player/model/StyledElement$FontStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brightcove/player/model/StyledElement$FontStyle;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 693
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getFontWeight()Lcom/brightcove/player/model/StyledElement$FontWeight;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 694
    sget-object v2, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$5;->$SwitchMap$com$brightcove$player$model$StyledElement$FontWeight:[I

    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getFontWeight()Lcom/brightcove/player/model/StyledElement$FontWeight;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brightcove/player/model/StyledElement$FontWeight;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 701
    :cond_2
    :goto_2
    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getTextDecoration()Lcom/brightcove/player/model/StyledElement$TextDecoration;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 702
    sget-object v2, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$5;->$SwitchMap$com$brightcove$player$model$StyledElement$TextDecoration:[I

    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getTextDecoration()Lcom/brightcove/player/model/StyledElement$TextDecoration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brightcove/player/model/StyledElement$TextDecoration;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    .line 709
    :cond_3
    :goto_3
    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 710
    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 711
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v3, v6, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 714
    :cond_4
    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getBackgroundColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 715
    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getBackgroundColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 716
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v3, v6, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 719
    :cond_5
    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getFontSize()Lcom/brightcove/player/model/Length;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 720
    invoke-virtual {p2}, Lcom/brightcove/player/model/Span;->getFontSize()Lcom/brightcove/player/model/Length;

    move-result-object v2

    .line 721
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v2}, Lcom/brightcove/player/model/Length;->getValue()D

    move-result-wide v4

    double-to-int v2, v4

    invoke-direct {v3, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v3, v6, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 724
    :cond_6
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v2, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0, v2, v6, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 688
    :pswitch_0
    new-instance v2, Landroid/text/style/StyleSpan;

    sget v3, Lcom/brightcove/player/R$style;->caption_text_italic:I

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v2, v6, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 696
    :pswitch_1
    new-instance v2, Landroid/text/style/StyleSpan;

    sget v3, Lcom/brightcove/player/R$style;->caption_text_bold:I

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v2, v6, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 704
    :pswitch_2
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v2, v6, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 694
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 702
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method protected cancelProgressListener()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 591
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->progressListenerToken:I

    if-eq v0, v3, :cond_0

    .line 592
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "progress"

    iget v2, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->progressListenerToken:I

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    .line 593
    iput v3, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->progressListenerToken:I

    .line 595
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->OFF:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->setMode(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;)V

    .line 249
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->cancelProgressListener()V

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->emitCaptionsAvailable(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->removeAllViews()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 260
    :cond_1
    return-void
.end method

.method protected collapseWhitespace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 612
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "\n"

    aput-object v1, v0, v3

    const-string v1, "\r"

    aput-object v1, v0, v4

    const-string v1, "\t"

    aput-object v1, v0, v5

    const-string v1, "  "

    aput-object v1, v0, v6

    .line 618
    new-array v1, v2, [Ljava/lang/CharSequence;

    const-string v2, " "

    aput-object v2, v1, v3

    const-string v2, " "

    aput-object v2, v1, v4

    const-string v2, " "

    aput-object v2, v1, v5

    const-string v2, " "

    aput-object v2, v1, v6

    .line 625
    invoke-static {p1, v0, v1}, Lcom/brightcove/player/util/StringUtil;->replaceAll(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method doUpdateCaption(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getMode()Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    move-result-object v0

    sget-object v1, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->ON:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    if-ne v0, v1, :cond_0

    .line 746
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->lastProgressTime:Ljava/lang/Integer;

    .line 747
    if-nez p1, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    invoke-virtual {p0, p1}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->findCaptionForPosition(Ljava/lang/Integer;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 751
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->currentCaptionBlock:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 752
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->currentCaptionBlock:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 754
    :cond_2
    if-eqz v0, :cond_3

    .line 755
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 757
    :cond_3
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->currentCaptionBlock:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method protected emitCaptionsAvailable(Z)V
    .locals 3

    .prologue
    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 602
    const-string v1, "boolean"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "captionsAvailable"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 604
    return-void
.end method

.method public findCaptionForPosition(Ljava/lang/Integer;)Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;->closedCaption:Lcom/brightcove/player/captioning/BrightcoveClosedCaption;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->getEndTime()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 289
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;->block:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->styleCaptions(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCaptionDisplayAlignAsGravity(Lcom/brightcove/player/captioning/BrightcoveClosedCaption;Lcom/brightcove/player/model/TTMLDocument;)I
    .locals 3

    .prologue
    .line 454
    const/16 v0, 0x10

    .line 456
    invoke-virtual {p0, p1, p2}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->resolveRegionForBlock(Lcom/brightcove/player/model/Block;Lcom/brightcove/player/model/TTMLDocument;)Lcom/brightcove/player/model/Region;

    move-result-object v1

    .line 457
    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {v1}, Lcom/brightcove/player/model/Region;->getDisplayAlign()Lcom/brightcove/player/model/Region$DisplayAlign;

    move-result-object v1

    .line 459
    if-eqz v1, :cond_0

    .line 460
    sget-object v2, Lcom/brightcove/player/model/Region$DisplayAlign;->BEFORE:Lcom/brightcove/player/model/Region$DisplayAlign;

    if-ne v1, v2, :cond_1

    .line 461
    const/16 v0, 0x30

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 462
    :cond_1
    sget-object v2, Lcom/brightcove/player/model/Region$DisplayAlign;->AFTER:Lcom/brightcove/player/model/Region$DisplayAlign;

    if-ne v1, v2, :cond_0

    .line 463
    const/16 v0, 0x50

    goto :goto_0
.end method

.method protected getCaptionDisplayAlignAsGravity(Lcom/brightcove/player/captioning/BrightcoveClosedCaption;Lcom/brightcove/player/model/WebVTTDocument;)I
    .locals 1

    .prologue
    .line 472
    const/16 v0, 0x50

    return v0
.end method

.method public getCaptionLineCount()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->currentCaptionBlock:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->currentCaptionBlock:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCaptionLineSizeHeight()I
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->currentCaptionBlock:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->currentCaptionBlock:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->currentCaptionBlock:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getCaptionTextAlignAsGravity(Lcom/brightcove/player/captioning/BrightcoveClosedCaption;)I
    .locals 3

    .prologue
    .line 428
    const/16 v0, 0x11

    .line 430
    invoke-virtual {p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->getTextAlign()Lcom/brightcove/player/model/StyledElement$TextAlign;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->getTextAlign()Lcom/brightcove/player/model/StyledElement$TextAlign;

    move-result-object v1

    sget-object v2, Lcom/brightcove/player/model/StyledElement$TextAlign;->LEFT:Lcom/brightcove/player/model/StyledElement$TextAlign;

    if-ne v1, v2, :cond_1

    .line 432
    const/4 v0, 0x3

    .line 438
    :cond_0
    :goto_0
    return v0

    .line 433
    :cond_1
    invoke-virtual {p1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->getTextAlign()Lcom/brightcove/player/model/StyledElement$TextAlign;

    move-result-object v1

    sget-object v2, Lcom/brightcove/player/model/StyledElement$TextAlign;->RIGHT:Lcom/brightcove/player/model/StyledElement$TextAlign;

    if-ne v1, v2, :cond_0

    .line 434
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getLayoutParamsForBlock(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 490
    if-nez v1, :cond_0

    .line 491
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 493
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getMode()Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->currentMode:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    return-object v0
.end method

.method public getSafeAreaHeight()I
    .locals 2

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 209
    :cond_0
    if-gtz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getHeight()I

    move-result v0

    .line 213
    :cond_1
    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getSafeAreaWidth()I
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_0

    .line 184
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 186
    :cond_0
    if-gtz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getWidth()I

    move-result v0

    .line 190
    :cond_1
    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public initialize(Lcom/brightcove/player/event/EventEmitter;)V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->initialize(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/view/BaseVideoView;)V

    .line 223
    return-void
.end method

.method public initialize(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/view/BaseVideoView;)V
    .locals 3

    .prologue
    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/brightcove/player/event/RegisteringEventEmitter;->build(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)Lcom/brightcove/player/event/RegisteringEventEmitter;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 228
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->inflater:Landroid/view/LayoutInflater;

    .line 229
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    .line 231
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "didLoadCaptions"

    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->didLoadCaptionsLoadListener:Lcom/brightcove/player/event/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 232
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "setCaptionsState"

    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->setCaptionsStateListener:Lcom/brightcove/player/event/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 233
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "toggleClosedCaptions"

    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->toggleClosedCaptionsListener:Lcom/brightcove/player/event/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 234
    iput-object p2, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->videoPlayer:Lcom/brightcove/player/view/BaseVideoView;

    .line 236
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->videoPlayer:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getClosedCaptioningController()Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->readClosedCaptioningState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->ON:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->currentMode:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    sget-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->OFF:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->currentMode:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 154
    return-void
.end method

.method public prepareDFXPCaptions(Lcom/brightcove/player/model/TTMLDocument;)V
    .locals 7

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->prepareLayout()V

    .line 329
    invoke-virtual {p1}, Lcom/brightcove/player/model/TTMLDocument;->getCaptions()Ljava/util/List;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->videoPlayer:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getClosedCaptioningController()Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->readClosedCaptioningState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->ON:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->setMode(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;)V

    .line 334
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->registerProgressListener()V

    .line 336
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->emitCaptionsAvailable(Z)V

    .line 345
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 347
    iget-object v3, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;

    .line 348
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;->block:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 349
    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;->block:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 338
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->emitCaptionsAvailable(Z)V

    .line 368
    :goto_1
    return-void

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 356
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;

    .line 357
    invoke-virtual {p0, p1, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->buildCaptionBlock(Lcom/brightcove/player/model/TTMLDocument;Lcom/brightcove/player/captioning/BrightcoveClosedCaption;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 359
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 360
    invoke-virtual {p0, v3}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->addView(Landroid/view/View;)V

    .line 361
    iget-object v4, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->getBeginTime()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;

    invoke-direct {v6, p0, v0, v3}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;Lcom/brightcove/player/captioning/BrightcoveClosedCaption;Landroid/view/ViewGroup;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 366
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;

    .line 367
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->getEndTime()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public prepareLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 564
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 567
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->blockParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 570
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->getInstance(Landroid/content/Context;)Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->getStyle()Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    .line 572
    sget v1, Lcom/brightcove/player/R$layout;->caption_block:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->currentCaptionBlock:Landroid/widget/LinearLayout;

    .line 574
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->currentCaptionBlock:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 575
    return-void
.end method

.method public prepareWebVTTCaptions(Lcom/brightcove/player/model/WebVTTDocument;)V
    .locals 7

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->prepareLayout()V

    .line 378
    invoke-virtual {p1}, Lcom/brightcove/player/model/WebVTTDocument;->getCaptions()Ljava/util/List;

    move-result-object v1

    .line 379
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->videoPlayer:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getClosedCaptioningController()Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->readClosedCaptioningState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    sget-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;->ON:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->setMode(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;)V

    .line 382
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->registerProgressListener()V

    .line 384
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->emitCaptionsAvailable(Z)V

    .line 393
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 394
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 395
    iget-object v3, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;

    .line 396
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;->block:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 397
    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;->block:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 386
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->emitCaptionsAvailable(Z)V

    .line 415
    :goto_1
    return-void

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 404
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;

    .line 405
    invoke-virtual {p0, p1, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->buildCaptionBlock(Lcom/brightcove/player/model/WebVTTDocument;Lcom/brightcove/player/captioning/BrightcoveClosedCaption;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 406
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 407
    invoke-virtual {p0, v3}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->addView(Landroid/view/View;)V

    .line 408
    iget-object v4, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->getBeginTime()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;

    invoke-direct {v6, p0, v0, v3}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;Lcom/brightcove/player/captioning/BrightcoveClosedCaption;Landroid/view/ViewGroup;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 413
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;

    .line 414
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->beginTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->getEndTime()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public refreshCaptions()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->lastProgressTime:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 815
    :goto_0
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->lastProgressTime:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->doUpdateCaption(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public refreshCaptions(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 818
    if-nez p1, :cond_0

    .line 822
    :goto_0
    return-void

    .line 821
    :cond_0
    invoke-virtual {p0, p1}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->doUpdateCaption(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected registerProgressListener()V
    .locals 3

    .prologue
    .line 582
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->progressListenerToken:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 583
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "progress"

    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->progressListener:Lcom/brightcove/player/event/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v0

    iput v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->progressListenerToken:I

    .line 585
    :cond_0
    return-void
.end method

.method protected resolveRegionForBlock(Lcom/brightcove/player/model/Block;Lcom/brightcove/player/model/TTMLDocument;)Lcom/brightcove/player/model/Region;
    .locals 3

    .prologue
    .line 659
    invoke-virtual {p1}, Lcom/brightcove/player/model/Block;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-virtual {p2}, Lcom/brightcove/player/model/TTMLDocument;->getRegions()Ljava/util/Map;

    move-result-object v1

    .line 662
    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Region;

    .line 673
    :goto_0
    return-object v0

    .line 666
    :cond_0
    invoke-virtual {p2}, Lcom/brightcove/player/model/TTMLDocument;->getBody()Lcom/brightcove/player/model/Block;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 667
    invoke-virtual {p2}, Lcom/brightcove/player/model/TTMLDocument;->getBody()Lcom/brightcove/player/model/Block;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/model/Block;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 669
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Region;

    goto :goto_0

    .line 673
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMode(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->currentMode:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode;

    .line 268
    return-void
.end method

.method protected styleCaptions(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 5

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->getInstance(Landroid/content/Context;)Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->getStyle()Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    move-result-object v4

    .line 304
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 305
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 307
    instance-of v0, v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 308
    check-cast v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;

    iget-object v3, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->videoPlayer:Lcom/brightcove/player/view/BaseVideoView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->videoPlayer:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v3}, Lcom/brightcove/player/view/BaseVideoView;->getRenderView()Lcom/brightcove/player/view/RenderView;

    move-result-object v3

    invoke-interface {v3}, Lcom/brightcove/player/view/RenderView;->getMeasuredHeight()I

    move-result v3

    :goto_1
    invoke-virtual {v0, v3}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setVideoPlayerHeightPx(I)V

    .line 309
    check-cast v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;

    invoke-virtual {v1, v4}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setStyle(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;)V

    .line 304
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 308
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 313
    :cond_2
    iget v0, v4, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 315
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 316
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 318
    return-object p1
.end method
