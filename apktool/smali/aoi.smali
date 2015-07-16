.class public final Laoi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/rendering/SnapMediaRenderer;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lawq;

.field private final d:Lbht;

.field private final e:Lawn;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ImageView;

.field private h:Laka;

.field private i:Lawt;

.field private j:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "ImageSnapRenderer"

    sput-object v0, Laoi;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 49
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lawq;

    invoke-direct {v1}, Lawq;-><init>()V

    new-instance v2, Lbht;

    invoke-direct {v2}, Lbht;-><init>()V

    new-instance v3, Lawn;

    invoke-direct {v3, p1}, Lawn;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v2, v3}, Laoi;-><init>(Landroid/view/LayoutInflater;Lawq;Lbht;Lawn;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/view/LayoutInflater;Lawq;Lbht;Lawn;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Laoi;->b:Landroid/view/LayoutInflater;

    .line 58
    iput-object p2, p0, Laoi;->c:Lawq;

    .line 59
    iput-object p3, p0, Laoi;->d:Lbht;

    .line 60
    iput-object p4, p0, Laoi;->e:Lawn;

    .line 61
    return-void
.end method

.method static synthetic a(Laoi;)Laka;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Laoi;->h:Laka;

    return-object v0
.end method

.method static synthetic b(Laoi;)Lcom/snapchat/android/rendering/SnapMediaRenderer$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Laoi;->j:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Laoi;->h:Laka;

    aput-object v1, v0, v2

    .line 137
    iget-object v0, p0, Laoi;->h:Laka;

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Start called for null snap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Laoi;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 146
    iget-object v0, p0, Laoi;->d:Lbht;

    invoke-virtual {v0}, Lbht;->c()V

    .line 147
    iget-object v0, p0, Laoi;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Laoi;->g:Landroid/widget/ImageView;

    new-instance v1, Laoi$2;

    invoke-direct {v1, p0}, Laoi$2;-><init>(Laoi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 160
    :cond_1
    return-void
.end method

.method public final a(Laka;ZLcom/snapchat/android/rendering/SnapMediaRenderer$a;)V
    .locals 7
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/rendering/SnapMediaRenderer$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 92
    iput-object p1, p0, Laoi;->h:Laka;

    .line 93
    iput-object p3, p0, Laoi;->j:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    .line 95
    iget-object v0, p0, Laoi;->h:Laka;

    invoke-virtual {v0}, Laka;->J()Laxw;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Laoi;->h:Laka;

    aput-object v1, v0, v5

    .line 98
    sget-object v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-interface {p3, v0}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V

    .line 132
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v1, Lawv$a;

    invoke-direct {v1}, Lawv$a;-><init>()V

    iget-object v2, v0, Laxw;->mKey:Ljava/lang/String;

    iget-object v3, v0, Laxw;->mCache:Laxn;

    iget-object v4, v0, Laxw;->mKey:Ljava/lang/String;

    iget-object v0, v0, Laxw;->mAlgorithm:Laza;

    invoke-virtual {v1, v2, v3, v4, v0}, Lawv$a;->a(Ljava/lang/String;Laxn;Ljava/lang/String;Laza;)Lawv$a;

    move-result-object v0

    iget-object v1, p0, Laoi;->g:Landroid/widget/ImageView;

    iput-object v1, v0, Lawv$a;->mImageView:Landroid/widget/ImageView;

    iput-boolean v5, v0, Lawv$a;->mRequireExactDimensions:Z

    invoke-virtual {v0}, Lawv$a;->a()Lawv;

    move-result-object v0

    .line 108
    new-instance v1, Lawt;

    new-instance v2, Laoi$1;

    invoke-direct {v2, p0, p3, p1}, Laoi$1;-><init>(Laoi;Lcom/snapchat/android/rendering/SnapMediaRenderer$a;Laka;)V

    invoke-direct {v1, v2}, Lawt;-><init>(Laww;)V

    iput-object v1, p0, Laoi;->i:Lawt;

    .line 131
    iget-object v1, p0, Laoi;->e:Lawn;

    new-array v2, v6, [Laww;

    iget-object v3, p0, Laoi;->i:Lawt;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Lawn;->b(Lawv;[Laww;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 65
    iget-object v0, p0, Laoi;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f04009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laoi;->f:Landroid/view/View;

    .line 66
    iget-object v0, p0, Laoi;->f:Landroid/view/View;

    const v1, 0x7f0a038b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laoi;->g:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Laoi;->d:Lbht;

    iget-object v1, p0, Laoi;->g:Landroid/widget/ImageView;

    iput-object v1, v0, Lbht;->mView:Landroid/view/View;

    .line 68
    iget-object v0, p0, Laoi;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 164
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Laoi;->h:Laka;

    aput-object v2, v0, v1

    .line 166
    iput-object v3, p0, Laoi;->h:Laka;

    .line 167
    iput-object v3, p0, Laoi;->j:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    .line 168
    iget-object v0, p0, Laoi;->i:Lawt;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Laoi;->i:Lawt;

    iget-object v1, v0, Lawt;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lawt;->mIsCanceled:Z

    monitor-exit v1

    .line 171
    :cond_0
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Laoi;->h:Laka;

    aput-object v1, v0, v2

    .line 75
    iget-object v0, p0, Laoi;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Laoi;->h:Laka;

    aput-object v1, v0, v2

    .line 82
    iget-object v0, p0, Laoi;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Laoi;->c:Lawq;

    iget-object v1, p0, Laoi;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lawq;->a(Landroid/widget/ImageView;Z)V

    .line 85
    return-void
.end method
