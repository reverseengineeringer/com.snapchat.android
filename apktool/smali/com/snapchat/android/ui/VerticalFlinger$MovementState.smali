.class public final enum Lcom/snapchat/android/ui/VerticalFlinger$MovementState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/VerticalFlinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MovementState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/VerticalFlinger$MovementState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

.field public static final enum CENTER:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

.field public static final enum DEACTIVATED:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

.field public static final enum DRAG:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

.field public static final enum FLING:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

.field public static final enum GONE:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

.field public static final enum RETURN:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->CENTER:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    .line 55
    new-instance v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    const-string v1, "DRAG"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DRAG:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    .line 56
    new-instance v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    const-string v1, "FLING"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->FLING:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    .line 57
    new-instance v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    const-string v1, "GONE"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->GONE:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    .line 58
    new-instance v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    const-string v1, "RETURN"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->RETURN:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    .line 59
    new-instance v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    const-string v1, "DEACTIVATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DEACTIVATED:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    sget-object v1, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->CENTER:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DRAG:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->FLING:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->GONE:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->RETURN:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DEACTIVATED:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->$VALUES:[Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/VerticalFlinger$MovementState;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/VerticalFlinger$MovementState;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->$VALUES:[Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    return-object v0
.end method
