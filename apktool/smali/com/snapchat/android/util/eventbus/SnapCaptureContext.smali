.class public final enum Lcom/snapchat/android/util/eventbus/SnapCaptureContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/eventbus/SnapCaptureContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

.field public static final enum CAMERA:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

.field public static final enum DISCOVER:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

.field public static final enum PHONE_GALLERY:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->CAMERA:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    .line 8
    new-instance v0, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    const-string v1, "DISCOVER"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->DISCOVER:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    .line 9
    new-instance v0, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    const-string v1, "PHONE_GALLERY"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->PHONE_GALLERY:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->CAMERA:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->DISCOVER:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->PHONE_GALLERY:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->$VALUES:[Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/eventbus/SnapCaptureContext;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/eventbus/SnapCaptureContext;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->$VALUES:[Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    return-object v0
.end method
