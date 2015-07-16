.class public final Laea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ladw;

.field final b:Laef;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ladx;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lbhk;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Ladw;->a()Ladw;

    move-result-object v0

    invoke-static {}, Laef;->a()Laef;

    move-result-object v1

    new-instance v2, Lbhk;

    invoke-direct {v2}, Lbhk;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Laea;-><init>(Ladw;Laef;Lbhk;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Ladw;Laef;Lbhk;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laea;->c:Ljava/util/Map;

    .line 127
    new-instance v0, Laea$1;

    invoke-direct {v0, p0}, Laea$1;-><init>(Laea;)V

    iput-object v0, p0, Laea;->d:Ljava/util/Comparator;

    .line 149
    new-instance v0, Laea$2;

    invoke-direct {v0, p0}, Laea$2;-><init>(Laea;)V

    iput-object v0, p0, Laea;->e:Ljava/util/Comparator;

    .line 168
    new-instance v0, Laea$3;

    invoke-direct {v0, p0}, Laea$3;-><init>(Laea;)V

    iput-object v0, p0, Laea;->f:Ljava/util/Comparator;

    .line 190
    new-instance v0, Laea$4;

    invoke-direct {v0, p0}, Laea$4;-><init>(Laea;)V

    iput-object v0, p0, Laea;->g:Ljava/util/Comparator;

    .line 64
    iput-object p1, p0, Laea;->a:Ladw;

    .line 65
    iput-object p2, p0, Laea;->b:Laef;

    .line 66
    iput-object p3, p0, Laea;->h:Lbhk;

    .line 67
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;I)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-object p1

    .line 81
    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x1

    .line 82
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    new-instance v5, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(I)V

    move v2, v1

    move v3, v0

    .line 85
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 86
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 87
    if-eqz v3, :cond_1

    .line 89
    iget-object v6, p0, Laea;->c:Ljava/util/Map;

    iget-object v7, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v3, v6

    .line 92
    :cond_1
    iget-object v6, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    move v0, v1

    .line 81
    goto :goto_1

    .line 96
    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Laea;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 97
    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Laea;->d:Ljava/util/Comparator;

    .line 99
    :goto_3
    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    :goto_4
    iget-object v0, p0, Laea;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 107
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 108
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 109
    iget-object v2, p0, Laea;->c:Ljava/util/Map;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 97
    :pswitch_0
    iget-object v0, p0, Laea;->g:Ljava/util/Comparator;

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Laea;->f:Ljava/util/Comparator;

    goto :goto_3

    .line 101
    :cond_4
    iget-object v0, p0, Laea;->f:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_4

    :cond_5
    move-object p1, v4

    .line 112
    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
