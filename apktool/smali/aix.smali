.class public final Laix;
.super Laiw;
.source "SourceFile"


# annotations
.annotation runtime Lbxs;
.end annotation


# instance fields
.field public final d:Laxn;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/util/Map;
    .annotation runtime Lbxp;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lajr;",
            ">;"
        }
    .end annotation
.end field

.field public volatile g:Z

.field private final h:Lban;

.field private final i:Lcom/google/gson/Gson;

.field private final j:Lain;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Laxo;->GEOFILTER_METADATA_CACHE:Laxn;

    new-instance v1, Lban;

    invoke-direct {v1}, Lban;-><init>()V

    invoke-static {}, Lain;->a()Lain;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Laix;-><init>(Laxn;Lban;Lain;)V

    .line 51
    new-instance v0, Laix$1;

    invoke-direct {v0, p0}, Laix$1;-><init>(Laix;)V

    invoke-static {v0}, Lbhp;->b(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method private constructor <init>(Laxn;Lban;Lain;)V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0}, Laiw;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laix;->e:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laix;->f:Ljava/util/Map;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Laix;->g:Z

    .line 67
    iput-object p1, p0, Laix;->d:Laxn;

    .line 68
    iput-object p2, p0, Laix;->h:Lban;

    .line 69
    iput-object p3, p0, Laix;->j:Lain;

    .line 70
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lcht;

    new-instance v2, Lajo;

    invoke-direct {v2}, Lajo;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Laix;->i:Lcom/google/gson/Gson;

    .line 73
    return-void
.end method


# virtual methods
.method protected final a(Laxn;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxn;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lajr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {p1}, Laxn;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 206
    invoke-virtual {p1}, Laxn;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    :try_start_0
    invoke-virtual {p1, v0}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 210
    if-nez v1, :cond_0

    .line 211
    invoke-virtual {p1, v0}, Laxn;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    .line 225
    invoke-virtual {p1, v0}, Laxn;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 215
    iget-object v1, p0, Laix;->i:Lcom/google/gson/Gson;

    const-class v5, Lajr;

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajr;

    .line 216
    new-instance v4, Lcht;

    invoke-direct {v4}, Lcht;-><init>()V

    .line 217
    iget-object v5, v1, Lajr;->mClientCacheExpiration:Lcht;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lajr;->mClientCacheExpiration:Lcht;

    invoke-virtual {v5, v4}, Lcht;->c(Lcic;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 219
    :cond_1
    invoke-virtual {p1, v0}, Laxn;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 226
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/google/gson/JsonParseException;->getMessage()Ljava/lang/String;

    .line 228
    invoke-virtual {p1, v0}, Laxn;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_2
    :try_start_2
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 231
    :cond_3
    return-object v2
.end method

.method public final a(Lajr;)V
    .locals 3
    .param p1    # Lajr;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 90
    iget-boolean v0, p0, Laix;->g:Z

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Laix;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Laix;->f:Ljava/util/Map;

    iget-object v2, p1, Lajr;->mFilterId:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-static {}, Lbhp;->b()V

    :try_start_1
    iget-object v0, p1, Lajr;->mFilterId:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Laix;->h:Lban;

    new-instance v1, Lon;

    const-string v2, "Could not serialize geofilter filter id is null "

    invoke-direct {v1, v2}, Lon;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lban;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Laxq; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laix;->a(Lajr;Z)V

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 96
    :cond_1
    :try_start_3
    iget-object v0, p0, Laix;->i:Lcom/google/gson/Gson;

    const-class v1, Lajr;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not serialize geofilter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lajr;->mFilterId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laix;->h:Lban;

    new-instance v2, Lon;

    invoke-direct {v2, v0}, Lon;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lban;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Laxq; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Laxq;->getMessage()Ljava/lang/String;

    goto :goto_1

    :cond_3
    :try_start_4
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-nez v1, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not getBytes for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lajr;->mFilterId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laix;->h:Lban;

    new-instance v2, Lon;

    invoke-direct {v2, v0}, Lon;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lban;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Laix;->d:Laxn;

    iget-object v2, p1, Lajr;->mFilterId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Laxn;->a(Ljava/lang/String;[B)V
    :try_end_4
    .catch Laxq; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public final c()Ljava/util/List;
    .locals 7
    .annotation build Lcbr;
    .end annotation

    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-boolean v0, p0, Laix;->g:Z

    if-nez v0, :cond_0

    move-object v0, v2

    .line 123
    :goto_0
    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Laix;->j:Lain;

    invoke-virtual {v0}, Lain;->d()Landroid/location/Location;

    move-result-object v3

    .line 114
    if-nez v3, :cond_1

    move-object v0, v2

    .line 115
    goto :goto_0

    .line 117
    :cond_1
    iget-object v4, p0, Laix;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 118
    :try_start_0
    iget-object v0, p0, Laix;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajr;

    iget-object v6, v1, Lajr;->mGeofence:Lajq;

    if-eqz v6, :cond_3

    if-nez v3, :cond_4

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_2

    .line 120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 119
    :cond_4
    :try_start_1
    iget-object v1, v1, Lajr;->mGeofence:Lajq;

    invoke-virtual {v1, v3}, Lajq;->a(Landroid/location/Location;)Z

    move-result v1

    goto :goto_2

    .line 123
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0
.end method
