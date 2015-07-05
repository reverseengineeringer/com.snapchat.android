.class public final enum Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioChannelSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

.field public static final enum DISABLED:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

.field public static final enum ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

.field public static final enum SILENCE:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    const-string v1, "ORIGINAL"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    .line 45
    new-instance v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    const-string v1, "SILENCE"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->SILENCE:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    .line 46
    new-instance v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->DISABLED:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    sget-object v1, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->SILENCE:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->DISABLED:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->$VALUES:[Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->$VALUES:[Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    invoke-virtual {v0}, [Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    return-object v0
.end method
