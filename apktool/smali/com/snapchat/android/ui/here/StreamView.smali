.class public abstract Lcom/snapchat/android/ui/here/StreamView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lahl$a;
.implements Lcom/snapchat/android/ui/ChatCameraButton$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/here/StreamView$a;
    }
.end annotation


# static fields
.field protected static final j:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

.field protected static final k:Laqg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-direct {v0}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;-><init>()V

    sput-object v0, Lcom/snapchat/android/ui/here/StreamView;->j:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    .line 31
    new-instance v0, Laqg;

    invoke-direct {v0}, Laqg;-><init>()V

    sput-object v0, Lcom/snapchat/android/ui/here/StreamView;->k:Laqg;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public static getLastInstance()Lcom/snapchat/android/ui/here/StreamView;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/snapchat/android/ui/here/StreamView;->j:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {v0, p0}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->setInfo(Landroid/hardware/Camera$CameraInfo;)V

    .line 143
    sget-object v0, Lcom/snapchat/android/ui/here/StreamView;->k:Laqg;

    invoke-virtual {v0}, Laqg;->b()V

    .line 144
    return-void
.end method

.method public static setCameraPreviewSize(Laue;)V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/snapchat/android/ui/here/StreamView;->j:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {p0}, Laue;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->setWidth(I)V

    .line 148
    sget-object v0, Lcom/snapchat/android/ui/here/StreamView;->j:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {p0}, Laue;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->setHeight(I)V

    .line 150
    sget-object v0, Lcom/snapchat/android/ui/here/StreamView;->k:Laqg;

    invoke-virtual {v0}, Laqg;->b()V

    .line 151
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;Lcom/snapchat/android/ui/here/StreamView$a;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/here/StreamView$a;
        .annotation build Lcgb;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/snapchat/android/model/chat/ChatConversation;)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .param p1    # Lcom/snapchat/android/ui/here/DisconnectReason;
        .annotation build Lcgb;
        .end annotation
    .end param
.end method

.method public abstract b(Z)V
.end method

.method public abstract c()V
.end method

.method public abstract d()Z
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 158
    return-void
.end method

.method public abstract e()Z
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 59
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public abstract onCameraReadyEvent(Lbao;)V
    .annotation runtime Lboh;
    .end annotation
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 65
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method protected abstract onSizeChanged(IIII)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public abstract setCanStreamVideo(ZLcom/snapchat/android/ui/here/DisconnectReason;)V
    .param p2    # Lcom/snapchat/android/ui/here/DisconnectReason;
        .annotation build Lcgc;
        .end annotation
    .end param
.end method
