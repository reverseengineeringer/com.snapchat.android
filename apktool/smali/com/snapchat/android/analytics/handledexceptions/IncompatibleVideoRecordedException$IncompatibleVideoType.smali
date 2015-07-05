.class public final enum Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IncompatibleVideoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

.field public static final enum AMR_NB:Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

.field public static final enum H263:Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    const-string v1, "AMR_NB"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;->AMR_NB:Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    .line 14
    new-instance v0, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    const-string v1, "H263"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;->H263:Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    sget-object v1, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;->AMR_NB:Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;->H263:Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;->$VALUES:[Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;->$VALUES:[Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    return-object v0
.end method
