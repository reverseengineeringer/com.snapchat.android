.class final Lvn$b;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lvn;


# direct methods
.method private constructor <init>(Lvn;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lvn$b;->a:Lvn;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvn;B)V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lvn$b;-><init>(Lvn;)V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lvn$b;->a:Lvn;

    iget-object v0, v0, Lvn;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(F)V

    .line 395
    const/4 v0, 0x1

    return v0
.end method
