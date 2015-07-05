.class public final enum Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/media/VideoProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Protocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

.field public static final enum HLS:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

.field public static final enum MP4:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    const-string v1, "MP4"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->MP4:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    .line 21
    new-instance v0, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    const-string v1, "HLS"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->HLS:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    sget-object v1, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->MP4:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->HLS:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->$VALUES:[Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->$VALUES:[Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    return-object v0
.end method
