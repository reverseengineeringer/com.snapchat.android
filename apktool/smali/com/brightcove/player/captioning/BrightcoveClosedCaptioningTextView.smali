.class public Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private captionsStyle:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

.field private edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

.field private edgeColor:I

.field private edgeSize:F

.field private playerHeightPx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->NONE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeColor:I

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeSize:F

    .line 50
    invoke-virtual {p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->initCaptionsTextView()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->NONE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeColor:I

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeSize:F

    .line 55
    invoke-virtual {p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->initCaptionsTextView()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->NONE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeColor:I

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeSize:F

    .line 60
    invoke-virtual {p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->initCaptionsTextView()V

    .line 61
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 126
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->UNIFORM:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    if-ne v0, v1, :cond_0

    .line 127
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 128
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method protected initCaptionsTextView()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setSingleLine(Z)V

    .line 65
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setPadding(IIII)V

    .line 66
    invoke-virtual {p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->newBuilder(Landroid/content/Context;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->create()Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setStyle(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;)V

    .line 67
    return-void
.end method

.method public setEdgeAttribute(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    .line 71
    return-void
.end method

.method public setEdgeColor(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeColor:I

    .line 75
    return-void
.end method

.method public setEdgeSize(F)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->DROP_SHADOW:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->UNIFORM:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    if-ne v0, v1, :cond_1

    .line 79
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeSize:F

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_1
    iput p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeSize:F

    goto :goto_0
.end method

.method public setStyle(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x3c23d70a    # 0.01f

    const/4 v3, 0x0

    .line 90
    iget v0, p1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->edgeColor:I

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setEdgeColor(I)V

    .line 91
    iget-object v0, p1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setEdgeAttribute(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;)V

    .line 92
    iget v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeSize:F

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setEdgeSize(F)V

    .line 94
    iget v0, p1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->highlightColor:I

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setBackgroundColor(I)V

    .line 95
    iget-object v0, p1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    const v0, 0x3d5a511a    # 0.0533f

    iget v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->playerHeightPx:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->textSize:F

    const/high16 v2, 0x41600000    # 14.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v5, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setTextSize(IF)V

    .line 99
    iget v0, p1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->textColor:I

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setTextColor(I)V

    .line 101
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->captionsStyle:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    .line 103
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->NONE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    if-ne v0, v1, :cond_1

    .line 104
    invoke-virtual {p0, v3, v3, v3, v5}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setShadowLayer(FFFI)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->RAISED:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    if-ne v0, v1, :cond_2

    .line 106
    iget v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeSize:F

    iget v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeColor:I

    invoke-virtual {p0, v4, v0, v3, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->DEPRESSED:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    if-ne v0, v1, :cond_3

    .line 108
    iget v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeSize:F

    neg-float v0, v0

    iget v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeColor:I

    invoke-virtual {p0, v4, v0, v3, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->UNIFORM:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    if-ne v0, v1, :cond_4

    .line 110
    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeColor:I

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sget-object v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->DROP_SHADOW:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    if-ne v0, v1, :cond_0

    .line 112
    iget v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeSize:F

    iget v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeSize:F

    iget v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->edgeColor:I

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public setVideoPlayerHeightPx(I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView;->playerHeightPx:I

    .line 87
    return-void
.end method
