.class final Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/caption/FatCaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->y:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-static {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)Lcom/snapchat/android/ui/caption/CaptionColorRange;

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->y:Z

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->performLongClick()Z

    .line 99
    :cond_0
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->y:Z

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-static {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)Lcom/snapchat/android/ui/caption/CaptionColorRange;

    .line 104
    const/4 v0, 0x1

    return v0
.end method
