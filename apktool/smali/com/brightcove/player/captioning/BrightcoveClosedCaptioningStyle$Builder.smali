.class public Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mEdgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

.field private mEdgeColor:I

.field private mHighlightColor:I

.field private mTextColor:I

.field private mTextSize:F

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mBackgroundColor:I

    .line 60
    iput v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mHighlightColor:I

    .line 61
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mTypeface:Landroid/graphics/Typeface;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mTextColor:I

    .line 63
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mTextSize:F

    .line 64
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->DEFAULT_EDGE_ATTRIBUTE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mEdgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    .line 65
    iput v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mEdgeColor:I

    .line 66
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    .locals 1

    .prologue
    .line 74
    iget v0, p1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setBackgroundColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 75
    iget v0, p1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->highlightColor:I

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setHighlightColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 76
    iget-object v0, p1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setTypeface(Landroid/graphics/Typeface;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 77
    iget v0, p1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->textColor:I

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setTextColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 78
    iget v0, p1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->textSize:F

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setTextSize(F)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 79
    iget-object v0, p1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setEdgeAttribute(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 80
    iget v0, p1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->edgeColor:I

    invoke-virtual {p0, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setEdgeColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 81
    return-object p0
.end method

.method public create()Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;
    .locals 8

    .prologue
    .line 69
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    iget v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mBackgroundColor:I

    iget v2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mHighlightColor:I

    iget-object v3, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mTypeface:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mTextColor:I

    iget v5, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mTextSize:F

    iget-object v6, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mEdgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    iget v7, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mEdgeColor:I

    invoke-direct/range {v0 .. v7}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;-><init>(IILandroid/graphics/Typeface;IFLcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;I)V

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mBackgroundColor:I

    return v0
.end method

.method public getEdgeAttribute()Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mEdgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    return-object v0
.end method

.method public getEdgeColor()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mEdgeColor:I

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mHighlightColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mTextColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mTextSize:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public setBackgroundColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mBackgroundColor:I

    .line 90
    return-object p0
.end method

.method public setEdgeAttribute(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mEdgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    .line 135
    return-object p0
.end method

.method public setEdgeColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mEdgeColor:I

    .line 144
    return-object p0
.end method

.method public setHighlightColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mHighlightColor:I

    .line 99
    return-object p0
.end method

.method public setTextColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mTextColor:I

    .line 117
    return-object p0
.end method

.method public setTextSize(F)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mTextSize:F

    .line 126
    return-object p0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->mTypeface:Landroid/graphics/Typeface;

    .line 108
    return-object p0
.end method
