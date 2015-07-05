.class Lcom/google/android/gms/tagmanager/zzv$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzv;->zza(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzayr:Ljava/util/List;

.field final synthetic zzays:J

.field final synthetic zzayt:Lcom/google/android/gms/tagmanager/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzv;Ljava/util/List;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzv$1;->zzayt:Lcom/google/android/gms/tagmanager/zzv;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzv$1;->zzayr:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzv$1;->zzays:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzv$1;->zzayt:Lcom/google/android/gms/tagmanager/zzv;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzv$1;->zzayr:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzv$1;->zzays:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzv;->zza(Lcom/google/android/gms/tagmanager/zzv;Ljava/util/List;J)V

    return-void
.end method
