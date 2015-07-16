.class final Lwj$b;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lwj;


# direct methods
.method private constructor <init>(Lwj;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lwj$b;->a:Lwj;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lwj;B)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lwj$b;-><init>(Lwj;)V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lwj$b;->a:Lwj;

    iget-object v0, v0, Lwj;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(F)V

    .line 396
    const/4 v0, 0x1

    return v0
.end method
