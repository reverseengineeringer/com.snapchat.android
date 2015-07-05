.class final Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$1;->a:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$1;->a:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    sget-object v1, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;->MODE_BLINK:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->a(Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;)Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$1;->a:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 100
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 101
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 102
    return-void
.end method
