.class public final Lapj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg$a;


# instance fields
.field public a:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

.field public b:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field public c:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field public d:F

.field private e:Larv;

.field private f:Lcom/snapchat/android/ui/SwipeViewState;


# direct methods
.method public constructor <init>(Larv;Lcom/snapchat/android/ui/SwipeViewState;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lapj;->e:Larv;

    .line 19
    iput-object p2, p0, Lapj;->f:Lcom/snapchat/android/ui/SwipeViewState;

    .line 20
    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iput-object v0, p0, Lapj;->b:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 21
    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iput-object v0, p0, Lapj;->c:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lapj;->d:F

    .line 23
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 65
    iget-object v0, p0, Lapj;->a:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lapj;->e:Larv;

    invoke-interface {v0}, Larv;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 71
    iget-object v0, p0, Lapj;->f:Lcom/snapchat/android/ui/SwipeViewState;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/SwipeViewState;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lapj;->e:Larv;

    iget-object v1, p0, Lapj;->f:Lcom/snapchat/android/ui/SwipeViewState;

    iget v1, v1, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    invoke-interface {v0, v1}, Larv;->a(I)Larn;

    move-result-object v0

    instance-of v0, v0, Laro;

    if-nez v0, :cond_3

    move v1, v2

    .line 74
    :goto_0
    iget-object v0, p0, Lapj;->e:Larv;

    iget-object v4, p0, Lapj;->f:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v4, v1}, Lcom/snapchat/android/ui/SwipeViewState;->a(Z)I

    move-result v4

    invoke-interface {v0, v4}, Larv;->a(I)Larn;

    move-result-object v0

    .line 75
    iget-object v4, p0, Lapj;->e:Larv;

    iget-object v5, p0, Lapj;->f:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v5, v1}, Lcom/snapchat/android/ui/SwipeViewState;->b(Z)I

    move-result v1

    invoke-interface {v4, v1}, Larv;->a(I)Larn;

    move-result-object v1

    .line 77
    sget-object v4, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 78
    instance-of v5, v0, Laro;

    if-eqz v5, :cond_5

    .line 79
    check-cast v0, Laro;

    iget-object v0, v0, Laro;->b:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 81
    :goto_1
    iget-object v4, p0, Lapj;->b:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    if-eq v4, v0, :cond_0

    .line 82
    iput-object v0, p0, Lapj;->b:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    move v3, v2

    .line 85
    :cond_0
    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 86
    instance-of v4, v1, Laro;

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 87
    check-cast v0, Laro;

    iget-object v0, v0, Laro;->b:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 89
    :cond_1
    iget-object v1, p0, Lapj;->c:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    if-eq v1, v0, :cond_4

    .line 90
    iput-object v0, p0, Lapj;->c:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 93
    :goto_2
    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {p0}, Lapj;->a()V

    .line 97
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 71
    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    move-object v0, v4

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lapj;->a:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    iget-object v1, p0, Lapj;->b:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iget-object v2, p0, Lapj;->c:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->changeFilter(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)V

    .line 104
    return-void
.end method

.method public final a(Lcom/snapchat/android/ui/SwipeImageView;)V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getScrollOffset()F

    move-result v0

    iput v0, p0, Lapj;->d:F

    .line 40
    iget-object v0, p0, Lapj;->a:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0}, Lapj;->b()V

    .line 42
    iget-object v0, p0, Lapj;->a:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    iget v1, p0, Lapj;->d:F

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->changeSplit(F)V

    .line 44
    :cond_0
    return-void
.end method

.method public final a(Lcom/snapchat/android/ui/SwipeImageView;Z)V
    .locals 1

    .prologue
    .line 52
    if-eqz p2, :cond_0

    iget-object v0, p0, Lapj;->a:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lapj;->b()V

    .line 55
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
