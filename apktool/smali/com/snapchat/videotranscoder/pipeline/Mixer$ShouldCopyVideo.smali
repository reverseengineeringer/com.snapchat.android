.class public final enum Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/pipeline/Mixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShouldCopyVideo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

.field public static final enum NO:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

.field public static final enum YES:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    const-string v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->YES:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    .line 36
    new-instance v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->NO:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    sget-object v1, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->YES:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->NO:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->$VALUES:[Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->$VALUES:[Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    invoke-virtual {v0}, [Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    return-object v0
.end method
