.class public Lcom/snapchat/android/ui/here/DummyStreamView;
.super Lcom/snapchat/android/ui/here/StreamView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/StreamView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/here/StreamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/ui/here/StreamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public static getLastInstance()Lcom/snapchat/android/ui/here/DummyStreamView;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public static setCameraPreviewSize(Lavc;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/snapchat/android/ui/here/StreamView$a;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/here/StreamView$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 43
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 72
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public final a(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 0
    .param p1    # Lcom/snapchat/android/ui/here/DisconnectReason;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 105
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public final b(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 117
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getPresence()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraReadyEvent(Lbbp;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 87
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public setCanStreamVideo(ZLcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 0
    .param p2    # Lcom/snapchat/android/ui/here/DisconnectReason;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 93
    return-void
.end method
