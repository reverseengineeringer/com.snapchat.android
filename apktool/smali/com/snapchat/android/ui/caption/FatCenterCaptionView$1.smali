.class final Lcom/snapchat/android/ui/caption/FatCenterCaptionView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/caption/FatCenterCaptionView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver;

.field final synthetic b:Lcom/snapchat/android/ui/caption/FatCenterCaptionView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/FatCenterCaptionView;Landroid/view/ViewTreeObserver;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/FatCenterCaptionView$1;->b:Lcom/snapchat/android/ui/caption/FatCenterCaptionView;

    iput-object p2, p0, Lcom/snapchat/android/ui/caption/FatCenterCaptionView$1;->a:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCenterCaptionView$1;->b:Lcom/snapchat/android/ui/caption/FatCenterCaptionView;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getWidth()I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/FatCenterCaptionView$1;->b:Lcom/snapchat/android/ui/caption/FatCenterCaptionView;

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/FatCenterCaptionView$1;->b:Lcom/snapchat/android/ui/caption/FatCenterCaptionView;

    iget v2, v2, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;->d:I

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;->setCaptionPositionX(I)V

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCenterCaptionView$1;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCenterCaptionView$1;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 87
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
