.class public final enum Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

.field public static final enum DOUBLE_SWIPE:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

.field public static final enum NO_SWIPE_STARTED:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

.field public static final enum SINGLE_SWIPE:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

.field public static final enum SWIPE_STARTED:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    const-string v1, "NO_SWIPE_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->NO_SWIPE_STARTED:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    .line 8
    new-instance v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    const-string v1, "SWIPE_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->SWIPE_STARTED:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    .line 9
    new-instance v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    const-string v1, "SINGLE_SWIPE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->SINGLE_SWIPE:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    .line 10
    new-instance v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    const-string v1, "DOUBLE_SWIPE"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->DOUBLE_SWIPE:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    sget-object v1, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->NO_SWIPE_STARTED:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->SWIPE_STARTED:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->SINGLE_SWIPE:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->DOUBLE_SWIPE:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->$VALUES:[Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->$VALUES:[Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    return-object v0
.end method
