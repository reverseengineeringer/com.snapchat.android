.class public final enum Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoChannelSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

.field public static final enum DISABLED:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

.field public static final enum ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    const-string v1, "ORIGINAL"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;->ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    .line 37
    new-instance v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;->DISABLED:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    sget-object v1, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;->ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;->DISABLED:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;->$VALUES:[Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;->$VALUES:[Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    invoke-virtual {v0}, [Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    return-object v0
.end method
