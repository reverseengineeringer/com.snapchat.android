.class public final enum Lcom/snapchat/android/discover/model/database/table/EditionStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/database/table/EditionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/model/database/table/EditionStatus;

.field public static final enum ACTIVE:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

.field public static final enum ARCHIVED:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

.field public static final enum INACTIVE:Lcom/snapchat/android/discover/model/database/table/EditionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ACTIVE:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    .line 7
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->INACTIVE:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    .line 9
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    const-string v1, "ARCHIVED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/discover/model/database/table/EditionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ACTIVE:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->INACTIVE:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->$VALUES:[Lcom/snapchat/android/discover/model/database/table/EditionStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/database/table/EditionStatus;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/database/table/EditionStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionStatus;->$VALUES:[Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/database/table/EditionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/database/table/EditionStatus;

    return-object v0
.end method
