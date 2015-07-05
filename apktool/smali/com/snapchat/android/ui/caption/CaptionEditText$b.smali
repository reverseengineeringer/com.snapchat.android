.class public final Lcom/snapchat/android/ui/caption/CaptionEditText$b;
.super Landroid/view/animation/TranslateAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/caption/CaptionEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/CaptionEditText;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/CaptionEditText;IIII)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 252
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$b;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    .line 254
    int-to-float v2, p2

    int-to-float v4, p3

    int-to-float v6, p4

    int-to-float v8, p5

    move-object v0, p0

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 258
    const-wide/16 v2, 0x19a

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/ui/caption/CaptionEditText$b;->setDuration(J)V

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText$b;->setFillAfter(Z)V

    .line 260
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText$b;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 263
    invoke-virtual {p1, v1, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(II)V

    .line 265
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$b$1;

    invoke-direct {v0, p0, p1, p3, p5}, Lcom/snapchat/android/ui/caption/CaptionEditText$b$1;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText$b;Lcom/snapchat/android/ui/caption/CaptionEditText;II)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText$b;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 295
    return-void
.end method
