.class public Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "captionsStyleOptions"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$3;,
        Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$EdgeTypeSelectorClickListener;,
        Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$TextSizeChangedListener;,
        Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener;,
        Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener;,
        Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$FontChangedListener;,
        Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final CLOSED_CAPTIONING_OPTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final CLOSED_CAPTIONING_OPTIONS_CHILD_VIEWS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private closedCaptioningContainer:Landroid/widget/LinearLayout;

.field protected closedCaptioningOptionsListAdapter:Landroid/widget/ExpandableListAdapter;

.field private closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

.field private closedCaptioningTextView:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;

.field private colorToTagMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dialogView:Landroid/view/View;

.field private eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field private isHLS:Z

.field private onDoneButtonClickedListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 89
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Font"

    aput-object v1, v0, v3

    const-string v1, "Text Size"

    aput-object v1, v0, v4

    const-string v1, "Text Color"

    aput-object v1, v0, v5

    const-string v1, "Edge Type"

    aput-object v1, v0, v6

    const-string v1, "Edge Color"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Highlight"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Background"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->CLOSED_CAPTIONING_OPTIONS:Ljava/util/List;

    .line 99
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Integer;

    sget v1, Lcom/brightcove/player/R$layout;->closed_captioning_options_font_selection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lcom/brightcove/player/R$layout;->closed_captioning_options_text_size_selection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lcom/brightcove/player/R$layout;->closed_captioning_options_color_selection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lcom/brightcove/player/R$layout;->closed_captioning_options_edge_type_selection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    sget v1, Lcom/brightcove/player/R$layout;->closed_captioning_options_color_selection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/brightcove/player/R$layout;->closed_captioning_options_color_selection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/brightcove/player/R$layout;->closed_captioning_options_color_selection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->CLOSED_CAPTIONING_OPTIONS_CHILD_VIEWS:Ljava/util/List;

    .line 109
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    invoke-direct {v0, p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;-><init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)V

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningOptionsListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 638
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$2;

    invoke-direct {v0, p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$2;-><init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)V

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->onDoneButtonClickedListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->colorToTagMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$302(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->colorToTagMap:Landroid/util/SparseArray;

    return-object p1
.end method

.method protected static getChildRadioButtons(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 622
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 624
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 625
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 627
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 628
    check-cast v0, Landroid/view/ViewGroup;

    .line 629
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getChildRadioButtons(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 624
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 630
    :cond_1
    instance-of v3, v0, Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    .line 631
    check-cast v0, Landroid/widget/RadioButton;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 635
    :cond_2
    return-object v2
.end method


# virtual methods
.method protected getStyle()Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->create()Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 687
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 688
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 689
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x3f733333    # 0.95f

    .line 651
    sget v0, Lcom/brightcove/player/R$layout;->closed_captioning_options_dialog:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->dialogView:Landroid/view/View;

    .line 652
    invoke-virtual {p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->context:Landroid/content/Context;

    .line 654
    invoke-virtual {p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isHLS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->isHLS:Z

    .line 656
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->newBuilder(Landroid/content/Context;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->getInstance(Landroid/content/Context;)Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->getStyle()Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->copyFrom(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 658
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->dialogView:Landroid/view/View;

    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_example_captions_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningContainer:Landroid/widget/LinearLayout;

    .line 659
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->dialogView:Landroid/view/View;

    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_example_captions:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningTextView:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;

    .line 662
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 663
    invoke-virtual {p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 664
    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningTextView:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setVideoPlayerHeightPx(I)V

    .line 666
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->dialogView:Landroid/view/View;

    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 668
    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningOptionsListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 670
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->dialogView:Landroid/view/View;

    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_done_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 672
    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->onDoneButtonClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 675
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 677
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->dialogView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 678
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->dialogView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 680
    invoke-virtual {p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->updateCaptions()V

    .line 682
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->dialogView:Landroid/view/View;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->getInstance(Landroid/content/Context;)Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getStyle()Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->setStyle(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;)V

    .line 695
    return-void
.end method

.method public setEventEmitter(Lcom/brightcove/player/event/EventEmitter;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 647
    return-void
.end method

.method protected updateCaptions()V
    .locals 3

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->isHLS:Z

    if-eqz v0, :cond_0

    .line 703
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 704
    const-string v1, "captionFont"

    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string v1, "captionFontSize"

    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getTextSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string v1, "captionFontColor"

    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getTextColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    const-string v1, "captionEdgeType"

    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getEdgeAttribute()Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string v1, "captionEdgeColor"

    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getEdgeColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string v1, "captionHighlight"

    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getHighlightColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string v1, "captionBackground"

    iget-object v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->getBackgroundColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "captionsStyleOptions"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 724
    :goto_0
    return-void

    .line 715
    :cond_0
    invoke-virtual {p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getStyle()Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    move-result-object v0

    .line 717
    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningContainer:Landroid/widget/LinearLayout;

    iget v2, v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 718
    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningTextView:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setStyle(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;)V

    .line 720
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningTextView:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->invalidate()V

    .line 721
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 722
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->dialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method
