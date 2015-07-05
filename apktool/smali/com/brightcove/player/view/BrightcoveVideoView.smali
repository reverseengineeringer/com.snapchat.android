.class public Lcom/brightcove/player/view/BrightcoveVideoView;
.super Lcom/brightcove/player/view/BaseVideoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/view/BrightcoveVideoView$1;,
        Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

.field protected brightcoveSurfaceViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/brightcove/player/view/BrightcoveSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field protected surfaceListener:Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/brightcove/player/view/BaseVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/brightcove/player/view/BaseVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getRenderView()Lcom/brightcove/player/view/RenderView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceViewClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 66
    const-class v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceViewClass:Ljava/lang/Class;

    .line 73
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceViewClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/view/BrightcoveSurfaceView;

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    .line 76
    new-instance v0, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;Lcom/brightcove/player/view/BrightcoveVideoView$1;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->surfaceListener:Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;

    .line 77
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->surfaceListener:Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    :goto_1
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->addView(Landroid/view/View;)V

    .line 87
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;->init(Landroid/content/Context;)V

    .line 88
    return-void

    .line 68
    :cond_1
    const-class v0, Lcom/brightcove/player/view/BrightcoveSurfaceView;

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceViewClass:Ljava/lang/Class;

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 80
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 82
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 191
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method protected resetMetaData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0, v1, v1}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->setVideoSize(II)V

    .line 134
    :cond_0
    invoke-super {p0}, Lcom/brightcove/player/view/BaseVideoView;->resetMetaData()V

    .line 135
    return-void
.end method

.method protected setChildLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getChildCount()I

    move-result v2

    move v1, v0

    .line 104
    :goto_0
    if-ge v1, v2, :cond_1

    .line 105
    invoke-virtual {p0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 110
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.brightcove.ima.GoogleIMAVideoAdPlayer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_1
    if-nez v0, :cond_2

    .line 116
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    :cond_2
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;->setChildLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    return-void
.end method

.method public setEventEmitter(Lcom/brightcove/player/event/EventEmitter;)V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;->setEventEmitter(Lcom/brightcove/player/event/EventEmitter;)V

    .line 150
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-direct {v0, v1, p1}, Lcom/brightcove/player/display/VideoDisplayComponent;-><init>(Lcom/brightcove/player/view/RenderView;Lcom/brightcove/player/event/EventEmitter;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    .line 151
    return-void
.end method

.method protected showMediaController()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 177
    :cond_0
    return-void
.end method
