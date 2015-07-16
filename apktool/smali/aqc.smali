.class public final Laqc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqc$a;
    }
.end annotation


# instance fields
.field public final a:Laqe;

.field public final b:Lcom/snapchat/android/ui/SwipeImageView;

.field public final c:Lcom/snapchat/android/ui/SwipeViewState;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laqc$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laqe;Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/SwipeViewState;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Laqc;->a:Laqe;

    .line 25
    iput-object p2, p0, Laqc;->b:Lcom/snapchat/android/ui/SwipeImageView;

    .line 26
    iput-object p3, p0, Laqc;->c:Lcom/snapchat/android/ui/SwipeViewState;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laqc;->d:Ljava/util/List;

    .line 28
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Laqc;->c:Lcom/snapchat/android/ui/SwipeViewState;

    sget-object v1, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->NOT_MOVING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    iput-object v1, v0, Lcom/snapchat/android/ui/SwipeViewState;->i:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    .line 154
    iget-object v0, p0, Laqc;->c:Lcom/snapchat/android/ui/SwipeViewState;

    iput v2, v0, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    iput v2, v0, Lcom/snapchat/android/ui/SwipeViewState;->f:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/snapchat/android/ui/SwipeViewState;->g:F

    .line 155
    iget-object v0, p0, Laqc;->a:Laqe;

    iget-object v1, p0, Laqc;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Laqe;->a(Z)Z

    move-result v3

    .line 156
    iget-object v0, p0, Laqc;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqc$a;

    .line 158
    iget-object v5, p0, Laqc;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v1, p0, Laqc;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->e()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v5, v1}, Laqc$a;->a(Lcom/snapchat/android/ui/SwipeImageView;Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 160
    :cond_1
    iget-object v0, p0, Laqc;->a:Laqe;

    iget-object v0, v0, Laqe;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v0, v0, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    .line 161
    iget-object v1, p0, Laqc;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v1, v1, Lcom/snapchat/android/ui/SwipeImageView;->a:Lasu;

    invoke-interface {v1, v0}, Lasu;->a(I)Lasm;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {v0}, Lasm;->g()V

    .line 165
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Laqc;->c:Lcom/snapchat/android/ui/SwipeViewState;

    iget v0, v0, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    iget-object v3, p0, Laqc;->c:Lcom/snapchat/android/ui/SwipeViewState;

    iget v3, v3, Lcom/snapchat/android/ui/SwipeViewState;->g:F

    iget-object v4, p0, Laqc;->c:Lcom/snapchat/android/ui/SwipeViewState;

    iget v4, v4, Lcom/snapchat/android/ui/SwipeViewState;->n:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    int-to-float v0, v0

    mul-float/2addr v0, v5

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    float-to-int v3, v0

    .line 48
    iget-object v0, p0, Laqc;->c:Lcom/snapchat/android/ui/SwipeViewState;

    iget v0, v0, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 50
    :goto_0
    if-eqz v0, :cond_4

    .line 51
    if-gez v3, :cond_1

    iget-object v0, p0, Laqc;->c:Lcom/snapchat/android/ui/SwipeViewState;

    sget-object v4, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    iput-object v4, v0, Lcom/snapchat/android/ui/SwipeViewState;->k:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    invoke-direct {p0}, Laqc;->a()V

    move v0, v1

    :goto_1
    iget-object v4, p0, Laqc;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v4}, Lcom/snapchat/android/ui/SwipeViewState;->b()V

    .line 52
    iget-object v4, p0, Laqc;->c:Lcom/snapchat/android/ui/SwipeViewState;

    iput v3, v4, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    .line 54
    if-nez v0, :cond_4

    .line 55
    iget-object v0, p0, Laqc;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqc$a;

    .line 56
    iget-object v4, p0, Laqc;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-interface {v0, v4}, Laqc$a;->a(Lcom/snapchat/android/ui/SwipeImageView;)V

    goto :goto_2

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    if-eqz v3, :cond_3

    if-eq v3, p1, :cond_3

    if-ge v3, p1, :cond_2

    iget-object v0, p0, Laqc;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    move v0, v2

    goto :goto_1

    :cond_2
    if-le v3, p1, :cond_3

    iget-object v0, p0, Laqc;->c:Lcom/snapchat/android/ui/SwipeViewState;

    sget-object v4, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    iput-object v4, v0, Lcom/snapchat/android/ui/SwipeViewState;->k:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    invoke-direct {p0}, Laqc;->a()V

    :cond_3
    move v0, v1

    goto :goto_1

    .line 61
    :cond_4
    iget-object v0, p0, Laqc;->c:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v0, v0, Lcom/snapchat/android/ui/SwipeViewState;->i:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    sget-object v3, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->AUTO_SCROLLING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    if-ne v0, v3, :cond_6

    :goto_3
    if-eqz v1, :cond_5

    .line 62
    iget-object v0, p0, Laqc;->b:Lcom/snapchat/android/ui/SwipeImageView;

    new-instance v1, Laqc$1;

    invoke-direct {v1, p0, p1}, Laqc$1;-><init>(Laqc;I)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->post(Ljava/lang/Runnable;)Z

    .line 64
    :cond_5
    return-void

    :cond_6
    move v1, v2

    .line 61
    goto :goto_3
.end method

.method public final a(Laqc$a;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Laqc;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method
