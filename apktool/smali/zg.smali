.class public final Lzg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Laop;

.field public final b:Lcom/snapchat/android/model/StoryCollection;

.field public final c:Lzf;

.field public d:Lajr;

.field public e:Lajr;

.field public f:Lajp;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lajr;Lcom/snapchat/android/model/StoryCollection;)V
    .locals 4
    .param p1    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/StoryCollection;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-static {}, Laop;->a()Laop;

    move-result-object v1

    instance-of v0, p2, Lajg;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->z()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Lzf;

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->s()Lbjr;

    move-result-object v3

    invoke-virtual {v3}, Lbjr;->a()Lbjq;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lzf;-><init>(Lbjq;Z)V

    invoke-direct {p0, p1, p2, v1, v2}, Lzg;-><init>(Lajr;Lcom/snapchat/android/model/StoryCollection;Laop;Lzf;)V

    .line 32
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lajr;Lcom/snapchat/android/model/StoryCollection;Laop;Lzf;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lzg;->d:Lajr;

    .line 25
    iput-object v0, p0, Lzg;->e:Lajr;

    .line 26
    iput-object v0, p0, Lzg;->f:Lajp;

    .line 37
    iput-object p3, p0, Lzg;->a:Laop;

    .line 38
    iput-object p4, p0, Lzg;->c:Lzf;

    .line 39
    iget v0, p4, Lzf;->a:I

    iput v0, p0, Lzg;->h:I

    .line 40
    iput-object p1, p0, Lzg;->d:Lajr;

    .line 41
    iput-object p1, p0, Lzg;->e:Lajr;

    .line 42
    iput-object p2, p0, Lzg;->b:Lcom/snapchat/android/model/StoryCollection;

    .line 46
    iput v5, p0, Lzg;->g:I

    .line 47
    iget-object v0, p0, Lzg;->b:Lcom/snapchat/android/model/StoryCollection;

    instance-of v0, v0, Lajg;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lzg;->b:Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzg;->h:I

    .line 49
    iget-object v0, p0, Lzg;->b:Lcom/snapchat/android/model/StoryCollection;

    iget v1, p0, Lzg;->h:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->a(I)V

    .line 54
    :goto_0
    const-string v0, "StoryAdSequencer"

    const-string v1, "STORY-ADS: Created story ad sequencer for %s and %s with config:%s, index:%d, snapsSinceAd:%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lzg;->d:Lajr;

    aput-object v4, v2, v3

    iget-object v3, p0, Lzg;->b:Lcom/snapchat/android/model/StoryCollection;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lzg;->c:Lzf;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lzg;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lzg;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return-void

    .line 51
    :cond_0
    iput v5, p0, Lzg;->h:I

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lzg;->d:Lajr;

    iget-object v2, p0, Lzg;->c:Lzf;

    iget v3, p0, Lzg;->g:I

    iget v4, p0, Lzg;->h:I

    iget-object v5, p0, Lzg;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v6, p0, Lzg;->e:Lajr;

    invoke-virtual {v5, v6}, Lcom/snapchat/android/model/StoryCollection;->b(Lajr;)I

    move-result v5

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lajr;->mCanAdFollow:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, v2, Lzf;->c:I

    if-lt v3, v1, :cond_0

    iget v1, v2, Lzf;->a:I

    if-lt v4, v1, :cond_0

    iget v1, v2, Lzf;->b:I

    if-lt v5, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
