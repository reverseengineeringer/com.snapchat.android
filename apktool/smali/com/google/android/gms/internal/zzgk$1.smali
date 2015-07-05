.class Lcom/google/android/gms/internal/zzgk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgk;->zzdw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzwi:Lcom/google/android/gms/internal/zzgk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgk$1;->zzwi:Lcom/google/android/gms/internal/zzgk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgk$1;->zzwi:Lcom/google/android/gms/internal/zzgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgk;->onStop()V

    return-void
.end method
