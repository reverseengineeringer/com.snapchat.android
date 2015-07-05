.class public final enum Lcom/snapchat/android/camera/VideoEvent$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/VideoEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/camera/VideoEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/camera/VideoEvent$Type;

.field public static final enum MAX_DURATION_REACHED:Lcom/snapchat/android/camera/VideoEvent$Type;

.field public static final enum MAX_FILE_SIZE_REACHED:Lcom/snapchat/android/camera/VideoEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/snapchat/android/camera/VideoEvent$Type;

    const-string v1, "MAX_FILE_SIZE_REACHED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/VideoEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/VideoEvent$Type;->MAX_FILE_SIZE_REACHED:Lcom/snapchat/android/camera/VideoEvent$Type;

    .line 18
    new-instance v0, Lcom/snapchat/android/camera/VideoEvent$Type;

    const-string v1, "MAX_DURATION_REACHED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/camera/VideoEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/VideoEvent$Type;->MAX_DURATION_REACHED:Lcom/snapchat/android/camera/VideoEvent$Type;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/camera/VideoEvent$Type;

    sget-object v1, Lcom/snapchat/android/camera/VideoEvent$Type;->MAX_FILE_SIZE_REACHED:Lcom/snapchat/android/camera/VideoEvent$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/camera/VideoEvent$Type;->MAX_DURATION_REACHED:Lcom/snapchat/android/camera/VideoEvent$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/camera/VideoEvent$Type;->$VALUES:[Lcom/snapchat/android/camera/VideoEvent$Type;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/camera/VideoEvent$Type;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/snapchat/android/camera/VideoEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/VideoEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/camera/VideoEvent$Type;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/snapchat/android/camera/VideoEvent$Type;->$VALUES:[Lcom/snapchat/android/camera/VideoEvent$Type;

    invoke-virtual {v0}, [Lcom/snapchat/android/camera/VideoEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/camera/VideoEvent$Type;

    return-object v0
.end method
