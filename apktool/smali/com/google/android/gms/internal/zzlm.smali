.class public final Lcom/google/android/gms/internal/zzlm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zzln;


# instance fields
.field final zzFG:I

.field private final zzRi:J

.field private zzRj:Ljava/lang/String;

.field private final zzRk:Ljava/lang/String;

.field private final zzRl:Ljava/lang/String;

.field private final zzRm:Ljava/lang/String;

.field private final zzRn:Ljava/lang/String;

.field private final zzRo:Ljava/lang/String;

.field private final zzRp:J

.field private zzRq:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzln;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzln;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlm;->CREATOR:Lcom/google/android/gms/internal/zzln;

    return-void
.end method

.method constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzlm;->zzFG:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzlm;->zzRi:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlm;->zzRj:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzlm;->zzRk:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzlm;->zzRl:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzlm;->zzRm:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzlm;->zzRn:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzlm;->zzRq:J

    iput-object p9, p0, Lcom/google/android/gms/internal/zzlm;->zzRo:Ljava/lang/String;

    iput-wide p10, p0, Lcom/google/android/gms/internal/zzlm;->zzRp:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 13

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzlm;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzlm;->zzRi:J

    return-wide v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzln;->zza(Lcom/google/android/gms/internal/zzlm;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzjT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->zzRj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzjU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->zzRk:Ljava/lang/String;

    return-object v0
.end method

.method public final zzjV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->zzRl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzjW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->zzRm:Ljava/lang/String;

    return-object v0
.end method

.method public final zzjX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->zzRn:Ljava/lang/String;

    return-object v0
.end method

.method public final zzjY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->zzRo:Ljava/lang/String;

    return-object v0
.end method

.method public final zzjZ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzlm;->zzRp:J

    return-wide v0
.end method
