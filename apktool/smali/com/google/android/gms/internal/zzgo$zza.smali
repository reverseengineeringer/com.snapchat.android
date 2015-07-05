.class public final Lcom/google/android/gms/internal/zzgo$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final zzlM:Ljava/lang/String;

.field public final zzlP:Lcom/google/android/gms/internal/zzhy;

.field public final zzlV:Lcom/google/android/gms/internal/zzba;

.field public final zzmf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzwA:Ljava/lang/String;

.field public final zzwB:Z

.field public final zzwC:I

.field public final zzwE:J

.field public final zzwF:Ljava/lang/String;

.field public final zzwm:Landroid/os/Bundle;

.field public final zzwn:Lcom/google/android/gms/internal/zzax;

.field public final zzwo:Landroid/content/pm/PackageInfo;

.field public final zzwq:Ljava/lang/String;

.field public final zzwr:Ljava/lang/String;

.field public final zzws:Landroid/os/Bundle;

.field public final zzwt:I

.field public final zzwu:Landroid/os/Bundle;

.field public final zzwv:Z

.field public final zzww:Landroid/os/Messenger;

.field public final zzwx:I

.field public final zzwy:I

.field public final zzwz:F


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzba;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzhy;Landroid/os/Bundle;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;ZIJLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/zzax;",
            "Lcom/google/android/gms/internal/zzba;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhy;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/os/Messenger;",
            "IIF",
            "Ljava/lang/String;",
            "ZIJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwm:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwn:Lcom/google/android/gms/internal/zzax;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzlV:Lcom/google/android/gms/internal/zzba;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzlM:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgo$zza;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwo:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwq:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwr:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzlP:Lcom/google/android/gms/internal/zzhy;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzws:Landroid/os/Bundle;

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwv:Z

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzww:Landroid/os/Messenger;

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwx:I

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwy:I

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwz:F

    if-eqz p11, :cond_0

    invoke-interface {p11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwt:I

    iput-object p11, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzmf:Ljava/util/List;

    :goto_0
    iput-object p12, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwu:Landroid/os/Bundle;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwA:Ljava/lang/String;

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwB:Z

    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwC:I

    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwE:J

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwF:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzwt:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzgo$zza;->zzmf:Ljava/util/List;

    goto :goto_0
.end method
