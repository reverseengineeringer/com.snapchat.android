.class public final Lzd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lzd;


# instance fields
.field protected final a:Lzh$b;

.field private final c:Lcom/squareup/otto/Bus;

.field private final d:Lajq;

.field private final e:Lze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lzd;

    invoke-direct {v0}, Lzd;-><init>()V

    sput-object v0, Lzd;->b:Lzd;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v1

    new-instance v2, Lze;

    invoke-direct {v2}, Lze;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lzd;-><init>(Lcom/squareup/otto/Bus;Lajq;Lze;)V

    .line 52
    return-void
.end method

.method private constructor <init>(Lcom/squareup/otto/Bus;Lajq;Lze;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Lzd$1;

    invoke-direct {v0, p0}, Lzd$1;-><init>(Lzd;)V

    iput-object v0, p0, Lzd;->a:Lzh$b;

    .line 56
    iput-object p1, p0, Lzd;->c:Lcom/squareup/otto/Bus;

    .line 57
    iput-object p2, p0, Lzd;->d:Lajq;

    .line 58
    iput-object p3, p0, Lzd;->e:Lze;

    .line 59
    return-void
.end method

.method static synthetic a(Lzd;)Lajq;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lzd;->d:Lajq;

    return-object v0
.end method

.method public static a()Lzd;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lzd;->b:Lzd;

    return-object v0
.end method

.method static synthetic b(Lzd;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lzd;->c:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lzd;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdy;

    invoke-direct {v1}, Lbdy;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method static synthetic c(Lzd;)Lze;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lzd;->e:Lze;

    return-object v0
.end method

.method static synthetic d(Lzd;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lzd;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/StoryCollection;)I
    .locals 6
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 73
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->AUTO_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lzd;->a(Lcom/snapchat/android/model/StoryCollection;ILaje;ZLcom/snapchat/android/controller/stories/StoryLoadingContext;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/snapchat/android/model/StoryCollection;ILaje;ZLcom/snapchat/android/controller/stories/StoryLoadingContext;)I
    .locals 3
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lbgp;->a()V

    .line 91
    check-cast p3, Lajr;

    invoke-virtual {p1, p2, p3}, Lcom/snapchat/android/model/StoryCollection;->a(ILajr;)Ljava/util/List;

    move-result-object v0

    .line 93
    new-instance v1, Lzh$a;

    invoke-direct {v1, p5}, Lzh$a;-><init>(Lcom/snapchat/android/controller/stories/StoryLoadingContext;)V

    iput-boolean p4, v1, Lzh$a;->d:Z

    iput-object p1, v1, Lzh$a;->c:Lcom/snapchat/android/model/StoryCollection;

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 98
    invoke-virtual {v1, v0}, Lzh$a;->a(Lajr;)Lzh$a;

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v1}, Lzh$a;->a()Lzh;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lzd;->a:Lzh$b;

    invoke-virtual {v0, v1}, Lzh;->a(Lzh$b;)I

    move-result v0

    .line 105
    invoke-direct {p0}, Lzd;->b()V

    .line 106
    return v0
.end method

.method public final a(Lajr;)Z
    .locals 1
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lzd;->b(Lajr;)Z

    move-result v0

    return v0
.end method

.method public final a(Lajr;Lcom/snapchat/android/controller/stories/StoryLoadingContext;)Z
    .locals 3
    .annotation build Lccm;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-static {}, Lbgp;->a()V

    new-instance v1, Lzh$a;

    invoke-direct {v1, p2}, Lzh$a;-><init>(Lcom/snapchat/android/controller/stories/StoryLoadingContext;)V

    invoke-virtual {v1, p1}, Lzh$a;->a(Lajr;)Lzh$a;

    move-result-object v1

    iput-boolean v0, v1, Lzh$a;->d:Z

    invoke-virtual {v1}, Lzh$a;->a()Lzh;

    move-result-object v1

    iget-object v2, p0, Lzd;->a:Lzh$b;

    invoke-virtual {v1, v2}, Lzh;->a(Lzh$b;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 137
    :cond_0
    invoke-direct {p0}, Lzd;->b()V

    .line 138
    return v0
.end method

.method public final b(Lajr;)Z
    .locals 1
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->AUTO_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual {p0, p1, v0}, Lzd;->a(Lajr;Lcom/snapchat/android/controller/stories/StoryLoadingContext;)Z

    move-result v0

    return v0
.end method
