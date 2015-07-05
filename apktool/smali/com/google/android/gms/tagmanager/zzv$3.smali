.class Lcom/google/android/gms/tagmanager/zzv$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzv;->zzcW(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzayt:Lcom/google/android/gms/tagmanager/zzv;

.field final synthetic zzayv:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzv;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzv$3;->zzayt:Lcom/google/android/gms/tagmanager/zzv;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzv$3;->zzayv:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzv$3;->zzayt:Lcom/google/android/gms/tagmanager/zzv;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzv$3;->zzayv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzv;->zza(Lcom/google/android/gms/tagmanager/zzv;Ljava/lang/String;)V

    return-void
.end method
