.class final enum Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

.field public static final enum b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

.field public static final enum c:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

.field private static final synthetic e:[Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v2}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    .line 123
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v3, v3}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    .line 124
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    const-string v1, "NO_DATA_RECEIVED"

    invoke-direct {v0, v1, v4, v4}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->c:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->c:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->e:[Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput p3, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->d:I

    .line 129
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;
    .locals 1

    .prologue
    .line 121
    const-class v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->e:[Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    invoke-virtual {v0}, [Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    return-object v0
.end method
