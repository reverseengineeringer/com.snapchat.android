.class public final Laby;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laby$1;
    }
.end annotation


# static fields
.field private static final d:Laby;


# instance fields
.field public final a:Ladj;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lace;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ladd;

.field private final e:Lcom/squareup/otto/Bus;

.field private final f:Lalb;

.field private g:Lacf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Laby;

    invoke-direct {v0}, Laby;-><init>()V

    sput-object v0, Laby;->d:Laby;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 56
    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lach;

    invoke-direct {v0}, Lach;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laci;

    invoke-direct {v0}, Laci;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lacg;

    invoke-direct {v0}, Lacg;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ladd;->a()Ladd;

    move-result-object v3

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v4

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Laby;-><init>(Ladj;Ljava/util/List;Ladd;Lcom/squareup/otto/Bus;Lalb;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Ladj;Ljava/util/List;Ladd;Lcom/squareup/otto/Bus;Lalb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ladj;",
            "Ljava/util/List",
            "<",
            "Lace;",
            ">;",
            "Ladd;",
            "Lcom/squareup/otto/Bus;",
            "Lalb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lacf;

    invoke-direct {v0}, Lacf;-><init>()V

    iput-object v0, p0, Laby;->g:Lacf;

    .line 65
    iput-object p2, p0, Laby;->b:Ljava/util/List;

    .line 66
    iput-object p1, p0, Laby;->a:Ladj;

    .line 67
    iput-object p3, p0, Laby;->c:Ladd;

    .line 68
    iput-object p4, p0, Laby;->e:Lcom/squareup/otto/Bus;

    .line 69
    iput-object p5, p0, Laby;->f:Lalb;

    .line 70
    return-void
.end method

.method public static a()Laby;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Laby;->d:Laby;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string v0, "DiscoverMediaManager"

    const-string v1, "DISCOVER-MEDIA: Fetching remote video urls for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    new-instance v0, Labu;

    invoke-direct {v0, p0}, Labu;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Labu;->a()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V
    .locals 7
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Laby;->g:Lacf;

    iget-object v0, v0, Lacf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lacf;

    iget-object v1, p0, Laby;->g:Lacf;

    iget-object v1, v1, Lacf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-direct {v0, v1, p2}, Lacf;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    .line 102
    :goto_0
    const-string v1, "DiscoverMediaManager"

    const-string v2, "DISCOVER-MEDIA: Updating user state from %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Laby;->g:Lacf;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iput-object v0, p0, Laby;->g:Lacf;

    .line 105
    iget-object v0, p0, Laby;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    .line 106
    iget-object v2, p0, Laby;->g:Lacf;

    invoke-interface {v0, v2}, Lace;->a(Lacf;)V

    goto :goto_1

    .line 100
    :cond_0
    new-instance v0, Lacf;

    invoke-direct {v0, p1, p2}, Lacf;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Laby;->f:Lalb;

    invoke-virtual {v0}, Lalb;->b()Lala;

    move-result-object v0

    .line 114
    if-eqz p2, :cond_4

    .line 116
    iget-object v1, p2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lala;->a(Ljava/lang/String;)Lala;

    move-result-object v0

    iget-object v1, p2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lala;->a(Ljava/lang/String;)Lala;

    move-result-object v0

    .line 125
    :goto_2
    iget-object v1, p0, Laby;->f:Lalb;

    invoke-virtual {v1, v0}, Lalb;->a(Lala;)V

    .line 126
    if-eqz p2, :cond_2

    .line 127
    iget-object v0, p0, Laby;->f:Lalb;

    iget-object v0, v0, Lalb;->a:Lalh;

    const-string v1, "DISCOVER"

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lalh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_2
    if-eqz p1, :cond_3

    .line 131
    iget-object v0, p0, Laby;->f:Lalb;

    iget-object v0, v0, Lalb;->a:Lalh;

    const-string v1, "DISCOVER"

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lalh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_3
    iget-object v0, p0, Laby;->a:Ladj;

    invoke-virtual {v0}, Ladj;->b()V

    .line 136
    return-void

    .line 117
    :cond_4
    if-eqz p1, :cond_5

    .line 120
    iget-object v1, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lala;->a(Ljava/lang/String;)Lala;

    move-result-object v0

    goto :goto_2

    .line 123
    :cond_5
    new-instance v0, Lala;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "DISCOVER"

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lala;-><init>([Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final b()V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Laby;->e:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Laby;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    .line 80
    invoke-interface {v0}, Lace;->a()V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 152
    const-string v0, "DiscoverMediaManager"

    const-string v1, "DISCOVER-MEDIA: Retry failed media"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Laby;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    .line 154
    invoke-interface {v0}, Lace;->c()V

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public final onUserLoadedEvent(Lber;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Laby;->a:Ladj;

    invoke-virtual {v0}, Ladj;->d()V

    .line 236
    return-void
.end method
