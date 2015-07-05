.class public final Lcom/snapchat/android/ui/SwipeViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;,
        Lcom/snapchat/android/ui/SwipeViewState$MotionState;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:F

.field h:F

.field public i:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

.field protected j:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

.field public k:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

.field public l:Z

.field public m:Z

.field public n:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->NOT_MOVING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->i:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    return-void
.end method


# virtual methods
.method public final a(Z)I
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->j:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 135
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->g:F

    iget v1, p0, Lcom/snapchat/android/ui/SwipeViewState;->h:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Z)I
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->j:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    iput v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->f:I

    .line 144
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->i:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    sget-object v1, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->NOT_MOVING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeViewState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->j:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->j:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->k:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeViewState;->j:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->f:I

    iget v1, p0, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
