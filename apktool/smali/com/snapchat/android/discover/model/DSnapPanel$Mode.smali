.class public final enum Lcom/snapchat/android/discover/model/DSnapPanel$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DSnapPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/DSnapPanel$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

.field public static final enum LOOPING:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

.field public static final enum ONCE:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    const-string v1, "LOOPING"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->LOOPING:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    const-string v1, "ONCE"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->ONCE:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->LOOPING:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->ONCE:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->$VALUES:[Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Mode;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    return-object v0
.end method

.method public static valueOfIgnoreCase(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Mode;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 61
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/DSnapPanel$Mode;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->$VALUES:[Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    return-object v0
.end method
