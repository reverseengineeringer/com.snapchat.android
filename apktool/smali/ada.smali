.class public final Lada;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lacw;

.field final b:Ladf;

.field final c:Ladj;

.field d:Landroid/database/Cursor;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lacx;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lbgk;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Lacw;->a()Lacw;

    move-result-object v0

    invoke-static {}, Ladf;->a()Ladf;

    move-result-object v1

    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v2

    new-instance v3, Lbgk;

    invoke-direct {v3}, Lbgk;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lada;-><init>(Lacw;Ladf;Ladj;Lbgk;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Lacw;Ladf;Ladj;Lbgk;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lada;->e:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lada;->f:Ljava/util/Set;

    .line 175
    new-instance v0, Lada$1;

    invoke-direct {v0, p0}, Lada$1;-><init>(Lada;)V

    iput-object v0, p0, Lada;->h:Ljava/util/Comparator;

    .line 194
    new-instance v0, Lada$2;

    invoke-direct {v0, p0}, Lada$2;-><init>(Lada;)V

    iput-object v0, p0, Lada;->i:Ljava/util/Comparator;

    .line 213
    new-instance v0, Lada$3;

    invoke-direct {v0, p0}, Lada$3;-><init>(Lada;)V

    iput-object v0, p0, Lada;->j:Ljava/util/Comparator;

    .line 65
    iput-object p1, p0, Lada;->a:Lacw;

    .line 66
    iput-object p2, p0, Lada;->b:Ladf;

    .line 67
    iput-object p3, p0, Lada;->c:Ladj;

    .line 68
    iput-object p4, p0, Lada;->k:Lbgk;

    .line 69
    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;Ljava/util/Comparator;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lada;->g:Ljava/util/List;

    .line 163
    iget-object v0, p0, Lada;->g:Ljava/util/List;

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    iget-object v0, p0, Lada;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 167
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lada;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lada;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    iget v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->f:I

    .line 169
    aput v1, v2, v0

    .line 167
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 172
    :cond_0
    return-object v2
.end method
