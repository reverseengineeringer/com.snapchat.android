.class Lcom/google/android/gms/internal/zzgb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgb;->zzdw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzvP:Lcom/google/android/gms/internal/zzgb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgb$1;->zzvP:Lcom/google/android/gms/internal/zzgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgb$1;->zzvP:Lcom/google/android/gms/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgb;->onStop()V

    return-void
.end method
