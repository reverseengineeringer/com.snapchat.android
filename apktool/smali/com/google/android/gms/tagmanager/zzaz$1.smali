.class Lcom/google/android/gms/tagmanager/zzaz$1;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzaz;-><init>(ILcom/google/android/gms/tagmanager/zzl$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic zzazd:Lcom/google/android/gms/tagmanager/zzl$zza;

.field final synthetic zzaze:Lcom/google/android/gms/tagmanager/zzaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzaz;ILcom/google/android/gms/tagmanager/zzl$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaz$1;->zzaze:Lcom/google/android/gms/tagmanager/zzaz;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzaz$1;->zzazd:Lcom/google/android/gms/tagmanager/zzl$zza;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaz$1;->zzazd:Lcom/google/android/gms/tagmanager/zzl$zza;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/zzl$zza;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
