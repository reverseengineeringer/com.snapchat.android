.class public final enum Lcom/addlive/view/VideoViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/addlive/view/VideoViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/addlive/view/VideoViewType;

.field public static final enum CIRCLE:Lcom/addlive/view/VideoViewType;

.field public static final enum RECTANGLE:Lcom/addlive/view/VideoViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/addlive/view/VideoViewType;

    const-string v1, "RECTANGLE"

    invoke-direct {v0, v1, v2}, Lcom/addlive/view/VideoViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/view/VideoViewType;->RECTANGLE:Lcom/addlive/view/VideoViewType;

    .line 5
    new-instance v0, Lcom/addlive/view/VideoViewType;

    const-string v1, "CIRCLE"

    invoke-direct {v0, v1, v3}, Lcom/addlive/view/VideoViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/view/VideoViewType;->CIRCLE:Lcom/addlive/view/VideoViewType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/addlive/view/VideoViewType;

    sget-object v1, Lcom/addlive/view/VideoViewType;->RECTANGLE:Lcom/addlive/view/VideoViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/addlive/view/VideoViewType;->CIRCLE:Lcom/addlive/view/VideoViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/addlive/view/VideoViewType;->$VALUES:[Lcom/addlive/view/VideoViewType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/addlive/view/VideoViewType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/addlive/view/VideoViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/addlive/view/VideoViewType;

    return-object v0
.end method

.method public static values()[Lcom/addlive/view/VideoViewType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/addlive/view/VideoViewType;->$VALUES:[Lcom/addlive/view/VideoViewType;

    invoke-virtual {v0}, [Lcom/addlive/view/VideoViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/addlive/view/VideoViewType;

    return-object v0
.end method
