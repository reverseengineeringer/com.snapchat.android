.class Lcom/google/android/gms/internal/zzht$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzht;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzht$zza;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzzC:Ljava/lang/String;

.field final synthetic zzzD:Lcom/google/android/gms/internal/zzht$zza;

.field final synthetic zzzE:Lcom/google/android/gms/internal/zzht;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzht;Ljava/lang/String;Lcom/google/android/gms/internal/zzht$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzht$2;->zzzE:Lcom/google/android/gms/internal/zzht;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzht$2;->zzzC:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzht$2;->zzzD:Lcom/google/android/gms/internal/zzht$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzht$2;->zzzE:Lcom/google/android/gms/internal/zzht;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzht$2;->zzzC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzht;->zzW(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_1

    const/16 v2, 0x12b

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht$2;->zzzD:Lcom/google/android/gms/internal/zzht$zza;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzht$zza;->zzb(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzht$2;->zzzD:Lcom/google/android/gms/internal/zzht$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzht$zza;->zzdQ()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Error making HTTP request."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "Error making HTTP request."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0
.end method
