.class public final enum Lcom/snapchat/android/util/TitleBarManager$Visibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/TitleBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/TitleBarManager$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/TitleBarManager$Visibility;

.field public static final enum HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

.field public static final enum VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/TitleBarManager$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 30
    new-instance v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/TitleBarManager$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/util/TitleBarManager$Visibility;

    sget-object v1, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->$VALUES:[Lcom/snapchat/android/util/TitleBarManager$Visibility;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/TitleBarManager$Visibility;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/TitleBarManager$Visibility;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->$VALUES:[Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/TitleBarManager$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/TitleBarManager$Visibility;

    return-object v0
.end method
