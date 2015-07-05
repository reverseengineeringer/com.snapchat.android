.class Lcom/google/android/gms/tagmanager/zzcl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzr;Lcom/google/android/gms/tagmanager/zzcl$zzb;Lcom/google/android/gms/tagmanager/zzcl$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzazS:Lcom/google/android/gms/tagmanager/zzcl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcl$2;->zzazS:Lcom/google/android/gms/tagmanager/zzcl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/tagmanager/zzr;)Lcom/google/android/gms/tagmanager/zzck;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tagmanager/zzck;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcl$2;->zzazS:Lcom/google/android/gms/tagmanager/zzcl;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzcl;->zza(Lcom/google/android/gms/tagmanager/zzcl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcl$2;->zzazS:Lcom/google/android/gms/tagmanager/zzcl;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzcl;->zzb(Lcom/google/android/gms/tagmanager/zzcl;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/tagmanager/zzck;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzr;)V

    return-object v0
.end method
