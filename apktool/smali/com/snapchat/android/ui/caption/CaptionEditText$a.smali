.class public final Lcom/snapchat/android/ui/caption/CaptionEditText$a;
.super Landroid/view/animation/AlphaAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/caption/CaptionEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/CaptionEditText;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/CaptionEditText;Z)V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 299
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$a;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    .line 300
    if-eqz p2, :cond_0

    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-direct {p0, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 301
    const-wide/16 v0, 0x19a

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText$a;->setDuration(J)V

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText$a;->setFillAfter(Z)V

    .line 303
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$a$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/ui/caption/CaptionEditText$a$1;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText$a;Lcom/snapchat/android/ui/caption/CaptionEditText;Z)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText$a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 330
    return-void

    :cond_0
    move v2, v0

    .line 300
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
