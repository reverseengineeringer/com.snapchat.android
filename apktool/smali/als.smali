.class public final Lals;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lals$a;,
        Lals$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lalb;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0, v1}, Lals;-><init>(Lalb;Landroid/os/Handler;)V

    .line 94
    return-void
.end method

.method private constructor <init>(Lalb;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lals;->b:Lalb;

    .line 99
    iput-object p2, p0, Lals;->a:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static synthetic a(Lals;Lals$a;Luc;Ljava/lang/Exception;I)V
    .locals 7

    .prologue
    .line 36
    iget-object v6, p0, Lals;->a:Landroid/os/Handler;

    new-instance v0, Lals$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lals$3;-><init>(Lals;Lals$a;Luc;Ljava/lang/Exception;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lawp;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Lals$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laje;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lawp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/networkmanager/DownloadPriority;",
            "Lcom/snapchat/android/networkmanager/DownloadPriority;",
            "Lals$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lck;->a(Z)V

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    const/4 v1, 0x0

    .line 203
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 204
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laje;

    .line 205
    if-nez v1, :cond_1

    .line 206
    invoke-virtual {v0}, Laje;->j()Ljava/lang/String;

    move-result-object v1

    .line 210
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Laje;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {v0}, Laje;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2

    .line 213
    :cond_2
    new-instance v0, Lalc$a;

    invoke-direct {v0}, Lalc$a;-><init>()V

    iput-object p7, v0, Lalc$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object p8, v0, Lalc$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object p2, v0, Lalc$a;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lalc$a;->e:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    iput-object v2, v0, Lalc$a;->h:[Ljava/lang/String;

    iput-object p6, v0, Lalc$a;->g:Ljava/lang/String;

    iput-object p3, v0, Lalc$a;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Lalc$a;->a()Lalc;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lals;->b:Lalb;

    new-instance v2, Lals$2;

    invoke-direct {v2, p0, p1, p4, p9}, Lals$2;-><init>(Lals;Ljava/util/Map;Lawp;Lals$a;)V

    invoke-virtual {v1, v0, v2}, Lalb;->a(Lalc;Lalb$a;)V

    .line 228
    return-void
.end method


# virtual methods
.method public final a(Laje;Ljava/lang/String;Ljava/lang/Object;Lawp;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Lals$a;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 168
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    invoke-virtual {p1}, Laje;->L()Z

    .line 172
    const-string v0, "%s-%s-%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1}, Laje;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Laje;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Lalc$a;

    invoke-direct {v1}, Lalc$a;-><init>()V

    iput-object p6, v1, Lalc$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object p7, v1, Lalc$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object p2, v1, Lalc$a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Laje;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lalc$a;->e:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    aput-object p5, v2, v5

    invoke-virtual {p1}, Laje;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iput-object v2, v1, Lalc$a;->h:[Ljava/lang/String;

    iput-object v0, v1, Lalc$a;->g:Ljava/lang/String;

    iput-object p3, v1, Lalc$a;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Laje;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Laje;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v4}, Lalc$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lalc$a;

    move-result-object v0

    invoke-virtual {v0}, Lalc$a;->a()Lalc;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lals;->b:Lalb;

    new-instance v2, Lals$1;

    invoke-virtual {p1}, Laje;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ldf;->b(Ljava/lang/Object;Ljava/lang/Object;)Ldf;

    move-result-object v3

    invoke-direct {v2, p0, v3, p4, p8}, Lals$1;-><init>(Lals;Ljava/util/Map;Lawp;Lals$a;)V

    invoke-virtual {v1, v0, v2}, Lalb;->a(Lalc;Lalb$a;)V

    .line 191
    return-void
.end method

.method public final a(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Object;Lals$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lajr;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lals$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 110
    invoke-virtual {v0}, Lajr;->az()Z

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {}, Ldl;->c()Ljava/util/TreeMap;

    move-result-object v1

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Thumbnails-["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 116
    const-string v4, "%s-%s;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v0, Lajr;->mUsername:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lajr;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Lajr;->av()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 119
    :cond_1
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    sget-object v4, Lawq;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Lawp;

    const-string v5, "STORIES"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/snapchat/android/networkmanager/DownloadPriority;->HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v8, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lals;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lawp;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Lals$a;)V

    .line 123
    return-void
.end method
