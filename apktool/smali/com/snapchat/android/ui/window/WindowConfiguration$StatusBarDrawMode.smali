.class public final enum Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/window/WindowConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusBarDrawMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

.field public static final enum DRAW_BACKGROUND_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

.field public static final enum DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

.field public static final enum DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    const-string v1, "DRAW_BEHIND"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    .line 66
    new-instance v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    const-string v1, "DRAW_BACKGROUND_BEHIND"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BACKGROUND_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    .line 71
    new-instance v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    const-string v1, "DRAW_BELOW_FOR_ADJUSTABLE_UI"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    sget-object v1, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BACKGROUND_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->$VALUES:[Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->$VALUES:[Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method
