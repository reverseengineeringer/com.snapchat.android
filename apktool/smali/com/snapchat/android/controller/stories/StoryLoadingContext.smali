.class public final enum Lcom/snapchat/android/controller/stories/StoryLoadingContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/controller/stories/StoryLoadingContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/controller/stories/StoryLoadingContext;

.field public static final enum ALREADY_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

.field public static final enum AUTO_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

.field public static final enum LOAD_FROM_VIEWING:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

.field public static final enum TAP_TO_LOAD:Lcom/snapchat/android/controller/stories/StoryLoadingContext;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    const-string v1, "AUTO_LOADED"

    const-string v2, "AUTOLOADED"

    invoke-direct {v0, v1, v3, v2}, Lcom/snapchat/android/controller/stories/StoryLoadingContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->AUTO_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    .line 14
    new-instance v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    const-string v1, "TAP_TO_LOAD"

    const-string v2, "TAP_TO_LOAD"

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/controller/stories/StoryLoadingContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->TAP_TO_LOAD:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    .line 18
    new-instance v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    const-string v1, "LOAD_FROM_VIEWING"

    const-string v2, "LOAD_FROM_VIEWING"

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/controller/stories/StoryLoadingContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->LOAD_FROM_VIEWING:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    .line 22
    new-instance v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    const-string v1, "ALREADY_LOADED"

    const-string v2, "ALREADY_LOADED"

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/controller/stories/StoryLoadingContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->ALREADY_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    sget-object v1, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->AUTO_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->TAP_TO_LOAD:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->LOAD_FROM_VIEWING:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->ALREADY_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->$VALUES:[Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/controller/stories/StoryLoadingContext;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/controller/stories/StoryLoadingContext;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->$VALUES:[Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual {v0}, [Lcom/snapchat/android/controller/stories/StoryLoadingContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    return-object v0
.end method


# virtual methods
.method public final getMetricName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->a:Ljava/lang/String;

    return-object v0
.end method
