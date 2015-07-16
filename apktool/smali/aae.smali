.class public Laae;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laae$a;,
        Laae$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakl;",
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
            "Lakl;",
            ">;"
        }
    .end annotation
.end field

.field f:J

.field g:Laae$b;

.field h:I

.field private final i:Lbhk;


# direct methods
.method private constructor <init>(Laae$a;)V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lbhk;

    invoke-direct {v0}, Lbhk;-><init>()V

    invoke-direct {p0, p1, v0}, Laae;-><init>(Laae$a;Lbhk;)V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Laae$a;B)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Laae;-><init>(Laae$a;)V

    return-void
.end method

.method private constructor <init>(Laae$a;Lbhk;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laae;->e:Ljava/util/Set;

    .line 53
    iput-object p2, p0, Laae;->i:Lbhk;

    .line 54
    iget-object v0, p1, Laae$a;->c:Lcom/snapchat/android/model/StoryCollection;

    iput-object v0, p0, Laae;->b:Lcom/snapchat/android/model/StoryCollection;

    .line 55
    iget-object v0, p1, Laae$a;->b:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    iput-object v0, p0, Laae;->c:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    .line 56
    iget-boolean v0, p1, Laae$a;->d:Z

    iput-boolean v0, p0, Laae;->d:Z

    .line 57
    iget-object v0, p1, Laae$a;->a:Ljava/util/List;

    invoke-static {v0}, Ldt;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Laae;->a:Ljava/util/List;

    .line 58
    return-void
.end method


# virtual methods
.method public final a(Laae$b;)I
    .locals 14
    .param p1    # Laae$b;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 87
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laae$b;

    iput-object v0, p0, Laae;->g:Laae$b;

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Laae;->f:J

    .line 90
    iget-object v0, p0, Laae;->a:Ljava/util/List;

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

    check-cast v9, Lakl;

    .line 91
    new-instance v13, Laae$1;

    invoke-direct {v13, p0, v9}, Laae$1;-><init>(Laae;Lakl;)V

    iget-object v0, v13, Laaf;->b:Lakl;

    invoke-virtual {v0}, Lakl;->S()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v13, Laaf;->b:Lakl;

    invoke-virtual {v0}, Lakl;->M()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v13, Laaf;->b:Lakl;

    invoke-virtual {v0}, Lakl;->N()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    new-array v0, v10, [Ljava/lang/Object;

    iget-object v1, v13, Laaf;->b:Lakl;

    invoke-virtual {v1}, Lakl;->Y()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    :cond_2
    move v0, v11

    :goto_1
    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Laae;->e:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, v13, Laaf;->b:Lakl;

    invoke-virtual {v0}, Lakl;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    new-array v0, v10, [Ljava/lang/Object;

    iget-object v1, v13, Laaf;->b:Lakl;

    invoke-virtual {v1}, Lakl;->Y()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    move v0, v11

    :goto_2
    if-eqz v0, :cond_2

    iget-object v0, v13, Laaf;->b:Lakl;

    invoke-virtual {v0}, Lakl;->m()V

    move v0, v10

    goto :goto_1

    :cond_4
    iget-object v0, v13, Laaf;->b:Lakl;

    invoke-virtual {v0}, Lakl;->ag()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v13, Laaf;->c:Lamp;

    iget-object v1, v13, Laaf;->b:Lakl;

    iget-object v2, v13, Laaf;->b:Lakl;

    invoke-virtual {v2}, Lakl;->ap()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Laaf;->a()Laaf$a;

    move-result-object v3

    iget-object v8, v13, Laaf;->d:Lamp$a;

    sget-object v4, Laxo;->STORY_RECEIVED_VIDEO_CACHE:Laxn;

    const-string v5, "STORIES"

    sget-object v6, Lcom/snapchat/android/networkmanager/DownloadPriority;->MEDIUM_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v7, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual/range {v0 .. v8}, Lamp;->a(Laka;Ljava/lang/String;Ljava/lang/Object;Laxn;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Lamp$a;)V

    :goto_3
    move v0, v10

    goto :goto_2

    :cond_5
    iget-object v0, v13, Laaf;->c:Lamp;

    iget-object v1, v13, Laaf;->b:Lakl;

    iget-object v2, v13, Laaf;->b:Lakl;

    invoke-virtual {v2}, Lakl;->ap()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Laaf;->a()Laaf$a;

    move-result-object v3

    iget-object v8, v13, Laaf;->d:Lamp$a;

    sget-object v4, Laxo;->STORY_RECEIVED_IMAGE_CACHE:Laxn;

    const-string v5, "STORIES"

    sget-object v6, Lcom/snapchat/android/networkmanager/DownloadPriority;->MEDIUM_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v7, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual/range {v0 .. v8}, Lamp;->a(Laka;Ljava/lang/String;Ljava/lang/Object;Laxn;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Lamp$a;)V

    goto :goto_3

    .line 96
    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v11

    iget-object v1, p0, Laae;->e:Ljava/util/Set;

    aput-object v1, v0, v10

    .line 97
    iget-object v0, p0, Laae;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Laae;->h:I

    .line 98
    iget v0, p0, Laae;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    const-class v0, Laae;

    invoke-static {v0}, Lcl;->a(Ljava/lang/Class;)Lcl$a;

    move-result-object v0

    const-string v1, "collection"

    iget-object v2, p0, Laae;->b:Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "count"

    iget-object v2, p0, Laae;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;I)Lcl$a;

    move-result-object v0

    const-string v1, "context"

    iget-object v2, p0, Laae;->c:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "toast"

    iget-boolean v2, p0, Laae;->d:Z

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Z)Lcl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
