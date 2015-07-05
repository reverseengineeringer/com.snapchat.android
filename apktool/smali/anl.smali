.class public final Lanl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/rendering/SnapMediaRenderer;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lavs;

.field private final d:Lbgt;

.field private final e:Lavp;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ImageView;

.field private h:Laje;

.field private i:Lavv;

.field private j:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "ImageSnapRenderer"

    sput-object v0, Lanl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 49
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lavs;

    invoke-direct {v1}, Lavs;-><init>()V

    new-instance v2, Lbgt;

    invoke-direct {v2}, Lbgt;-><init>()V

    new-instance v3, Lavp;

    invoke-direct {v3, p1}, Lavp;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lanl;-><init>(Landroid/view/LayoutInflater;Lavs;Lbgt;Lavp;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/view/LayoutInflater;Lavs;Lbgt;Lavp;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lanl;->b:Landroid/view/LayoutInflater;

    .line 58
    iput-object p2, p0, Lanl;->c:Lavs;

    .line 59
    iput-object p3, p0, Lanl;->d:Lbgt;

    .line 60
    iput-object p4, p0, Lanl;->e:Lavp;

    .line 61
    return-void
.end method

.method static synthetic a(Lanl;)Laje;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lanl;->h:Laje;

    return-object v0
.end method

.method static synthetic b(Lanl;)Lcom/snapchat/android/rendering/SnapMediaRenderer$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lanl;->j:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lanl;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 136
    sget-object v0, Lanl;->a:Ljava/lang/String;

    const-string v1, "SNAP-VIEW: Start %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lanl;->h:Laje;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lanl;->h:Laje;

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
    iget-object v0, p0, Lanl;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 146
    iget-object v0, p0, Lanl;->d:Lbgt;

    invoke-virtual {v0}, Lbgt;->c()V

    .line 147
    iget-object v0, p0, Lanl;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lanl;->g:Landroid/widget/ImageView;

    new-instance v1, Lanl$2;

    invoke-direct {v1, p0}, Lanl$2;-><init>(Lanl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 160
    :cond_1
    return-void
.end method

.method public final a(Laje;ZLcom/snapchat/android/rendering/SnapMediaRenderer$a;)V
    .locals 7
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/rendering/SnapMediaRenderer$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    sget-object v0, Lanl;->a:Ljava/lang/String;

    const-string v1, "SNAP-VIEW: Prepare %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iput-object p1, p0, Lanl;->h:Laje;

    .line 93
    iput-object p3, p0, Lanl;->j:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    .line 95
    iget-object v0, p0, Lanl;->h:Laje;

    invoke-virtual {v0}, Laje;->I()Lawy;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lanl;->a:Ljava/lang/String;

    const-string v1, "Snap media not available for %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lanl;->h:Laje;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-interface {p3, v0}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V

    .line 132
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v1, Lavx$a;

    invoke-direct {v1}, Lavx$a;-><init>()V

    iget-object v2, v0, Lawy;->mKey:Ljava/lang/String;

    iget-object v3, v0, Lawy;->mCache:Lawp;

    iget-object v4, v0, Lawy;->mKey:Ljava/lang/String;

    iget-object v0, v0, Lawy;->mAlgorithm:Layc;

    invoke-virtual {v1, v2, v3, v4, v0}, Lavx$a;->a(Ljava/lang/String;Lawp;Ljava/lang/String;Layc;)Lavx$a;

    move-result-object v0

    iget-object v1, p0, Lanl;->g:Landroid/widget/ImageView;

    iput-object v1, v0, Lavx$a;->mImageView:Landroid/widget/ImageView;

    iput-boolean v5, v0, Lavx$a;->mRequireExactDimensions:Z

    invoke-virtual {v0}, Lavx$a;->a()Lavx;

    move-result-object v0

    .line 108
    new-instance v1, Lavv;

    new-instance v2, Lanl$1;

    invoke-direct {v2, p0, p3, p1}, Lanl$1;-><init>(Lanl;Lcom/snapchat/android/rendering/SnapMediaRenderer$a;Laje;)V

    invoke-direct {v1, v2}, Lavv;-><init>(Lavy;)V

    iput-object v1, p0, Lanl;->i:Lavv;

    .line 131
    iget-object v1, p0, Lanl;->e:Lavp;

    new-array v2, v6, [Lavy;

    iget-object v3, p0, Lanl;->i:Lavv;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Lavp;->b(Lavx;[Lavy;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 65
    iget-object v0, p0, Lanl;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f04009d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lanl;->f:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lanl;->f:Landroid/view/View;

    const v1, 0x7f0a038c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lanl;->g:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lanl;->d:Lbgt;

    iget-object v1, p0, Lanl;->g:Landroid/widget/ImageView;

    iput-object v1, v0, Lbgt;->mView:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lanl;->f:Landroid/view/View;

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
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 164
    sget-object v0, Lanl;->a:Ljava/lang/String;

    const-string v1, "SNAP-VIEW: Stop %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lanl;->h:Laje;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iput-object v5, p0, Lanl;->h:Laje;

    .line 167
    iput-object v5, p0, Lanl;->j:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    .line 168
    iget-object v0, p0, Lanl;->i:Lavv;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lanl;->i:Lavv;

    iget-object v1, v0, Lavv;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lavv;->mIsCanceled:Z

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
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    sget-object v0, Lanl;->a:Ljava/lang/String;

    const-string v1, "SNAP-VIEW: Show %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lanl;->h:Laje;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lanl;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    return-void
.end method

.method public final d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 80
    sget-object v0, Lanl;->a:Ljava/lang/String;

    const-string v1, "SNAP-VIEW: Hide %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lanl;->h:Laje;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lanl;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lanl;->c:Lavs;

    iget-object v1, p0, Lanl;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v4}, Lavs;->a(Landroid/widget/ImageView;Z)V

    .line 85
    return-void
.end method
