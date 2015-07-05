.class Lcom/google/android/gms/internal/zzvn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzvn;->zza(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/gms/internal/zzvh;Lcom/google/android/gms/internal/zzvm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaCA:Ljava/lang/Integer;

.field final synthetic zzaCB:Lcom/google/android/gms/internal/zzvh;

.field final synthetic zzaCC:Lcom/google/android/gms/internal/zzvm;

.field final synthetic zzaCD:Lcom/google/android/gms/internal/zzvn;

.field final synthetic zzaCz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzvn;Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/gms/internal/zzvh;Lcom/google/android/gms/internal/zzvm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvn$1;->zzaCD:Lcom/google/android/gms/internal/zzvn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvn$1;->zzaCz:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzvn$1;->zzaCA:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzvn$1;->zzaCB:Lcom/google/android/gms/internal/zzvh;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzvn$1;->zzaCC:Lcom/google/android/gms/internal/zzvm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvn$1;->zzaCD:Lcom/google/android/gms/internal/zzvn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvn$1;->zzaCz:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvn$1;->zzaCA:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzvn$1;->zzaCB:Lcom/google/android/gms/internal/zzvh;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzvn$1;->zzaCC:Lcom/google/android/gms/internal/zzvm;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzvn;->zzb(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/gms/internal/zzvh;Lcom/google/android/gms/internal/zzvm;)V

    return-void
.end method
