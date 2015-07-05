.class public final enum Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

.field public static final enum EDITION:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

.field public static final enum HOME_PAGE:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    const-string v1, "HOME_PAGE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->HOME_PAGE:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    .line 8
    new-instance v0, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    const-string v1, "EDITION"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->EDITION:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    sget-object v1, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->HOME_PAGE:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->EDITION:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->$VALUES:[Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

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

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->$VALUES:[Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    return-object v0
.end method
