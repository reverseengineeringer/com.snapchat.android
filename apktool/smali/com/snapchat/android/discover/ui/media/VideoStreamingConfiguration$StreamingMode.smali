.class public final enum Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

.field public static final enum CLIENT_DECIDES:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

.field public static final enum HLS:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

.field public static final enum MP4:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    const-string v1, "HLS"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->HLS:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    .line 17
    new-instance v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    const-string v1, "MP4"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->MP4:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    .line 18
    new-instance v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    const-string v1, "CLIENT_DECIDES"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->CLIENT_DECIDES:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    sget-object v1, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->HLS:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->MP4:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->CLIENT_DECIDES:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->$VALUES:[Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->$VALUES:[Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    return-object v0
.end method
