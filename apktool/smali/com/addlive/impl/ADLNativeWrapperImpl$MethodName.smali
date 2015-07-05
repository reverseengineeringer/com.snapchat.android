.class final enum Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/ADLNativeWrapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MethodName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

.field public static final enum CONNECT:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

.field public static final enum DISCONNECT:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

.field public static final enum GET_VIDEO_CAPTURE_DEVICE:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

.field public static final enum GET_VIDEO_CAPTURE_DEVICE_NAMES:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

.field public static final enum SET_PROPERTY:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

.field public static final enum SET_VIDEO_CAPTURE_DEVICE:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

.field public static final enum STOP_LOCAL_VIDEO:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

.field public static final enum UNKNOWN:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;


# instance fields
.field private apiName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    new-instance v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    const-string v1, "CONNECT"

    const-string v2, "connect"

    invoke-direct {v0, v1, v4, v2}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->CONNECT:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    .line 112
    new-instance v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    const-string v1, "DISCONNECT"

    const-string v2, "disconnect"

    invoke-direct {v0, v1, v5, v2}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->DISCONNECT:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    .line 113
    new-instance v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    const-string v1, "GET_VIDEO_CAPTURE_DEVICE_NAMES"

    const-string v2, "getVideoCaptureDeviceNames"

    invoke-direct {v0, v1, v6, v2}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->GET_VIDEO_CAPTURE_DEVICE_NAMES:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    .line 114
    new-instance v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    const-string v1, "SET_VIDEO_CAPTURE_DEVICE"

    const-string v2, "setVideoCaptureDevice"

    invoke-direct {v0, v1, v7, v2}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->SET_VIDEO_CAPTURE_DEVICE:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    .line 115
    new-instance v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    const-string v1, "GET_VIDEO_CAPTURE_DEVICE"

    const-string v2, "getVideoCaptureDevice"

    invoke-direct {v0, v1, v8, v2}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->GET_VIDEO_CAPTURE_DEVICE:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    .line 116
    new-instance v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    const-string v1, "SET_PROPERTY"

    const/4 v2, 0x5

    const-string v3, "setProperty"

    invoke-direct {v0, v1, v2, v3}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->SET_PROPERTY:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    .line 117
    new-instance v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    const-string v1, "STOP_LOCAL_VIDEO"

    const/4 v2, 0x6

    const-string v3, "stopLocalVideo"

    invoke-direct {v0, v1, v2, v3}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->STOP_LOCAL_VIDEO:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    .line 118
    new-instance v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    const-string v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->UNKNOWN:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    .line 110
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    sget-object v1, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->CONNECT:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->DISCONNECT:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->GET_VIDEO_CAPTURE_DEVICE_NAMES:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->SET_VIDEO_CAPTURE_DEVICE:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->GET_VIDEO_CAPTURE_DEVICE:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->SET_PROPERTY:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->STOP_LOCAL_VIDEO:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->UNKNOWN:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->$VALUES:[Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput-object p3, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->apiName:Ljava/lang/String;

    .line 124
    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;
    .locals 5

    .prologue
    .line 127
    invoke-static {}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->values()[Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 128
    iget-object v4, v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->apiName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    :goto_1
    return-object v0

    .line 127
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_1
    sget-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->UNKNOWN:Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;
    .locals 1

    .prologue
    .line 110
    const-class v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    return-object v0
.end method

.method public static values()[Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->$VALUES:[Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    invoke-virtual {v0}, [Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    return-object v0
.end method
