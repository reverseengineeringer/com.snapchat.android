.class public Lcom/google/android/gms/internal/zzgc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzgc$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzt;Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzic;Lcom/google/android/gms/internal/zzdr;Lcom/google/android/gms/internal/zzgc$zza;)Lcom/google/android/gms/internal/zzhl;
    .locals 6

    iget-object v0, p3, Lcom/google/android/gms/internal/zzhe$zza;->zzyz:Lcom/google/android/gms/internal/zzgq;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzgq;->zzwS:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzgg;

    new-instance v3, Lcom/google/android/gms/internal/zzai;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzai;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzt;Lcom/google/android/gms/internal/zzai;Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzgc$zza;)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhl;->start()V

    return-object v0

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzgq;->zzwI:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzgf;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzic;Lcom/google/android/gms/internal/zzdr;Lcom/google/android/gms/internal/zzgc$zza;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzgq;->zzwO:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzga;

    invoke-direct {v0, p1, p3, p4, p6}, Lcom/google/android/gms/internal/zzga;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzic;Lcom/google/android/gms/internal/zzgc$zza;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/zzca;->zzqI:Lcom/google/android/gms/internal/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbx;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzme;->zzkj()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzme;->zzkk()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p4}, Lcom/google/android/gms/internal/zzic;->zzad()Lcom/google/android/gms/internal/zzba;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzba;->zzpb:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzge;

    invoke-direct {v0, p1, p3, p4, p6}, Lcom/google/android/gms/internal/zzge;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzic;Lcom/google/android/gms/internal/zzgc$zza;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzgd;

    invoke-direct {v0, p1, p3, p4, p6}, Lcom/google/android/gms/internal/zzgd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzic;Lcom/google/android/gms/internal/zzgc$zza;)V

    goto :goto_0
.end method
