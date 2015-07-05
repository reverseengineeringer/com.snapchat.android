.class public final enum Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/hardware/CameraOperationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraOperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum ADD_CALLBACK_BUFFER:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum AUTOFOCUS:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum GET_PARAMETERS:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum LOCK:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum OPEN:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum RECONNECT:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum RELEASE:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum SET_CALLBACK_WITH_BUFFER:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum SET_ORIENTATION:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum SET_PARAMETERS:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum SET_TEXTURE:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum START_PREVIEW:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum STOP_PREVIEW:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum UNLOCK:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->OPEN:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->RELEASE:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "SET_PARAMETERS"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->SET_PARAMETERS:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "GET_PARAMETERS"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->GET_PARAMETERS:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "UNLOCK"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->UNLOCK:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "LOCK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->LOCK:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "RECONNECT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->RECONNECT:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "AUTOFOCUS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->AUTOFOCUS:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "START_PREVIEW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->START_PREVIEW:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "STOP_PREVIEW"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->STOP_PREVIEW:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    .line 24
    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "SET_CALLBACK_WITH_BUFFER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->SET_CALLBACK_WITH_BUFFER:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "SET_TEXTURE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->SET_TEXTURE:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "SET_ORIENTATION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->SET_ORIENTATION:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "ADD_CALLBACK_BUFFER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ADD_CALLBACK_BUFFER:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    .line 22
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->OPEN:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->RELEASE:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->SET_PARAMETERS:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->GET_PARAMETERS:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->UNLOCK:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->LOCK:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->RECONNECT:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->AUTOFOCUS:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->START_PREVIEW:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->STOP_PREVIEW:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->SET_CALLBACK_WITH_BUFFER:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->SET_TEXTURE:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->SET_ORIENTATION:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ADD_CALLBACK_BUFFER:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->$VALUES:[Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->$VALUES:[Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v0}, [Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    return-object v0
.end method
