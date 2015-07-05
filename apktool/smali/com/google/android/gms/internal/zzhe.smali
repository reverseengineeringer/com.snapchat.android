.class public Lcom/google/android/gms/internal/zzhe;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzhe$zza;
    }
.end annotation


# instance fields
.field public final errorCode:I

.field public final orientation:I

.field public final zzsL:Lcom/google/android/gms/internal/zzdj;

.field public final zzsM:Lcom/google/android/gms/internal/zzds;

.field public final zzsN:Ljava/lang/String;

.field public final zzsO:Lcom/google/android/gms/internal/zzdm;

.field public final zzst:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzsu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzsx:J

.field public final zzuq:Lcom/google/android/gms/internal/zzic;

.field public final zzwD:Ljava/lang/String;

.field public final zzwH:J

.field public final zzwI:Z

.field public final zzwJ:J

.field public final zzwK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzwN:Ljava/lang/String;

.field public final zzwn:Lcom/google/android/gms/internal/zzax;

.field public final zzwq:Ljava/lang/String;

.field public final zzys:Lorg/json/JSONObject;

.field public final zzyt:Lcom/google/android/gms/internal/zzdk;

.field public final zzyu:Lcom/google/android/gms/internal/zzba;

.field public final zzyv:J

.field public final zzyw:J

.field public final zzyx:Lcom/google/android/gms/internal/zzcn$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzic;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzdj;Lcom/google/android/gms/internal/zzds;Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdm;JLcom/google/android/gms/internal/zzba;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzcn$zza;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzax;",
            "Lcom/google/android/gms/internal/zzic;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/zzdj;",
            "Lcom/google/android/gms/internal/zzds;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdk;",
            "Lcom/google/android/gms/internal/zzdm;",
            "J",
            "Lcom/google/android/gms/internal/zzba;",
            "JJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/google/android/gms/internal/zzcn$zza;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhe;->zzwn:Lcom/google/android/gms/internal/zzax;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhe;->zzuq:Lcom/google/android/gms/internal/zzic;

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzst:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/internal/zzhe;->errorCode:I

    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzsu:Ljava/util/List;

    if-eqz p6, :cond_2

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzwK:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/internal/zzhe;->orientation:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzhe;->zzsx:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzhe;->zzwq:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/zzhe;->zzwI:Z

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzsL:Lcom/google/android/gms/internal/zzdj;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzsM:Lcom/google/android/gms/internal/zzds;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzsN:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzyt:Lcom/google/android/gms/internal/zzdk;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzsO:Lcom/google/android/gms/internal/zzdm;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhe;->zzwJ:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzyu:Lcom/google/android/gms/internal/zzba;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhe;->zzwH:J

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhe;->zzyv:J

    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhe;->zzyw:J

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzwN:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzys:Lorg/json/JSONObject;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzyx:Lcom/google/android/gms/internal/zzcn$zza;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzwD:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzic;Lcom/google/android/gms/internal/zzdj;Lcom/google/android/gms/internal/zzds;Ljava/lang/String;Lcom/google/android/gms/internal/zzdm;Lcom/google/android/gms/internal/zzcn$zza;)V
    .locals 32

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyy:Lcom/google/android/gms/internal/zzgo;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzgo;->zzwn:Lcom/google/android/gms/internal/zzax;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyz:Lcom/google/android/gms/internal/zzgq;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzgq;->zzst:Ljava/util/List;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/gms/internal/zzhe$zza;->errorCode:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyz:Lcom/google/android/gms/internal/zzgq;

    iget-object v7, v2, Lcom/google/android/gms/internal/zzgq;->zzsu:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyz:Lcom/google/android/gms/internal/zzgq;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzgq;->zzwK:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyz:Lcom/google/android/gms/internal/zzgq;

    iget v9, v2, Lcom/google/android/gms/internal/zzgq;->orientation:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyz:Lcom/google/android/gms/internal/zzgq;

    iget-wide v10, v2, Lcom/google/android/gms/internal/zzgq;->zzsx:J

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyy:Lcom/google/android/gms/internal/zzgo;

    iget-object v12, v2, Lcom/google/android/gms/internal/zzgo;->zzwq:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyz:Lcom/google/android/gms/internal/zzgq;

    iget-boolean v13, v2, Lcom/google/android/gms/internal/zzgq;->zzwI:Z

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyt:Lcom/google/android/gms/internal/zzdk;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyz:Lcom/google/android/gms/internal/zzgq;

    iget-wide v0, v2, Lcom/google/android/gms/internal/zzgq;->zzwJ:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzlV:Lcom/google/android/gms/internal/zzba;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyz:Lcom/google/android/gms/internal/zzgq;

    iget-wide v0, v2, Lcom/google/android/gms/internal/zzgq;->zzwH:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyv:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyw:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyz:Lcom/google/android/gms/internal/zzgq;

    iget-object v0, v2, Lcom/google/android/gms/internal/zzgq;->zzwN:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzys:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyy:Lcom/google/android/gms/internal/zzgo;

    iget-object v0, v2, Lcom/google/android/gms/internal/zzgo;->zzwD:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v18, p6

    move-object/from16 v30, p7

    invoke-direct/range {v2 .. v31}, Lcom/google/android/gms/internal/zzhe;-><init>(Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzic;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzdj;Lcom/google/android/gms/internal/zzds;Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdm;JLcom/google/android/gms/internal/zzba;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzcn$zza;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zzba()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzuq:Lcom/google/android/gms/internal/zzic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzuq:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzuq:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzid;->zzba()Z

    move-result v0

    goto :goto_0
.end method
