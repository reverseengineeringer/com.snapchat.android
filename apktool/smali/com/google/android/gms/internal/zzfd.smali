.class public Lcom/google/android/gms/internal/zzfd;
.super Lcom/google/android/gms/internal/zzhl;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final zznh:Ljava/lang/Object;

.field private zzuW:Z

.field private zzuX:Lcom/google/android/gms/internal/zzfs;

.field private zzuY:Lcom/google/android/gms/internal/zzfc;

.field private zzuZ:Lcom/google/android/gms/internal/zzfi;

.field private zzva:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzfg;",
            ">;"
        }
    .end annotation
.end field

.field private zzvb:Lcom/google/android/gms/internal/zzfl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzfl;)V
    .locals 6

    new-instance v4, Lcom/google/android/gms/internal/zzfc;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/zzfc;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfi;->zzm(Landroid/content/Context;)Lcom/google/android/gms/internal/zzfi;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzfl;Lcom/google/android/gms/internal/zzfc;Lcom/google/android/gms/internal/zzfi;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzfl;Lcom/google/android/gms/internal/zzfc;Lcom/google/android/gms/internal/zzfi;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhl;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zznh:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfd;->zzuW:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zzva:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfd;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfd;->zzuX:Lcom/google/android/gms/internal/zzfs;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfd;->zzvb:Lcom/google/android/gms/internal/zzfl;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfd;->zzuY:Lcom/google/android/gms/internal/zzfc;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzfd;->zzuZ:Lcom/google/android/gms/internal/zzfi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zzuZ:Lcom/google/android/gms/internal/zzfi;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzfi;->zze(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zzva:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfd;)Lcom/google/android/gms/internal/zzfl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zzvb:Lcom/google/android/gms/internal/zzfl;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzfd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzfd;)Lcom/google/android/gms/internal/zzfs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zzuX:Lcom/google/android/gms/internal/zzfs;

    return-object v0
.end method

.method private zzc(J)V
    .locals 1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfd;->zzd(J)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Timeout waiting for pending transaction to be processed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzab(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfd;->zzuW:Z

    if-eqz v0, :cond_0

    return-void
.end method

.method private zzd(J)Z
    .locals 5

    const-wide/32 v0, 0xea60

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfd;->zznh:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "waitWithTimeout_lock interrupted"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zzuY:Lcom/google/android/gms/internal/zzfc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzfc;->zzx(Landroid/os/IBinder;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfd;->zzdx()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfd;->zzuW:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zznh:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "In-app billing service disconnected."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzaa(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zzuY:Lcom/google/android/gms/internal/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfc;->destroy()V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzlo;->zzka()Lcom/google/android/gms/internal/zzlo;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zzuY:Lcom/google/android/gms/internal/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfc;->destroy()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzfg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaU()Lcom/google/android/gms/internal/zzfj;

    const-string v1, "RESPONSE_CODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaU()Lcom/google/android/gms/internal/zzfj;

    const-string v1, "INAPP_PURCHASE_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaU()Lcom/google/android/gms/internal/zzfj;

    const-string v1, "INAPP_DATA_SIGNATURE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzfd$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/zzfd$1;-><init>(Lcom/google/android/gms/internal/zzfd;Lcom/google/android/gms/internal/zzfg;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zzdw()V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/internal/zzlo;->zzka()Lcom/google/android/gms/internal/zzlo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfd;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, p0, v4}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzfd;->zzc(J)V

    invoke-static {}, Lcom/google/android/gms/internal/zzlo;->zzka()Lcom/google/android/gms/internal/zzlo;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zzuY:Lcom/google/android/gms/internal/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfc;->destroy()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzdx()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zzva:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zzva:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfg;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfg;->zzvo:Ljava/lang/String;

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd;->zzuY:Lcom/google/android/gms/internal/zzfc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzfc;->zzh(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaU()Lcom/google/android/gms/internal/zzfj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzfj;->zzf(Landroid/os/Bundle;)I

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v1, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const-string v1, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-string v1, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    move v4, v0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzfg;

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaU()Lcom/google/android/gms/internal/zzfj;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/zzfj;->zzL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v3, Lcom/google/android/gms/internal/zzfg;->zzvn:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/gms/internal/zzfd;->zza(Lcom/google/android/gms/internal/zzfg;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfd;->zzuZ:Lcom/google/android/gms/internal/zzfi;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzfi;->zza(Lcom/google/android/gms/internal/zzfg;)V

    goto :goto_3

    :cond_6
    move-object v0, v5

    goto/16 :goto_1
.end method
