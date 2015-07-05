.class public final enum Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/video/FragmentShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field public static final enum GREYSCALE:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field public static final enum INSTASNAP:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field public static final enum MISS_ETIKATE:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field public static final enum NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field public static final enum SEPIA:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 19
    new-instance v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    const-string v1, "INSTASNAP"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->INSTASNAP:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 20
    new-instance v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    const-string v1, "GREYSCALE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->GREYSCALE:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 21
    new-instance v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    const-string v1, "SEPIA"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->SEPIA:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 22
    new-instance v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    const-string v1, "MISS_ETIKATE"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->MISS_ETIKATE:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    sget-object v1, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->INSTASNAP:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->GREYSCALE:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->SEPIA:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->MISS_ETIKATE:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->$VALUES:[Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->$VALUES:[Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-virtual {v0}, [Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    return-object v0
.end method
