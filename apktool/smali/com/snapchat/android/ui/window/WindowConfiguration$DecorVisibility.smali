.class public final enum Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/window/WindowConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DecorVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

.field public static final enum HIDE_ALL_OS_DECOR:Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

.field public static final enum HIDE_STATUS_BAR:Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

.field public static final enum SHOW_ALL_OS_DECOR:Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

    const-string v1, "HIDE_ALL_OS_DECOR"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;->HIDE_ALL_OS_DECOR:Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

    .line 48
    new-instance v0, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

    const-string v1, "HIDE_STATUS_BAR"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;->HIDE_STATUS_BAR:Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

    .line 54
    new-instance v0, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

    const-string v1, "SHOW_ALL_OS_DECOR"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;->SHOW_ALL_OS_DECOR:Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

    sget-object v1, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;->HIDE_ALL_OS_DECOR:Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;->HIDE_STATUS_BAR:Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;->SHOW_ALL_OS_DECOR:Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;->$VALUES:[Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;->$VALUES:[Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/window/WindowConfiguration$DecorVisibility;

    return-object v0
.end method
