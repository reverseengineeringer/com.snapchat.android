.class public final enum Lcom/snapchat/android/camera/model/CameraModel$CameraType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/model/CameraModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/camera/model/CameraModel$CameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/camera/model/CameraModel$CameraType;

.field public static final enum BACK_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

.field public static final enum FRONT_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

.field public static final enum NONE:Lcom/snapchat/android/camera/model/CameraModel$CameraType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    const-string v1, "FRONT_FACING"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/model/CameraModel$CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->FRONT_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 44
    new-instance v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    const-string v1, "BACK_FACING"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/camera/model/CameraModel$CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->BACK_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 45
    new-instance v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/camera/model/CameraModel$CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->NONE:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    sget-object v1, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->FRONT_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->BACK_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->NONE:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->$VALUES:[Lcom/snapchat/android/camera/model/CameraModel$CameraType;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/camera/model/CameraModel$CameraType;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/camera/model/CameraModel$CameraType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->$VALUES:[Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-virtual {v0}, [Lcom/snapchat/android/camera/model/CameraModel$CameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    return-object v0
.end method
