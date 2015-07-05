.class Lcom/google/android/gms/internal/zzvn$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzvn;->zzf(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGV:[B

.field final synthetic zzaCD:Lcom/google/android/gms/internal/zzvn;

.field final synthetic zzaCz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzvn;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvn$2;->zzaCD:Lcom/google/android/gms/internal/zzvn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvn$2;->zzaCz:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzvn$2;->zzGV:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvn$2;->zzaCD:Lcom/google/android/gms/internal/zzvn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvn$2;->zzaCz:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvn$2;->zzGV:[B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzvn;->zzg(Ljava/lang/String;[B)V

    return-void
.end method
