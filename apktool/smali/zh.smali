.class public Lzh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzh$a;,
        Lzh$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/snapchat/android/model/StoryCollection;

.field public final c:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

.field public final d:Z

.field final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation
.end field

.field f:J

.field g:Lzh$b;

.field h:I

.field private final i:Lbgk;


# direct methods
.method private constructor <init>(Lzh$a;)V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    invoke-direct {p0, p1, v0}, Lzh;-><init>(Lzh$a;Lbgk;)V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lzh$a;B)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lzh;-><init>(Lzh$a;)V

    return-void
.end method

.method private constructor <init>(Lzh$a;Lbgk;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lzh;->e:Ljava/util/Set;

    .line 53
    iput-object p2, p0, Lzh;->i:Lbgk;

    .line 54
    iget-object v0, p1, Lzh$a;->c:Lcom/snapchat/android/model/StoryCollection;

    iput-object v0, p0, Lzh;->b:Lcom/snapchat/android/model/StoryCollection;

    .line 55
    iget-object v0, p1, Lzh$a;->b:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    iput-object v0, p0, Lzh;->c:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    .line 56
    iget-boolean v0, p1, Lzh$a;->d:Z

    iput-boolean v0, p0, Lzh;->d:Z

    .line 57
    iget-object v0, p1, Lzh$a;->a:Ljava/util/List;

    invoke-static {v0}, Ldk;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lzh;->a:Ljava/util/List;

    .line 58
    return-void
.end method


# virtual methods
.method public final a(Lzh$b;)I
    .locals 14
    .param p1    # Lzh$b;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 87
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzh$b;

    iput-object v0, p0, Lzh;->g:Lzh$b;

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lzh;->f:J

    .line 90
    iget-object v0, p0, Lzh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lajr;

    .line 91
    new-instance v13, Lzh$1;

    invoke-direct {v13, p0, v9}, Lzh$1;-><init>(Lzh;Lajr;)V

    iget-object v0, v13, Lzi;->b:Lajr;

    invoke-virtual {v0}, Lajr;->R()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v13, Lzi;->b:Lajr;

    invoke-virtual {v0}, Lajr;->L()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v13, Lzi;->b:Lajr;

    invoke-virtual {v0}, Lajr;->M()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "StorySnapLoadTask"

    const-string v1, "Skipped attempt to load %s"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, v13, Lzi;->b:Lajr;

    invoke-virtual {v3}, Lajr;->aa()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v0, v11

    :goto_1
    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lzh;->e:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, v13, Lzi;->b:Lajr;

    invoke-virtual {v0}, Lajr;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "StorySnapLoadTask"

    const-string v1, "Skipped attempt to load %s"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, v13, Lzi;->b:Lajr;

    invoke-virtual {v3}, Lajr;->aa()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v11

    :goto_2
    if-eqz v0, :cond_2

    iget-object v0, v13, Lzi;->b:Lajr;

    invoke-virtual {v0}, Lajr;->m()V

    move v0, v10

    goto :goto_1

    :cond_4
    iget-object v0, v13, Lzi;->b:Lajr;

    invoke-virtual {v0}, Lajr;->ai()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v13, Lzi;->c:Lals;

    iget-object v1, v13, Lzi;->b:Lajr;

    iget-object v2, v13, Lzi;->b:Lajr;

    invoke-virtual {v2}, Lajr;->ar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lzi;->a()Lzi$a;

    move-result-object v3

    iget-object v8, v13, Lzi;->d:Lals$a;

    sget-object v4, Lawq;->STORY_RECEIVED_VIDEO_CACHE:Lawp;

    const-string v5, "STORIES"

    sget-object v6, Lcom/snapchat/android/networkmanager/DownloadPriority;->MEDIUM_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v7, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual/range {v0 .. v8}, Lals;->a(Laje;Ljava/lang/String;Ljava/lang/Object;Lawp;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Lals$a;)V

    :goto_3
    move v0, v10

    goto :goto_2

    :cond_5
    iget-object v0, v13, Lzi;->c:Lals;

    iget-object v1, v13, Lzi;->b:Lajr;

    iget-object v2, v13, Lzi;->b:Lajr;

    invoke-virtual {v2}, Lajr;->ar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lzi;->a()Lzi$a;

    move-result-object v3

    iget-object v8, v13, Lzi;->d:Lals$a;

    sget-object v4, Lawq;->STORY_RECEIVED_IMAGE_CACHE:Lawp;

    const-string v5, "STORIES"

    sget-object v6, Lcom/snapchat/android/networkmanager/DownloadPriority;->MEDIUM_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v7, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual/range {v0 .. v8}, Lals;->a(Laje;Ljava/lang/String;Ljava/lang/Object;Lawp;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Lals$a;)V

    goto :goto_3

    .line 96
    :cond_6
    const-string v0, "StorySnapLoadBatch"

    const-string v1, "Batch %s loading %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v11

    iget-object v3, p0, Lzh;->e:Ljava/util/Set;

    aput-object v3, v2, v10

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lzh;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lzh;->h:I

    .line 98
    iget v0, p0, Lzh;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    const-class v0, Lzh;

    invoke-static {v0}, Lci;->a(Ljava/lang/Class;)Lci$a;

    move-result-object v0

    const-string v1, "collection"

    iget-object v2, p0, Lzh;->b:Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    const-string v1, "count"

    iget-object v2, p0, Lzh;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;I)Lci$a;

    move-result-object v0

    const-string v1, "context"

    iget-object v2, p0, Lzh;->c:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    const-string v1, "toast"

    iget-boolean v2, p0, Lzh;->d:Z

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Z)Lci$a;

    move-result-object v0

    invoke-virtual {v0}, Lci$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
