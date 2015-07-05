.class final Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


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
    .line 109
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iput-boolean v6, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->w:Z

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iput-boolean v6, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->x:Z

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Z

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-object v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-wide v2, v1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->u:D

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;D)V

    .line 120
    return v6
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Z)Z

    .line 125
    return v1
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Z)Z

    .line 130
    return-void
.end method
