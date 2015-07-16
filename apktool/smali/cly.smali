.class public abstract Lcly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lclw;


# instance fields
.field private final a:Lclt;


# direct methods
.method public constructor <init>(Lclt;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcly;->a:Lclt;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)F
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 22
    iget-object v1, p0, Lcly;->a:Lclt;

    invoke-virtual {v1}, Lclt;->a()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0

    .line 24
    :cond_0
    iget-object v1, p0, Lcly;->a:Lclt;

    invoke-virtual {v1}, Lclt;->b()F

    move-result v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcly;->a:Lclt;

    invoke-virtual {v1}, Lclt;->b()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0
.end method
