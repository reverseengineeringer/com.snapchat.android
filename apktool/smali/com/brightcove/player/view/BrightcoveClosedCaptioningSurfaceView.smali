.class public Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;
.super Lcom/brightcove/player/view/BrightcoveSurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/media/SubtitleController$Anchor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private subtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

.field private subtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/brightcove/player/view/BrightcoveSurfaceView;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 72
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 74
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1, p1}, Landroid/media/SubtitleTrack$RenderingWidget;->draw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public getSubtitleLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->onAttachedToWindow()V

    .line 54
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v0}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    .line 57
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->onDetachedFromWindow()V

    .line 63
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v0}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    .line 66
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 41
    invoke-super/range {p0 .. p5}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->onLayout(ZIIII)V

    .line 43
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 45
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 46
    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v2, v0, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setSize(II)V

    .line 48
    :cond_0
    return-void
.end method

.method public setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-ne v0, p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->isAttachedToWindow()Z

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v1, :cond_2

    .line 90
    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    .line 97
    :cond_2
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    .line 99
    if-eqz p1, :cond_5

    .line 100
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-nez v1, :cond_3

    .line 101
    new-instance v1, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView$1;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView$1;-><init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;)V

    iput-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 109
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->setWillNotDraw(Z)V

    .line 110
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->subtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {p1, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    .line 112
    if-eqz v0, :cond_4

    .line 113
    invoke-interface {p1}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    .line 114
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->requestLayout()V

    .line 120
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->invalidate()V

    goto :goto_0

    .line 117
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->setWillNotDraw(Z)V

    goto :goto_1
.end method
