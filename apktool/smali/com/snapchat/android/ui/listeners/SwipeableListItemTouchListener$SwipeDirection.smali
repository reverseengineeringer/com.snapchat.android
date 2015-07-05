.class public final enum Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

.field public static final enum LEFT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

.field public static final enum RIGHT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    new-instance v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    sget-object v1, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->$VALUES:[Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

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
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;
    .locals 1

    .prologue
    .line 137
    const-class v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->$VALUES:[Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    return-object v0
.end method
