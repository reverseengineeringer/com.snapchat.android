.class public final Ladx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lchh;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ladx;->b:Ljava/util/LinkedHashSet;

    .line 24
    iput-object p1, p0, Ladx;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Ladx;->c:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 8
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Ladx;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 66
    iget-object v0, p0, Ladx;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchh;

    .line 67
    new-instance v3, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;

    iget-object v4, p0, Ladx;->a:Ljava/lang/String;

    iget-object v5, p0, Ladx;->c:Ljava/lang/String;

    iget-wide v6, v0, Lcih;->a:J

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_0
    return-object v1
.end method

.method public final a(Lchh;)V
    .locals 1
    .param p1    # Lchh;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 57
    iget-object v0, p0, Ladx;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public final b(Lchh;)I
    .locals 10
    .param p1    # Lchh;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Ladx;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return v2

    .line 82
    :cond_0
    iget-object v0, p0, Ladx;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchh;

    .line 83
    invoke-static {p1}, Lchk;->a(Lcia;)J

    move-result-wide v6

    invoke-virtual {v0}, Lcif;->c()J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-nez v4, :cond_2

    move v4, v3

    :goto_2
    if-nez v4, :cond_1

    invoke-static {p1}, Lchk;->a(Lcia;)J

    move-result-wide v6

    invoke-virtual {v0}, Lcif;->c()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-lez v0, :cond_3

    move v0, v3

    :goto_3
    if-eqz v0, :cond_4

    .line 84
    :cond_1
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_1

    :cond_2
    move v4, v2

    .line 83
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    .line 86
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 88
    goto :goto_1

    :cond_5
    move v2, v1

    .line 89
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    invoke-static {p0}, Lcl;->a(Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "publisherName"

    iget-object v2, p0, Ladx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "publisherInternationalName"

    iget-object v2, p0, Ladx;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "datesViewed"

    iget-object v2, p0, Ladx;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
