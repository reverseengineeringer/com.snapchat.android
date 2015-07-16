.class final Lcom/snapchat/android/ui/here/HoldToStreamView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/here/HoldToStreamView$3;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/HoldToStreamView$3;)V
    .locals 0

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$3$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$3$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView$3;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView$3;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->n(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbq;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$3$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView$3;

    iget-object v3, v3, Lcom/snapchat/android/ui/here/HoldToStreamView$3;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v3}, Lcom/snapchat/android/ui/here/HoldToStreamView;->l(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1099
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$3$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView$3;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView$3;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->o(Lcom/snapchat/android/ui/here/HoldToStreamView;)Z

    .line 1100
    return-void
.end method
