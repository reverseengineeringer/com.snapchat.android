.class Lcom/google/android/gms/analytics/zzag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/zzd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/zzag$zza;
    }
.end annotation


# static fields
.field private static final zzES:Ljava/lang/String;

.field private static final zzET:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzBr:Lcom/google/android/gms/analytics/zzo;

.field private volatile zzBs:Z

.field private final zzCb:Lcom/google/android/gms/analytics/zze;

.field private final zzEU:Lcom/google/android/gms/analytics/zzag$zza;

.field private volatile zzEV:Lcom/google/android/gms/analytics/zzr;

.field private final zzEW:Ljava/lang/String;

.field private zzEX:Lcom/google/android/gms/analytics/zzaf;

.field private zzEY:J

.field private final zzEZ:I

.field private zzmW:Lcom/google/android/gms/internal/zzlv;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "hits2"

    aput-object v2, v1, v4

    const-string v2, "hit_id"

    aput-object v2, v1, v5

    const-string v2, "hit_time"

    aput-object v2, v1, v6

    const-string v2, "hit_url"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "hit_string"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "hit_app_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/zzag;->zzES:Ljava/lang/String;

    const-string v0, "SELECT COUNT(*), MIN(%s), MAX(%s) FROM %s WHERE 1;"

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "hit_time"

    aput-object v2, v1, v4

    const-string v2, "hit_time"

    aput-object v2, v1, v5

    const-string v2, "hits2"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/zzag;->zzET:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/zze;Landroid/content/Context;Lcom/google/android/gms/analytics/zzo;)V
    .locals 6

    const-string v3, "google_analytics_v4.db"

    const/16 v4, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/analytics/zzag;-><init>(Lcom/google/android/gms/analytics/zze;Landroid/content/Context;Ljava/lang/String;ILcom/google/android/gms/analytics/zzo;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/zze;Landroid/content/Context;Ljava/lang/String;ILcom/google/android/gms/analytics/zzo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/zzag;->zzBs:Z

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzag;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/analytics/zzag;->zzBr:Lcom/google/android/gms/analytics/zzo;

    iput-object p3, p0, Lcom/google/android/gms/analytics/zzag;->zzEW:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzag;->zzCb:Lcom/google/android/gms/analytics/zze;

    invoke-static {}, Lcom/google/android/gms/internal/zzlx;->zzkc()Lcom/google/android/gms/internal/zzlv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzag;->zzmW:Lcom/google/android/gms/internal/zzlv;

    new-instance v0, Lcom/google/android/gms/analytics/zzag$zza;

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzag;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzag;->zzEW:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/analytics/zzag$zza;-><init>(Lcom/google/android/gms/analytics/zzag;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzag;->zzEU:Lcom/google/android/gms/analytics/zzag$zza;

    new-instance v0, Lcom/google/android/gms/analytics/zzh;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzag;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/analytics/zzag;->zzBr:Lcom/google/android/gms/analytics/zzo;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/zzh;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;Lcom/google/android/gms/analytics/zzo;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzag;->zzEV:Lcom/google/android/gms/analytics/zzr;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzag;->zzEY:J

    iput p4, p0, Lcom/google/android/gms/analytics/zzag;->zzEZ:I

    return-void
.end method

.method static zzD(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzac;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzac;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "&"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/zzag;)Lcom/google/android/gms/internal/zzlv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzag;->zzmW:Lcom/google/android/gms/internal/zzlv;

    return-object v0
.end method

.method private declared-synchronized zza(Ljava/util/Map;JLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "Error opening database for putHit"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/zzag;->zzar(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "hit_string"

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzag;->zzD(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hit_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v2, 0x0

    const-string v0, "AppUID"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :try_start_2
    const-string v0, "AppUID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    :goto_1
    :try_start_3
    const-string v2, "hit_app_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-nez p4, :cond_1

    const-string p4, "http://www.google-analytics.com/collect"

    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Empty path: not sending hit"

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :cond_3
    :try_start_4
    const-string v0, "hit_url"

    invoke-virtual {v5, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v0, "hits2"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzag;->zzCb:Lcom/google/android/gms/analytics/zze;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/zze;->zzD(Z)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    const-string v0, "Error storing hit"

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method private zza(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zzik;",
            ">;)V"
        }
    .end annotation

    const-string v0, "&_v"

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzik;

    const-string v3, "appendVersion"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzik;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzik;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private declared-synchronized zzar(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzag;->zzEU:Lcom/google/android/gms/analytics/zzag$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzag$zza;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/zzag;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzag;->zzEW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/analytics/zzag;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzag;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzgB()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/zzag;->zzES:Ljava/lang/String;

    return-object v0
.end method

.method private zzgy()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzag;->zzgA()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/analytics/zzag;->zzEZ:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zzag;->zzM(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Store full, deleting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hits to make room."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zzag;->zzb([Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Dispatch running..."

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzag;->zzEV:Lcom/google/android/gms/analytics/zzr;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/zzr;->zzfk()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/google/android/gms/analytics/zzag;->zzN(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "...nothing to dispatch"

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzag;->zzCb:Lcom/google/android/gms/analytics/zze;

    invoke-interface {v1, v0}, Lcom/google/android/gms/analytics/zze;->zzD(Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/analytics/zzag;->zzEX:Lcom/google/android/gms/analytics/zzaf;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/analytics/zzaf;

    const-string v4, "_t=dispatch&_v=ma4.0.6"

    invoke-direct {v3, v4, v1}, Lcom/google/android/gms/analytics/zzaf;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/google/android/gms/analytics/zzag;->zzEX:Lcom/google/android/gms/analytics/zzaf;

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzag;->zzgA()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v3, v4, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/analytics/zzag;->zzEV:Lcom/google/android/gms/analytics/zzr;

    iget-object v4, p0, Lcom/google/android/gms/analytics/zzag;->zzEX:Lcom/google/android/gms/analytics/zzaf;

    invoke-interface {v3, v2, v4, v0}, Lcom/google/android/gms/analytics/zzr;->zza(Ljava/util/List;Lcom/google/android/gms/analytics/zzaf;Z)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hits"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/zzag;->zzb(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzag;->zzgA()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzag;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzag;->zzEX:Lcom/google/android/gms/analytics/zzaf;

    goto/16 :goto_0
.end method

.method public setDryRun(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/zzag;->zzBs:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzag;->zzEV:Lcom/google/android/gms/analytics/zzr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzag;->zzEV:Lcom/google/android/gms/analytics/zzr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/zzr;->setDryRun(Z)V

    :cond_0
    return-void
.end method

.method declared-synchronized zzM(I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_0

    const-string v0, "Invalid maxHits specified. Skipping"

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v9

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "Error opening database for peekHitIds."

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/zzag;->zzar(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v9

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v1, "hits2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hit_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "%s ASC"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "hit_id"

    aput-object v12, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    if-eqz v1, :cond_4

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :goto_1
    move-object v0, v9

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v10

    :goto_2
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in peekHits fetching hitIds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_4

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v10

    :goto_3
    if-eqz v1, :cond_5

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public declared-synchronized zzN(I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/zzab;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Error opening database for peekHits"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/analytics/zzag;->zzar(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v11

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v12, 0x0

    :try_start_1
    const-string v3, "hits2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "hit_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "hit_time"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "%s ASC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "hit_id"

    aput-object v14, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    :try_start_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v4, Lcom/google/android/gms/analytics/zzab;

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, ""

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/analytics/zzab;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    if-eqz v13, :cond_4

    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    const/4 v11, 0x0

    :try_start_5
    const-string v3, "hits2"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "hit_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "hit_string"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "hit_url"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "%s ASC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "hit_id"

    aput-object v15, v10, v14

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v3

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    move v4, v11

    :goto_1
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    if-lez v2, :cond_8

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/zzab;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/analytics/zzab;->zzap(Ljava/lang/String;)V

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/zzab;

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/analytics/zzab;->zzaq(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v4, 0x1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result v4

    if-nez v4, :cond_d

    :cond_5
    if-eqz v3, :cond_6

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    move-object v2, v12

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v4, v12

    move-object v2, v11

    :goto_3
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in peekHits fetching hitIds: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v4, :cond_0

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catchall_1
    move-exception v2

    :goto_4
    if-eqz v12, :cond_7

    :try_start_a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_8
    :try_start_b
    const-string v5, "HitString for hitId %d too large.  Hit will be deleted."

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/zzab;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/zzab;->zzgs()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v13, v3

    :goto_5
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in peekHits fetching hitString: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v2

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/zzab;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/zzab;->zzgr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v4, :cond_b

    const/4 v4, 0x1

    :cond_9
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v2

    :goto_7
    if-eqz v13, :cond_a

    :try_start_d
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2

    :cond_b
    if-eqz v13, :cond_c

    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_c
    move-object v2, v3

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    move-object v13, v3

    goto :goto_7

    :catch_2
    move-exception v2

    goto :goto_5

    :catchall_4
    move-exception v2

    move-object v12, v13

    goto :goto_4

    :catchall_5
    move-exception v2

    move-object v12, v4

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v3, v2

    move-object v4, v13

    move-object v2, v11

    goto/16 :goto_3

    :catch_4
    move-exception v2

    move-object v3, v2

    move-object v4, v13

    move-object v2, v12

    goto/16 :goto_3

    :cond_d
    move v4, v2

    goto/16 :goto_1
.end method

.method public zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zzik;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzag;->zzgz()I

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzag;->zzgy()V

    invoke-direct {p0, p1, p5}, Lcom/google/android/gms/analytics/zzag;->zza(Ljava/util/Map;Ljava/util/Collection;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/analytics/zzag;->zza(Ljava/util/Map;JLjava/lang/String;)V

    return-void
.end method

.method zzb(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/analytics/zzab;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Empty/Null collection passed to deleteHits."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzab;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzab;->zzgs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/gms/analytics/zzag;->zzb([Ljava/lang/String;)V

    goto :goto_0
.end method

.method declared-synchronized zzb([Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v2, p1

    if-nez v2, :cond_2

    :cond_0
    const-string v0, "Empty hitIds passed to deleteHits."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string v2, "Error opening database for deleteHits."

    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/zzag;->zzar(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "HIT_ID in (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ","

    array-length v7, p1

    const-string v8, "?"

    invoke-static {v7, v8}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    const-string v4, "hits2"

    invoke-virtual {v2, v4, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzag;->zzCb:Lcom/google/android/gms/analytics/zze;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzag;->zzgA()I

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-interface {v2, v0}, Lcom/google/android/gms/analytics/zze;->zzD(Z)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error deleting hits "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public zzff()Lcom/google/android/gms/analytics/zzr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzag;->zzEV:Lcom/google/android/gms/analytics/zzr;

    return-object v0
.end method

.method public declared-synchronized zzfg()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "getMinMaxHitTimes may not be called from the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzbe(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    const-string v2, "Error opening database for getMinMaxHitTimes."

    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/zzag;->zzar(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    sget-object v3, Lcom/google/android/gms/analytics/zzag;->zzET:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :cond_2
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v2, "Error getting minMaxHitTimes"

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method declared-synchronized zzgA()I
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    const-string v2, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/zzag;->zzar(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string v3, "SELECT COUNT(*) from hits2"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    long-to-int v0, v2

    :cond_2
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v2, "Error getting numStoredHits"

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method declared-synchronized zzgz()I
    .locals 10

    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/analytics/zzag;->zzmW:Lcom/google/android/gms/internal/zzlv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlv;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/analytics/zzag;->zzEY:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iput-wide v4, p0, Lcom/google/android/gms/analytics/zzag;->zzEY:J

    const-string v1, "Error opening database for deleteStaleHits."

    invoke-direct {p0, v1}, Lcom/google/android/gms/analytics/zzag;->zzar(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/analytics/zzag;->zzmW:Lcom/google/android/gms/internal/zzlv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzlv;->currentTimeMillis()J

    move-result-wide v4

    const-wide v6, 0x9a7ec800L

    sub-long/2addr v4, v6

    const-string v3, "hits2"

    const-string v6, "HIT_TIME < ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v1, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/analytics/zzag;->zzCb:Lcom/google/android/gms/analytics/zze;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzag;->zzgA()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    :cond_2
    invoke-interface {v3, v0}, Lcom/google/android/gms/analytics/zze;->zzD(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzl(J)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string v2, "Error opening database for clearHits"

    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/zzag;->zzar(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-nez v3, :cond_1

    const-string v3, "hits2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/analytics/zzag;->zzCb:Lcom/google/android/gms/analytics/zze;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzag;->zzgA()I

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-interface {v2, v0}, Lcom/google/android/gms/analytics/zze;->zzD(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "hits2"

    const-string v5, "hit_app_id = ?"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
