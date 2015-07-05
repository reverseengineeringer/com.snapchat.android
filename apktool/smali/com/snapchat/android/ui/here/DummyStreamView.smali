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
    .line 105
    return-void
.end method

.method public static setCameraPreviewSize(Laue;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/snapchat/android/ui/here/StreamView$a;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/here/StreamView$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 43
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 70
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
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 103
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 88
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
    .line 97
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 112
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraReadyEvent(Lbao;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 85
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
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public setCanStreamVideo(ZLcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 0
    .param p2    # Lcom/snapchat/android/ui/here/DisconnectReason;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 91
    return-void
.end method
