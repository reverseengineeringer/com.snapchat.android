.class public final Lcom/google/android/gms/internal/zzgq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zzgr;


# instance fields
.field public final errorCode:I

.field public final orientation:I

.field public final versionCode:I

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

.field public final zzus:Ljava/lang/String;

.field public final zzwG:Ljava/lang/String;

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

.field public final zzwL:Ljava/lang/String;

.field public final zzwM:J

.field public final zzwN:Ljava/lang/String;

.field public final zzwO:Z

.field public final zzwP:Ljava/lang/String;

.field public final zzwQ:Ljava/lang/String;

.field public final zzwR:Z

.field public final zzwS:Z

.field public final zzwT:Z

.field public final zzwU:Z

.field public final zzwv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzgr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzgr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzgq;->CREATOR:Lcom/google/android/gms/internal/zzgr;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 29

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v1, p0

    move/from16 v6, p1

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/zzgq;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 30

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v1, p0

    move/from16 v6, p1

    move-wide/from16 v14, p2

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/zzgq;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZ)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzgq;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgq;->zzus:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgq;->zzwG:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/zzgq;->zzst:Ljava/util/List;

    iput p5, p0, Lcom/google/android/gms/internal/zzgq;->errorCode:I

    if-eqz p6, :cond_1

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/zzgq;->zzsu:Ljava/util/List;

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzgq;->zzwH:J

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzgq;->zzwI:Z

    iput-wide p10, p0, Lcom/google/android/gms/internal/zzgq;->zzwJ:J

    if-eqz p12, :cond_2

    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/zzgq;->zzwK:Ljava/util/List;

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgq;->zzsx:J

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/internal/zzgq;->orientation:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzwL:Ljava/lang/String;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgq;->zzwM:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzwN:Ljava/lang/String;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgq;->zzwO:Z

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzwP:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzwQ:Ljava/lang/String;

    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgq;->zzwR:Z

    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgq;->zzwS:Z

    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgq;->zzwv:Z

    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgq;->zzwT:Z

    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgq;->zzwU:Z

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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZZ)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ)V"
        }
    .end annotation

    const/16 v2, 0xb

    const/4 v6, -0x2

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move-object/from16 v13, p10

    move-wide/from16 v14, p11

    move/from16 v16, p13

    move-object/from16 v17, p14

    move-wide/from16 v18, p15

    move-object/from16 v20, p17

    move-object/from16 v23, p18

    move/from16 v24, p19

    move/from16 v25, p20

    move/from16 v26, p21

    move/from16 v27, p22

    move/from16 v28, p23

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/zzgq;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZ)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ)V"
        }
    .end annotation

    const/16 v2, 0xb

    const/4 v6, -0x2

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move-object/from16 v13, p10

    move-wide/from16 v14, p11

    move/from16 v16, p13

    move-object/from16 v17, p14

    move-wide/from16 v18, p15

    move-object/from16 v20, p17

    move/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    move/from16 v24, p21

    move/from16 v25, p22

    move/from16 v26, p23

    move/from16 v27, p24

    move/from16 v28, p25

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/zzgq;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZ)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzgr;->zza(Lcom/google/android/gms/internal/zzgq;Landroid/os/Parcel;I)V

    return-void
.end method
