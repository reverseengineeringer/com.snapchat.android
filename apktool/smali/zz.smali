.class public final Lzz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lzz;


# instance fields
.field public final a:Laaa;

.field protected final b:Laae$b;

.field private final d:Lcom/squareup/otto/Bus;

.field private final e:Lakk;

.field private final f:Laab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lzz;

    invoke-direct {v0}, Lzz;-><init>()V

    sput-object v0, Lzz;->c:Lzz;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v1

    new-instance v2, Laab;

    invoke-direct {v2}, Laab;-><init>()V

    new-instance v3, Laaa;

    invoke-direct {v3}, Laaa;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lzz;-><init>(Lcom/squareup/otto/Bus;Lakk;Laab;Laaa;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Lcom/squareup/otto/Bus;Lakk;Laab;Laaa;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lzz$1;

    invoke-direct {v0, p0}, Lzz$1;-><init>(Lzz;)V

    iput-object v0, p0, Lzz;->b:Laae$b;

    .line 53
    iput-object p1, p0, Lzz;->d:Lcom/squareup/otto/Bus;

    .line 54
    iput-object p2, p0, Lzz;->e:Lakk;

    .line 55
    iput-object p3, p0, Lzz;->f:Laab;

    .line 56
    iput-object p4, p0, Lzz;->a:Laaa;

    .line 57
    return-void
.end method

.method static synthetic a(Lzz;)Lakk;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lzz;->e:Lakk;

    return-object v0
.end method

.method public static a()Lzz;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lzz;->c:Lzz;

    return-object v0
.end method

.method static synthetic b(Lzz;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lzz;->d:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method static synthetic c(Lzz;)Laab;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lzz;->f:Laab;

    return-object v0
.end method

.method static synthetic d(Lzz;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lzz;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lzz;->d:Lcom/squareup/otto/Bus;

    new-instance v1, Lbex;

    invoke-direct {v1}, Lbex;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 212
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/StoryCollection;ILaka;ZLcom/snapchat/android/controller/stories/StoryLoadingContext;)I
    .locals 3
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lbhp;->a()V

    .line 89
    check-cast p3, Lakl;

    invoke-virtual {p1, p2, p3}, Lcom/snapchat/android/model/StoryCollection;->a(ILakl;)Ljava/util/List;

    move-result-object v0

    .line 91
    new-instance v1, Laae$a;

    invoke-direct {v1, p5}, Laae$a;-><init>(Lcom/snapchat/android/controller/stories/StoryLoadingContext;)V

    iput-boolean p4, v1, Laae$a;->d:Z

    iput-object p1, v1, Laae$a;->c:Lcom/snapchat/android/model/StoryCollection;

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 96
    invoke-virtual {v1, v0}, Laae$a;->a(Lakl;)Laae$a;

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v1}, Laae$a;->a()Laae;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lzz;->b:Laae$b;

    invoke-virtual {v0, v1}, Laae;->a(Laae$b;)I

    move-result v0

    .line 103
    invoke-direct {p0}, Lzz;->f()V

    .line 104
    return v0
.end method

.method public final a(Lakl;)Z
    .locals 1
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lzz;->b(Lakl;)Z

    move-result v0

    return v0
.end method

.method public final a(Lakl;Lcom/snapchat/android/controller/stories/StoryLoadingContext;)Z
    .locals 3
    .annotation build Lcdn;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-static {}, Lbhp;->a()V

    new-instance v1, Laae$a;

    invoke-direct {v1, p2}, Laae$a;-><init>(Lcom/snapchat/android/controller/stories/StoryLoadingContext;)V

    invoke-virtual {v1, p1}, Laae$a;->a(Lakl;)Laae$a;

    move-result-object v1

    iput-boolean v0, v1, Laae$a;->d:Z

    invoke-virtual {v1}, Laae$a;->a()Laae;

    move-result-object v1

    iget-object v2, p0, Lzz;->b:Laae$b;

    invoke-virtual {v1, v2}, Laae;->a(Laae$b;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 135
    :cond_0
    invoke-direct {p0}, Lzz;->f()V

    .line 136
    return v0
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lzz;->a:Laaa;

    iget-object v0, v0, Laaa;->a:Lakn;

    const-string v1, "STORY_LOADER_ANDROID"

    const-string v2, "NUM_TO_LOAD_BEFORE_ALLOWING_VIEWING"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final b(Lakl;)Z
    .locals 1
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->AUTO_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual {p0, p1, v0}, Lzz;->a(Lakl;Lcom/snapchat/android/controller/stories/StoryLoadingContext;)Z

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lzz;->a:Laaa;

    iget-object v0, v0, Laaa;->a:Lakn;

    const-string v1, "STORY_LOADER_ANDROID"

    const-string v2, "NUM_TO_START_LOADING_AHEAD_ON_VIEW"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 4

    .prologue
    .line 239
    iget-object v0, p0, Lzz;->a:Laaa;

    iget-object v0, v0, Laaa;->a:Lakn;

    const-string v1, "STORY_LOADER_ANDROID"

    const-string v2, "MAX_NUM_RECENT_UPDATES_TO_LOAD_ON_APP_OPEN"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lzz;->a:Laaa;

    iget-object v0, v0, Laaa;->a:Lakn;

    const-string v1, "STORY_LOADER_ANDROID"

    const-string v2, "MAX_NUM_SHARED_STORIES_TO_LOAD_ON_APP_OPEN"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
