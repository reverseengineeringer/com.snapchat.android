.class public final enum Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaCaptureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

.field public static final enum PHOTO:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

.field public static final enum UNKNOWN:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

.field public static final enum VIDEO:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->UNKNOWN:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    .line 13
    new-instance v0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->PHOTO:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    .line 14
    new-instance v0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->VIDEO:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    sget-object v1, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->UNKNOWN:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->PHOTO:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->VIDEO:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->$VALUES:[Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->$VALUES:[Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    invoke-virtual {v0}, [Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    return-object v0
.end method
